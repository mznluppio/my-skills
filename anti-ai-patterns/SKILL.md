---
name: anti-ai-patterns
description: >-
  Détecte et élimine les tics d'écriture typiques des LLM (ChatGPT, Claude, Gemini) : survalorisation artificielle du sujet, analyses superficielles, attributions vagues, parallélismes négatifs, règle de trois, vocabulaire IA suremployé (delve/crucial ; "façonner" en français), résidus de conversation chatbot, citations bibliographiques hallucinées (DOI, pages fabriquées), sections "Défis" formulaïques, surusage de gras/tirets/guillemets courbes. À utiliser en relecture finale de tout texte académique ou professionnel (mémoire, thèse, article, rapport), surtout si rédigé avec l'aide d'un LLM. Basé sur Wikipedia:Signs of AI writing. Complémentaire à fr-style/fr-typographie : cible les patterns statistiques IA, en français ou en anglais.
---

# Anti-AI-Patterns

Ce skill sert à relire un texte et à repérer les patterns statistiques typiques des LLM — pas des fautes de français, pas des anglicismes, mais des tics de génération qui trahissent (ou font *ressembler à*) un texte produit par une IA plutôt qu'écrit directement par un humain.

**Principe de fond (à ne jamais perdre de vue) :** ces signes sont descriptifs, pas des fautes en soi. Un LLM régresse vers la moyenne statistique — il remplace les faits précis, inhabituels, spécifiques par des formulations génériques et positives. Le symptôme le plus général est donc : **le texte devient plus vague, plus ronflant, et moins spécifique.** Chaque pattern ci-dessous est une manifestation concrète de ce phénomène. Corriger un pattern sans réintroduire de spécificité factuelle ne fait que déplacer le problème.

**Comment utiliser ce skill** : lire le texte fourni, repérer les occurrences des patterns ci-dessous, et pour chacune proposer une réécriture qui (a) supprime le tic, (b) réinjecte un fait concret si la phrase était creuse, (c) ne rallonge pas le texte. Ne pas se contenter de signaler — toujours proposer la reformulation. Si le texte est long, traiter section par section plutôt que de noyer l'utilisateur sous une liste unique.

---

## 1. Patterns de contenu (le plus important — le fond avant la forme)

### 1.1 Survalorisation artificielle de l'importance / du "legacy"
Le texte rattache un fait mineur ou neutre à une portée historique, culturelle ou symbolique disproportionnée.

**Mots-signaux (FR)** : joue un rôle clé/crucial/central, marque un tournant, témoigne de, incarne, s'inscrit dans une dynamique plus large, façonne, laisse une empreinte durable, perpétue l'héritage de, symbolise, occupe une place particulière dans.
**Mots-signaux (EN)** : marks a pivotal moment, stands as a testament to, underscores its significance, reflects broader, contributes to the, represents a shift, enduring legacy.

**Fix** : soit supprimer la phrase (elle n'apporte souvent aucune information vérifiable), soit la remplacer par le fait concret réellement sourcé.

> ❌ « La création de l'Agent Factory marque un tournant dans la manière dont Legrand aborde l'intelligence artificielle. »
> ✅ « L'Agent Factory a été lancé en [date] pour industrialiser trois cas d'usage internes : [X], [Y], [Z]. »

### 1.2 Insistance excessive sur la notoriété / la couverture médiatique
Empiler des sources ou des labels ("acteur reconnu", "couverture nationale") au lieu de donner un fait.

### 1.3 Analyse superficielle collée en fin de phrase (participe présent)
Un fait neutre suivi d'un gérondif qui prétend en tirer une signification.

**FR** : « ..., renforçant ainsi sa position », « ..., mettant en lumière son importance », « ..., contribuant à son rayonnement ».
**EN** : « ..., highlighting its importance », « ..., underscoring the significance of ».

**Fix** : couper la subordonnée. Le fait doit parler de lui-même ; si l'interprétation est nécessaire, l'attribuer nommément à une source précise, pas la laisser flotter.

### 1.4 Attributions vagues ("weasel wording")
**Mots-signaux (FR)** : certains observateurs estiment, plusieurs experts s'accordent à dire, il est largement reconnu que, de nombreuses sources indiquent (quand une seule est citée).
**Mots-signaux (EN)** : some critics argue, industry reports suggest, observers have noted.

**Fix** : nommer la source précise, ou supprimer l'affirmation si elle n'est pas attribuable.

### 1.5 Sections "Défis et perspectives" formulaïques
Un texte long en LLM se termine souvent par : "Malgré [éloges], [sujet] fait face à plusieurs défis, notamment [liste]. Néanmoins, [sujet] continue de [avenir positif vague]." C'est la structure rigide qui pose problème, pas le fait de parler de défis.

**Fix** : si une section "limites" ou "perspectives" est nécessaire (fréquent en mémoire académique), la construire à partir d'arguments spécifiques et sourcés, jamais depuis ce squelette générique optimiste-négatif-optimiste.

### 1.6 Language promotionnel / ton "brochure"
**Mots-signaux (FR)** : riche, vibrant, incontournable, au cœur de, niché dans, une véritable référence, un savoir-faire reconnu, une approche innovante.
**Mots-signaux (EN)** : vibrant, boasts, nestled, in the heart of, groundbreaking, renowned, showcasing.

Particulièrement à surveiller dans un rapport de mission (Partie 1 du mémoire de Julien) où la tentation de "vendre" Legrand ou l'Agent Factory est réelle — un jury y verra du remplissage promotionnel, pas de l'analyse.

### 1.7 Disclaimers de type "il est important de noter que..."
**FR** : il convient de noter, il est essentiel de rappeler, il ne faut pas oublier que.
**EN** : it's important to note, it is worth noting.

Rarement porteur d'information — presque toujours supprimable sans perte.

---

## 1.8 Résidus de conversation avec un chatbot (à traquer en priorité si le texte a transité par un LLM)
Phrases qui n'ont de sens que dans un dialogue humain-machine et qui survivent par inadvertance dans un copier-coller : « J'espère que cela vous aide », « Voici une version révisée qui... », « N'hésitez pas à me dire si... », ainsi que les placeholders jamais remplis (« [Insérer référence ici] », « [Nom de l'entreprise] », des crochets orphelins). C'est le signal le plus embarrassant s'il est trouvé, car il ne laisse aucun doute sur l'origine du texte — à vérifier systématiquement avant tout envoi ou dépôt.

## 1.9 Disclaimers spéculatifs sur des lacunes de sources
**FR** : les informations disponibles ne permettent pas de confirmer, il n'existe pas de données publiques récentes sur, en l'absence d'éléments précis, on peut supposer que.
**EN** : while specific details are limited, not widely documented, based on available information.

Un LLM comble souvent un trou de recherche par une esquive plausible plutôt que d'admettre franchement l'absence de source, et enchaîne parfois avec une spéculation présentée comme un fait probable. **Fix** : soit trouver la source, soit écrire explicitement « cette information n'a pas été trouvée » sans rien spéculer derrière.

## 1.10 Hallucination de citations et de références (priorité haute pour tout travail académique)
Un LLM peut générer une référence bibliographique plausible — auteur crédible, titre plausible, année cohérente — qui ne correspond à rien de réel, ou qui existe mais ne dit pas ce qu'on lui fait dire. Signes à vérifier systématiquement :
- Le DOI résout-il vers l'article cité, ou vers un article complètement différent ?
- La citation de livre a-t-elle un numéro de page ? Sans page, impossible de vérifier — c'est déjà suspect.
- Si un numéro de page existe, la page citée dit-elle vraiment ce que le texte lui attribue ? (chercher le terme clé dans une version en ligne du livre/article)
- La source existe-t-elle sous ce titre exact, dans cette revue, à cette date ?

**Pour ton mémoire** : chaque citation directe (les ≥10 exigées) doit être vérifiée contre le texte source réel, pas seulement contre sa vraisemblance. Une citation plausible mais fabriquée est une invalidation immédiate en soutenance, pas juste un problème de style — traiter ce point à part de la relecture stylistique, en amont.

## 1.11 Titres qui définissent leur sujet comme si c'était un mot de dictionnaire
Une phrase d'ouverture qui traite le sujet comme un terme à définir plutôt qu'une entité réelle : « L'Agent Factory désigne un cadre méthodologique visant à... » là où un texte humain écrirait directement « L'Agent Factory est un cadre... ». Signal faible isolément, mais net s'il revient à chaque introduction de section.

## 2. Patterns de langue et de syntaxe

### 2.1 Vocabulaire IA suremployé
En anglais, ces mots sont des signaux quasi certains s'ils apparaissent en grappe : *delve, crucial, boasts, underscore, tapestry, testament, pivotal, intricate, meticulous, showcase, vibrant, enduring, fostering, align with, landscape (au sens abstrait), garner, robust, valuable, key (adjectif).*

En français, les équivalents fonctionnels à surveiller : *façonner, témoin/témoigner de, richesse (au sens figuré), paysage (au sens abstrait, ex. "paysage numérique"), essor, dynamique, enjeu majeur, levier, au service de, s'appuyer sur, à travers (au sens figuré, sur-employé), au cœur de.*

Un ou deux de ces mots isolés ne prouvent rien. Une accumulation dans un même paragraphe est le signal fort.

### 2.2 Évitement des constructions simples avec "être/avoir"
Les LLM remplacent systématiquement "est" par "sert de", "constitue", "représente" ; "a" par "dispose de", "offre", "compte".

> ❌ « Le n8n workflow constitue l'élément central de l'automatisation. »
> ✅ « Le n8n workflow est l'élément central de l'automatisation. »

Ne pas avoir peur du verbe être — c'est un signal de sobriété, pas de pauvreté stylistique.

### 2.3 Parallélismes négatifs
**FR** : « Ce n'est pas seulement X, c'est aussi Y », « il ne s'agit pas de X mais de Y », « pas de X, pas de Y, juste Z ».
**EN** : "Not only X but Y", "It's not just X, it's Y".

Ce tic est légitime en écriture humaine à dose homéopathique (pour lever un malentendu réel) mais devient un tell dès qu'il est répété plus d'une fois dans un même document.

### 2.4 Règle de trois systématique
Toute liste, tout raisonnement qui tombe systématiquement sur trois éléments parallèles (trois adjectifs, trois exemples, trois clauses) — signe d'un pattern statistique plutôt que d'un choix éditorial. Vérifier : est-ce qu'il y a vraiment trois choses, ou est-ce que la structure a été forcée à trois ?

### 2.5 Variation lexicale excessive ("elegant variation")
Éviter à tout prix de répéter un mot en le remplaçant par un synonyme approximatif à chaque occurrence (ex. appeler tour à tour "le dispositif", "la solution", "l'outil", "le système" pour désigner la même chose dans un même paragraphe). En français académique, contrairement à l'anglais, répéter le terme exact est souvent préférable à la clarté — le lecteur doit être certain qu'il s'agit du même objet.

---

## 3. Patterns de mise en forme (surtout visibles en Markdown copié-collé, moins pertinents une fois converti en .docx, mais à vérifier avant conversion)

- **Titre en Title Case systématique** (chaque mot avec majuscule) — en français, seul le premier mot d'un titre prend la majuscule (voir skill `fr-typographie`).
- **Gras utilisé de façon mécanique** sur des mots-clés répétés, façon "points clés à retenir".
- **Listes à puce avec un mot en gras suivi de deux-points**, généralisées à outrance (« **Objectif :** ... », « **Méthode :** ... », « **Résultat :** ... » répété pour chaque item).
- **Tirets cadratins (—) entourés d'espaces**, utilisés à la place de virgules, parenthèses ou deux-points pour "punchliner" une phrase. Le français utilise le tiret demi-cadratin sans espace autour dans ce rôle (cf. `fr-typographie`).
- **Guillemets courbes (" " ' ')** au lieu des guillemets français ou droits — surtout trahissant si mélangés dans le même document.
- **Conclusions de type "En résumé..." / "En conclusion..."** en fin de section, qui reformulent ce qui vient d'être dit sans ajouter d'information. Un texte académique sérieux n'a pas besoin de se résumer lui-même à chaque sous-partie.
- **Tableaux inutiles** pour deux ou trois données qui tiendraient en une phrase — signe que le texte a été généré en mode "présentation" plutôt que rédigé.

---

## 4. Ce qui n'est PAS un signe fiable (pour éviter le faux positif)

Ne jamais signaler ces éléments seuls comme "ça sonne IA" :
- Grammaire parfaite (beaucoup d'humains écrivent bien).
- Ton "académique" ou "soutenu" en tant que tel — seuls des mots précis comptent, pas le registre général.
- Absence de sources (l'immense majorité du contenu humain non sourcé n'est pas de l'IA).
- Utilisation de connecteurs logiques classiques ("de plus", "par ailleurs") isolément — seule leur accumulation excessive compte.
- Un texte "sans relief" ou "plat" — la platitude seule ne suffit pas, il faut les patterns concrets ci-dessus.

---

## 5. Workflow de relecture recommandé (mémoire, rapport, article)

1. **Passe 0 — résidus et références (si le texte a transité par un LLM)** : chercher les résidus de conversation (1.8), les disclaimers spéculatifs (1.9), et surtout vérifier chaque référence bibliographique citée (1.10). Cette passe prime sur les autres : une citation fabriquée est une invalidation, pas un problème de style.
2. **Passe 1 — contenu** : chercher les sections 1.1 à 1.7 et 1.11. Ce sont les plus graves après les citations car elles trahissent une absence de pensée propre, pas juste un style à corriger.
3. **Passe 2 — langue** : chercher les patterns de la section 2, en particulier le vocabulaire suremployé (2.1) et les parallélismes négatifs (2.3).
4. **Passe 3 — forme** : vérifier la mise en forme (section 3), surtout si le texte est passé par un export Markdown à un moment donné.
5. Pour chaque occurrence trouvée, donner : la citation exacte, le pattern identifié, et une reformulation concrète — jamais juste "à reformuler".
6. Signaler si un même pattern revient plus de 2-3 fois dans le document : c'est le signal le plus fiable de tous (un pattern isolé ne prouve rien, la récurrence si).

## Complémentarité avec les autres skills
- `fr-style` : anglicismes et calques syntaxiques — chevauchement partiel avec la section 2.1, mais ce skill-ci cible spécifiquement les tics *statistiques* de génération IA, pas les anglicismes "naturels".
- `fr-typographie` : règles typographiques françaises strictes (espaces insécables, guillemets, tirets) — à utiliser en complément de la section 3.
- `fr-redaction-academique` : structure et méthodologie du mémoire — ce skill-ci n'intervient qu'en relecture stylistique, pas sur le fond argumentatif.

## Fichiers de référence
- `references/mots-a-surveiller.md` : liste exhaustive bilingue des mots-signaux par catégorie et par génération de modèle (GPT-4/GPT-4o/GPT-5, idiosyncrasies Grok/Claude/Gemini/DeepSeek). À consulter pour une relecture fine mot par mot.
- `references/exemples.md` : dix paires avant/après illustrant chaque pattern majeur avec des reformulations concrètes. À consulter comme gabarit de reformulation.

## Source
Basé sur Wikipedia:Signs of AI writing (WikiProject AI Cleanup, wikipedia anglophone), adapté et traduit pour un usage francophone académique/professionnel. La page originale est spécifique à la détection sur Wikipedia ; ce skill n'en retient que les patterns transposables à de l'écriture académique et professionnelle générale, en écartant les signaux propres au wikitexte, aux hallucinations de citations et à la modération communautaire.
