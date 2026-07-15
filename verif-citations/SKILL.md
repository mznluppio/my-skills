---
name: verif-citations
description: >-
  Vérifie la véracité factuelle de toutes les citations, références, sources, DOI, pages et chiffres d'un texte académique ou professionnel. Détecte les citations hallucinées, DOI inventés, pages fabriquées, auteurs mal attribués, « citations directes » qui ne sont pas verbatim, chiffres non sourcés et contextes déformés — les seuls marqueurs d'origine IA qui ne relèvent ni du style ni de la logique. À utiliser sur tout mémoire, thèse, article ou rapport avant dépôt ou soutenance, surtout s'il a été rédigé avec l'aide d'un LLM, et systématiquement dès qu'un texte contient des références bibliographiques, des citations entre guillemets, des DOI ou des statistiques attribuées. Couche d'invalidation dure : une seule citation fausse peut faire recaler le travail. Complémentaire à anti-ai-patterns (qui cible le style) — celui-ci cible la vérifiabilité.
---

# Verif-Citations

Ce skill sert à auditer la **véracité vérifiable** d'un texte : chaque source existe-t-elle réellement, dit-elle vraiment ce qu'on lui fait dire, et les métadonnées (auteur, année, page, DOI, revue) sont-elles exactes ?

**Principe de fond.** Le raisonnement et le style ne portent pas de signature d'auteur fiable — une IA peut raisonner juste et écrire proprement. La seule couche où l'origine IA laisse une trace *objective* est la fausseté vérifiable : les LLM fabriquent des références plausibles (bon auteur, bonne revue, mauvais article ; DOI bien formé qui ne résout pas ; citation fluide jamais écrite par personne). **Mais l'origine importe peu.** Une citation fausse coule un mémoire qu'elle vienne d'un humain distrait ou d'un modèle. Ce skill ne cherche pas à prouver « c'est de l'IA » — il protège contre la *conséquence*, quel que soit l'auteur.

**Ce que ce skill ne fait PAS tout seul.** Il n'invente pas la vérité. Il *orchestre* une vérification :
- **Avec accès web** (session Claude avec `web_search`/`web_fetch`) : vérifier réellement chaque item — résolution DOI via `https://doi.org/<doi>`, recherche titre+auteur, Google Scholar, et Google Books / l'éditeur pour contrôler le **verbatim** d'une citation directe.
- **Sans réseau** : produire l'inventaire complet + le triage par risque + une checklist manuelle exécutable, item par item. Ne jamais faire semblant d'avoir vérifié une source non consultée.

Ne jamais valider une citation « au feeling » parce qu'elle sonne juste. Le fait qu'une référence soit plausible est précisément le mode de défaillance d'un LLM.

---

## Phase 0 — Extraction (inventaire exhaustif)

Parcourir le texte et extraire **tout** ce qui prétend s'appuyer sur une source extérieure. Ne rien laisser passer : ce qui n'est pas dans l'inventaire ne sera pas vérifié.

Construire un tableau, un item par ligne :

| ID | Type | Texte attribué | Source revendiquée | Locateur |
|----|------|----------------|--------------------|----------|
| C1 | citation directe | « … » (verbatim revendiqué) | Nom (année) | p. XX, DOI, revue |
| C2 | paraphrase attribuée | idée reformulée | Nom (année) | — |
| C3 | chiffre / statistique | « 73 % des… » | Nom / organisme | rapport, année |
| C4 | référence biblio | (entrée seule, sans appel dans le corps) | — | DOI, éditeur, pages |

Quatre types à distinguer, car ils ne se vérifient pas pareil :
- **citation directe** (entre guillemets) → le risque est le *verbatim* ET l'existence ;
- **paraphrase attribuée** (« selon X… ») → le risque est que la source ne dise pas ça ;
- **chiffre / donnée** → le risque est le chiffre inventé ou détaché de sa source ;
- **entrée bibliographique** → le risque est l'entrée fantôme (jamais appelée dans le corps, ou inversement appel sans entrée).

Signaler aussi les **appels orphelins** (une citation dans le corps sans entrée dans la biblio) et les **entrées orphelines** (une entrée jamais citée) — deux signaux classiques de biblio gonflée après coup.

---

## Phase 1 — Triage par risque

Ne pas vérifier dans l'ordre du texte : commencer par le plus fabriquable. Classer chaque item.

**Risque élevé (vérifier en premier) :**
- citation directe entre guillemets avec page précise ;
- DOI, numéro de volume/fascicule, plage de pages exacte ;
- chiffre précis (« 42 % », « multiplié par 3,7 ») attribué à une source ;
- citation *trop commode* — celle qui tombe pile pour ton argument, formulée exactement comme il te fallait. C'est le profil type de l'hallucination : le modèle a produit la phrase dont tu avais besoin et l'a signée d'un nom réel.

**Risque moyen :**
- « selon [auteur, année] » sur une affirmation spécifique non triviale ;
- attribution d'un concept à un auteur (risque de mauvaise paternité).

**Risque faible :**
- renvoi général à un ouvrage connu sans citation ni chiffre ;
- fait de manuel non attribué à une source précise.

---

## Phase 2 — Vérification (par item)

Pour chaque item, dérouler les cinq contrôles dans l'ordre. S'arrêter au premier qui échoue et noter le verdict.

1. **Existence.** La source existe-t-elle ? Chercher titre + auteur ; résoudre le DOI. Un DOI bien formé qui ne pointe nulle part = fabriqué.
2. **Métadonnées.** Auteur, année, revue/éditeur, volume, pages : concordent-ils avec la source réelle ? Fréquent : bon auteur + bon sujet, mais article ou année inventés.
3. **Contenu.** La source contient-elle réellement l'affirmation qu'on lui prête ? C'est le contrôle profond — pas « existe-t-elle » mais « dit-elle ça ».
4. **Verbatim** (citations directes uniquement). Le texte entre guillemets apparaît-il *mot pour mot* dans la source ? Une paraphrase habillée en citation directe est une faute, même si l'idée est juste.
5. **Contexte.** La citation respecte-t-elle le sens de l'original, ou est-elle coupée / retournée / sortie de son cadre ?

**Verdict par item :**
- ✅ **vérifiée** — les cinq contrôles pertinents passent.
- ⚠️ **à corriger** — la source existe mais un élément cloche (page fausse, année erronée, « citation » en fait paraphrasée, métadonnée inexacte). Indiquer la correction exacte.
- ❌ **introuvable / probablement hallucinée** — aucune trace de la source ou de la citation après recherche sérieuse. À supprimer ou remplacer, pas à « ajuster ».
- 🔎 **non vérifiable ici** — nécessite un accès (paywall, ouvrage papier) non disponible en session. À basculer dans la checklist manuelle, jamais compté comme vérifié.

---

## Phase 3 — Rapport

Toujours produire dans cet ordre :

1. **Décompte contre le critère dur** (adapter au seuil du travail ; pour un mémoire I3M/3iL, Partie 2 : ≥ 10 citations directes réelles issues de ≥ 10 sources distinctes) :
   > Citations directes vérifiées : X / 10 requises · Sources distinctes confirmées : Y / 10 · ❌ à remplacer : Z · ⚠️ à corriger : W · 🔎 à vérifier à la main : V
2. **Tableau des ❌ et ⚠️ d'abord** — ce sont les urgences. Pour chaque : l'item, le problème précis, la correction ou le remplacement recommandé.
3. **Checklist manuelle** des 🔎, avec pour chacun l'endroit exact où aller vérifier (revue, cote, page).
4. **Liste des ✅** en fin, condensée.

Ne pas noyer sous les ✅ : l'utilisateur veut d'abord ce qui casse.

---

## Pièges spécifiques à la rédaction académique française

- **Charte anti-plagiat 3iL** : une citation *réelle mais mal attribuée* est aussi grave qu'une fausse. Le contrôle 2 (métadonnées) et le contrôle 4 (verbatim) ne sont pas optionnels.
- **Blanchiment par source secondaire** — les chaînes « X, cité par Y ». Vérifier que Y cite réellement X, et idéalement remonter à X. Un LLM fabrique volontiers le maillon intermédiaire.
- **Paraphrase déguisée en citation directe** — des guillemets autour d'une phrase que personne n'a écrite telle quelle. Fréquent quand le texte a été « rédigé » par IA à partir d'un souvenir de la source. Contrôle 4 impératif.
- **Citation sandwich** — une phrase inventée mais crédible, encadrée d'un auteur réel et d'une année plausible. Le tout « sonne » académique et passe la relecture stylistique sans problème : c'est exactement ce que `anti-ai-patterns` ne voit pas.
- **Biblio gonflée** — entrées ajoutées pour atteindre un quota, jamais appelées dans le corps (ou l'inverse). Repérées en Phase 0 via appels/entrées orphelins.

---

## Rappel de positionnement

Trois couches d'audit, complémentaires et non redondantes :
1. **Style** → `anti-ai-patterns` (« ça se lit comme de l'IA ? »).
2. **Véracité** → *ce skill* (« ces sources existent-elles et disent-elles ça ? ») — la couche qui invalide.
3. **Solidité logique** → audit de raisonnement (« mes conclusions découlent-elles de mes arguments ? ») — mesure la qualité, jamais l'origine.

Passer un texte ici ne dispense pas des deux autres, et inversement. Mais c'est celui-ci qui protège le dépôt.
