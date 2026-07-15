---
name: fr-redaction-academique
description: Pilote la rédaction de tout travail académique en français — mémoire de master, thèse de doctorat, article scientifique, dissertation, rapport de stage, revue de littérature. À utiliser dès que l'utilisateur travaille sur un document académique francophone, qu'il s'agisse de structurer un plan, rédiger un chapitre, formuler une problématique, intégrer des citations, formater une bibliographie, ou réviser un texte avant soutenance ou soumission. Contient des références spécialisées par genre (mémoire, thèse, article), par méthodologie (qualitative, quantitative, mixte), et par norme de citation (APA française, ISO 690, Chicago, Vancouver). Use this skill for any French-language academic writing task across humanities, social sciences, sciences, engineering, or business.
---

# Rédaction académique en français

Ce skill orchestre tous les aspects de la rédaction d'un travail universitaire en français : architecture du document, formulation de la problématique, articulation argumentative, intégration des sources, normes formelles, préparation à la soutenance ou à la soumission.

Il s'utilise toujours en combinaison avec `fr-typographie` (couche typographique stricte) et `fr-style` (anti-anglicismes et tournures soignées). Ces trois skills forment un système cohérent.

## Quand consulter quelle référence

Selon le genre du document, charger la référence appropriée dans `references/` :

- **Mémoire de master, master recherche, mastère, mémoire de fin d'études** → `references/memoire.md`
- **Thèse de doctorat, HDR** → `references/these.md`
- **Article de revue scientifique** → `references/article-scientifique.md`
- **Normes de citation et bibliographie** (toutes situations) → `references/bibliographie.md`
- **Méthodologie de recherche** (qualitative, quantitative, mixte) → `references/methodologie.md`

Pour un travail court (dissertation, rapport, fiche de lecture), s'appuyer sur les principes généraux ci-dessous sans charger les références longues.

## Principes communs à tout travail académique français

### 1. Problématique et thèse

Un travail académique français est structuré autour d'une **problématique**, c'est-à-dire une question de recherche qui ne se résout pas par un simple oui ou non, qui ouvre un espace d'exploration et qui justifie l'ensemble du travail.

La problématique se distingue :
- du **sujet** (`l'intelligence artificielle dans la santé`), qui est un thème ;
- de la **question de départ** (`comment l'IA transforme-t-elle la santé ?`), qui est trop large ;
- de la **problématique** (`dans quelle mesure l'introduction d'algorithmes d'aide à la décision médicale modifie-t-elle la responsabilité du praticien ?`), qui est ciblée, opérationnalisable et débattable.

La problématique doit apparaître explicitement dans l'introduction, généralement précédée de la formule `Notre problématique sera donc la suivante :` ou intégrée plus subtilement selon la discipline.

### 2. Plan dialectique vs plan analytique

Deux familles de plan dominent en France :

**Plan dialectique** (sciences humaines, philosophie, droit, lettres) : thèse → antithèse → synthèse. Trois grandes parties. La synthèse n'est pas un compromis mou mais un dépassement qui intègre la tension entre les deux premières parties.

**Plan analytique ou thématique** (sciences, gestion, économie quantitative) : revue de littérature → méthodologie → résultats → discussion. C'est le modèle IMRAD adapté.

**Plan progressif** (variante) : on remonte du particulier au général, ou inversement. Utile en histoire, en sociologie.

Le choix du plan dépend de la discipline et du sujet. À discuter avec le directeur de recherche dès le début.

### 3. Introduction académique

Une introduction académique française suit un schéma codifié :

1. **Accroche** (1 paragraphe) : un fait, une citation, un constat, un événement qui justifie l'intérêt du sujet. Pas trop journalistique, pas trop emphatique.
2. **Définition des termes clés** : préciser les concepts mobilisés, lever les ambiguïtés lexicales.
3. **Contexte et enjeux** : situer historiquement, théoriquement, socialement.
4. **État de la question** (bref, l'état de l'art complet vient ailleurs) : ce que la recherche existante a établi, et où sont les zones d'ombre.
5. **Problématique** : la question centrale du travail, formulée explicitement.
6. **Hypothèses** (selon discipline) : les réponses provisoires que le travail va tester.
7. **Méthode** : comment on va traiter la question (corpus, méthode, terrain).
8. **Annonce du plan** : les grandes parties, en quelques phrases, en évitant la formule sèche `dans une première partie... dans une deuxième partie...`. Préférer une annonce intégrée au raisonnement.

Volume : 5 à 10 % du document final.

### 4. Conclusion académique

Une conclusion académique française n'est pas un résumé. Elle :

1. **Rappelle la problématique** (rapidement, pour situer).
2. **Synthétise les apports** : ce que le travail a établi, démontré, mis en évidence.
3. **Souligne les limites** : honnêteté intellectuelle, conditions de validité des résultats, ce qui n'a pas été traité.
4. **Ouvre des perspectives** : prolongements possibles, nouvelles questions soulevées, applications.

Volume : 5 à 10 % du document final. Une conclusion trop courte est suspecte ; une conclusion qui répète l'introduction est inutile.

### 5. Voix du chercheur

Trois conventions cohabitent selon les disciplines :

**`Nous` de modestie** : majoritaire en sciences humaines françaises traditionnelles. `Nous montrerons que...`, `Nous avons interrogé...`. Effet de distanciation, posture de chercheur impersonnel.

**`Je` assumé** : autorisé voire encouragé en certaines branches (anthropologie réflexive, sociologie engagée, recherche-action, sciences de l'éducation). `Je soutiens que...`, `J'ai mené une enquête...`. Marque la responsabilité intellectuelle de l'auteur.

**Tournures impersonnelles** : `Il apparaît que...`, `On peut soutenir que...`, `La présente étude montre...`. Souvent en sciences dures, en droit, en économie.

**Vérifier la convention de la discipline et de l'institution.** Le choix n'est pas libre : un mémoire de droit en `je` détonnera ; un mémoire de psychologie clinique en `nous` impersonnel sonnera daté.

### 6. Intégration des citations

**Citation courte** (moins de 3 lignes) : intégrée au corps du texte, entre guillemets français, avec référence.

> Comme l'écrit Bourdieu, « le champ scientifique est un champ de forces et un champ de luttes pour conserver ou transformer ce champ de forces » (Bourdieu, 1976, p. 91).

**Citation longue** (plus de 3 lignes) : détachée du texte, sans guillemets, en retrait à gauche (généralement 1 cm), souvent dans une police légèrement plus petite ou un interligne réduit.

**Citation modifiée** : tout ajout ou suppression doit être signalé.
- Ajout, précision : entre crochets `[…]` ou `[ajouté par nous]`.
- Suppression : crochets avec points de suspension `[…]`.
- Italique non original : `(c'est nous qui soulignons)` ou `(souligné par nous)`.

**Paraphrase** : reformulation dans ses propres mots, toujours avec référence à la source. La paraphrase sans référence est du plagiat.

**Plagiat** : la reproduction de plus de quelques mots consécutifs sans guillemets et sans référence est qualifiée de plagiat dans la quasi-totalité des règlements universitaires français. Conséquences : annulation du diplôme, exclusion. À zéro tolérance.

### 7. Notes de bas de page vs références dans le texte

Deux systèmes coexistent :

**Système auteur-date** (APA, Harvard, sciences sociales et dures majoritaires) : référence dans le texte sous la forme `(Auteur, année)` ou `(Auteur, année, p. X)`, bibliographie complète en fin de document.

**Système notes** (Chicago notes, lettres, histoire, droit français traditionnel) : référence en note de bas de page numérotée, avec première occurrence complète puis abréviations (`op. cit.`, `ibid.`, `id.`). Bibliographie complète en fin.

Le choix dépend de la discipline et des consignes de l'institution. À fixer dès le début et à appliquer rigoureusement.

Voir `references/bibliographie.md` pour les normes détaillées par système.

### 8. Niveaux de langue acceptables

**Toujours acceptable** : vocabulaire spécialisé de la discipline, syntaxe soutenue, phrases longues si maîtrisées.

**À mesurer** : néologismes (justifier leur usage), anglicismes techniques (acceptés en STEM, à expliciter en SHS), tournures littéraires (selon contexte).

**À proscrire** : familiarités (`du coup`, `au final`, `pas mal de`, `ça`), abréviations non standard, tics oraux, premier degré humoristique (sauf usage maîtrisé), affirmations péremptoires sans appui.

### 9. Rythme du travail

Un mémoire ou une thèse ne se rédige jamais d'un seul jet. Phases typiques :

1. **Cadrage** : problématique, plan, bibliographie de départ. 10 à 20 % du temps.
2. **Lecture et notes** : constitution du corpus de sources, prise de notes structurée. 30 à 40 % du temps.
3. **Rédaction de premier jet** : écrire les chapitres dans l'ordre où ils se construisent mentalement, pas forcément l'ordre final. Accepter le mauvais premier jet. 20 à 30 % du temps.
4. **Révision** : restructuration, réécriture, ajout des transitions, vérification des sources. 20 à 30 % du temps.
5. **Finitions** : typographie, bibliographie, mise en page, relectures par tiers. 5 à 10 % du temps.

La rédaction linéaire (commencer par l'introduction et finir par la conclusion) est piégeuse : l'introduction définitive ne peut s'écrire qu'à la fin, quand on sait ce qu'on a démontré.

## Workflow type pour assister un utilisateur

1. **Identifier le genre** : mémoire ? thèse ? article ? rapport ? Charger la référence correspondante.
2. **Identifier l'étape** : cadrage, rédaction, révision, finitions.
3. **Identifier la discipline et l'institution** : les conventions varient.
4. **Demander les contraintes formelles** : nombre de pages, normes de citation imposées, langue de soumission (français pur ou français avec abstract anglais).
5. **Appliquer systématiquement les couches `fr-typographie` et `fr-style`.**
6. **Pour les tâches longues**, proposer un découpage par chapitres ou sections.

## Pièges fréquents à signaler

- Plagiat par paraphrase trop proche (reformulation cosmétique sans citation).
- Sur-citation : un texte académique n'est pas une couture de citations. La voix de l'auteur doit dominer.
- Sous-référencement : toute affirmation factuelle ou conceptuelle empruntée nécessite référence.
- Bibliographie hétérogène : mélange de normes, formatage incohérent.
- Problématique mouvante : changer de question en cours de route sans réviser l'ensemble.
- Conclusion qui annonce des résultats qu'on n'a pas démontrés.
- Méthodologie absente ou floue.
- Absence de définition des termes clés au début.
- Anglais mal utilisé : si l'abstract anglais est obligatoire, le faire relire par un anglophone, pas par un traducteur automatique seul.

## Outils complémentaires

- **Zotero** : gestion de bibliographie. Permet l'export selon les normes courantes.
- **LaTeX** : pour les thèses scientifiques, format de prédilection. Voir `references/methodologie.md` pour pistes.
- **Word avec styles** : pour les disciplines littéraires, à condition d'utiliser les styles (Titre 1, Titre 2) pour générer automatiquement la table des matières.
- **Antidote** : correcteur stylistique et grammatical français de référence, largement supérieur à Word pour la rédaction soignée.
- **Detexify** et **MathJax** pour les notations mathématiques.

## Sur la fraude académique

Le contexte 2026 impose une vigilance accrue sur l'usage des IA génératives :

- Vérifier les règles de l'institution sur l'usage de Claude, ChatGPT et autres outils.
- Si l'IA est utilisée pour aider à la rédaction, vérifier que le règlement le permet, et déclarer son usage si exigé.
- Vérifier toutes les références produites par une IA : les LLM hallucinent fréquemment des citations qui n'existent pas. Chaque référence doit être vérifiée dans une base réelle.
- L'IA ne produit pas de pensée originale. Le contenu intellectuel doit rester celui de l'auteur.

## Pour aller plus loin

Charger la référence appropriée selon le genre :
- Mémoire → `references/memoire.md`
- Thèse → `references/these.md`
- Article → `references/article-scientifique.md`
- Bibliographie → `references/bibliographie.md`
- Méthodologie → `references/methodologie.md`
