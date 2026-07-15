# Méthodologie de recherche : choix, opérationnalisation, justification

Document de référence sur les approches méthodologiques en recherche académique francophone. À consulter pour structurer le chapitre méthode d'un mémoire, d'une thèse ou d'un article, ou pour justifier un choix méthodologique.

## Trois grandes familles méthodologiques

### Recherche quantitative

Vise à mesurer, comparer, généraliser. Travaille sur des données numériques traitables statistiquement. Repose sur l'opérationnalisation : transformer des concepts en variables mesurables.

Disciplines dominantes : économie, gestion, psychologie expérimentale, démographie, épidémiologie, sciences politiques quantitatives.

Méthodes principales :
- Questionnaire à grande échelle.
- Analyse de données secondaires (recensements, bases administratives).
- Expérimentation contrôlée.
- Modélisation statistique et économétrique.

Critères de qualité : validité (interne, externe, de construit), fiabilité, reproductibilité, taille d'échantillon, puissance statistique.

### Recherche qualitative

Vise à comprendre, interpréter, théoriser. Travaille sur des données textuelles, visuelles, verbales. Repose sur l'analyse interprétative.

Disciplines dominantes : anthropologie, sociologie qualitative, sciences de l'éducation, sciences de gestion (études de cas), psychologie clinique.

Méthodes principales :
- Entretiens (semi-directifs, biographiques, compréhensifs).
- Observation (participante, non participante, ethnographie).
- Analyse documentaire.
- Étude de cas.
- Analyse de discours, analyse de contenu.

Critères de qualité : transférabilité, crédibilité, confirmabilité, dépendabilité (Lincoln et Guba, 1985). En complément de la triade quantitative validité-fiabilité-objectivité.

### Méthodes mixtes

Combinent quantitatif et qualitatif. Séquentielles (l'un puis l'autre) ou concurrentes (en parallèle). Souvent utilisées pour trianguler ou pour explorer puis confirmer.

Disciplines : sciences de gestion, sciences de l'éducation, sciences politiques, santé publique.

Quatre designs principaux (Creswell) :
- Convergent parallèle : quanti et quali simultanément, comparaison.
- Explicatif séquentiel : quanti d'abord, quali pour expliquer les résultats.
- Exploratoire séquentiel : quali d'abord, quanti pour confirmer ou généraliser.
- Imbriqué : un type intégré dans un autre.

## Choix méthodologique : critères

Le choix de la méthode dépend de :

1. **La question de recherche** : `combien`, `dans quelle mesure`, `quels facteurs` appellent le quantitatif ; `comment`, `pourquoi`, `comment se vit` appellent le qualitatif.
2. **L'état du champ** : un champ exploré demande de la mesure ; un champ neuf demande de l'exploration.
3. **L'accès aux données** : disponibilité de bases, d'un terrain, de répondants.
4. **Les contraintes de ressources** : temps, budget, compétences.
5. **La discipline et ses conventions** : certaines disciplines valorisent une approche.
6. **Le positionnement épistémologique** : positivisme, constructivisme, pragmatisme, critique.

## Positionnement épistémologique

Tout travail de recherche s'appuie, explicitement ou implicitement, sur des présupposés sur la nature de la connaissance. Les principaux paradigmes :

### Positivisme

La réalité existe objectivement, indépendamment de l'observateur. Elle est mesurable. La science vise à découvrir des lois générales par l'observation et l'expérimentation.

Conséquences méthodologiques : préférence pour le quantitatif, mesure rigoureuse, neutralité de l'observateur, généralisation, reproductibilité.

### Post-positivisme

Réalité objective mais accès imparfait. La science approche la vérité sans l'atteindre. Importance de la falsification (Popper).

Méthodologies : mixtes, prudence sur les généralisations, triangulation.

### Constructivisme

La réalité sociale est construite par les acteurs. Plusieurs réalités coexistent selon les perspectives. La connaissance est située et contextuelle.

Méthodologies : qualitatives, interprétatives, attention aux significations, réflexivité de l'auteur.

### Pragmatisme

Ce qui compte, c'est ce qui marche. Mélange méthodologique selon les besoins. Privilégie l'utilité pratique.

Méthodologies : mixtes, action-recherche, recherche-intervention.

### Approche critique (théorie critique)

La recherche n'est jamais neutre. Elle reproduit ou conteste des structures de pouvoir. La recherche doit éclairer et émanciper.

Méthodologies : engagement, analyse des rapports de domination, recherche-action critique.

### Approches interprétatives, phénoménologiques

Cherchent à comprendre l'expérience vécue, le sens donné par les acteurs. Hermenéutique, phénoménologie.

Méthodologies : entretiens en profondeur, récits de vie, analyse phénoménologique.

**Le positionnement doit être explicité au début du chapitre méthode**, en quelques paragraphes. Il justifie tous les choix qui suivent.

## Méthodes quantitatives : repères

### Échantillonnage

**Probabiliste** : tirage aléatoire dans la population. Seul permettant l'inférence statistique stricte.
- Aléatoire simple, systématique, stratifié, par grappes.

**Non probabiliste** : par convenance, par quotas, boule de neige, par choix raisonné. Limite la généralisation mais accessible.

Taille d'échantillon : à calculer en fonction de la puissance statistique souhaitée, de la taille d'effet attendue, du seuil de significativité. Outils : G*Power, R package `pwr`.

### Recueil de données

- **Questionnaire** : construction soignée, échelles validées (Likert, sémantique différentielle, etc.), tests pilotes, gestion des biais (désirabilité sociale, biais de réponse).
- **Expérimentation** : design (entre sujets, intra-sujets, mixte), randomisation, contrôle des variables parasites.
- **Données secondaires** : bases publiques (Insee, Eurostat, OCDE), commerciales, ou produites par d'autres chercheurs.

### Analyse statistique

Selon la nature des variables et la question :
- Statistiques descriptives.
- Tests d'hypothèses (t de Student, ANOVA, khi-deux, etc.).
- Régressions (linéaire, logistique, multiniveau, etc.).
- Analyse factorielle, analyse en composantes principales.
- Modèles d'équations structurelles.
- Économétrie de panel, séries temporelles.
- Analyse de durée, modèles de survie.

Logiciels : R (de plus en plus dominant, libre), Stata (sciences sociales et économie), SPSS (psychologie, sciences sociales, en perte de vitesse), SAS (industrie, santé), Python (data science).

### Présentation des résultats

- Tableaux normalisés.
- Visualisations claires (ggplot2 sous R, matplotlib sous Python).
- Statistiques complètes : non seulement p-values mais aussi tailles d'effet, intervalles de confiance.
- Vérification des hypothèses des tests (normalité, homoscédasticité, indépendance).

## Méthodes qualitatives : repères

### Entretiens

**Directif** : questions fermées, format strict. Peu utilisé en qualitatif.

**Semi-directif** : grille d'entretien avec questions ouvertes mais ordre flexible. Le plus courant. Permet d'aborder des thèmes prévus tout en suivant le fil de l'entretien.

**Non directif (ou compréhensif)** : ouvert, le chercheur relance, reformule. Vise à laisser émerger les catégories propres de l'interviewé. Approche de Kaufmann ou de Demazière et Dubar.

**Récit de vie** : entretien biographique, retracer un parcours.

Échantillonnage qualitatif : par choix raisonné (purposive sampling), boule de neige, par cas typique ou atypique. La taille n'est pas fixée a priori : on saturer quand les nouveaux entretiens n'apportent plus d'éléments nouveaux.

Durée : 30 minutes à 3 heures selon le type. Enregistrement (avec consentement) puis transcription.

### Observation

**Participante** : le chercheur s'immerge dans le milieu (anthropologie classique, ethnographie).
**Non participante** : observation à distance, le chercheur observe sans intervenir.
**Couverte / découverte** : selon que le rôle de chercheur est révélé ou non. Enjeu éthique majeur.

Outils : carnet de terrain, journal réflexif, photographies, enregistrements selon les contextes et les autorisations.

### Analyse de données qualitatives

Plusieurs approches :

**Analyse thématique** : codage des données, regroupement par thèmes, identification de patterns. Bardin pour l'analyse de contenu classique. Braun et Clarke pour l'analyse thématique réflexive.

**Théorisation ancrée (grounded theory)** : Glaser et Strauss. Codage ouvert, axial, sélectif. Produit progressivement une théorie ancrée dans les données.

**Analyse de discours** : approches linguistiques, foucaldiennes, critiques. Étudie comment le langage construit la réalité.

**Analyse phénoménologique** : approches existentialistes et phénoménologiques. Étudie l'expérience vécue.

Logiciels d'aide : NVivo, Atlas.ti, MAXQDA, Sonal (entretiens). Outils libres : RQDA, Taguette. Ces logiciels ne remplacent pas l'analyse mais structurent le codage.

### Étude de cas

Approche transversale en sciences sociales, gestion, sciences de l'éducation. Yin, Stake comme références.

Types :
- Cas unique exemplaire, critique, révélateur, longitudinal.
- Cas multiples comparatifs.

Sources : entretiens, observations, documents, données quantitatives. La triangulation est essentielle.

### Réflexivité

Particulièrement attendue en qualitatif. L'auteur :
- Explicite sa position (insider/outsider, proximité avec le terrain, biais possibles).
- Décrit les conditions d'accès au terrain.
- Reconnaît les difficultés et les limites.
- Discute l'influence de sa présence sur les données.

Un mémoire ou une thèse qualitative sans réflexivité est suspect.

## Méthodes mixtes : repères

L'enjeu central est l'**intégration** : comment articuler les volets quanti et quali ?

Niveaux d'intégration :
- Au niveau du design : quel ordre, quelle pondération.
- Au niveau de la collecte : sources, instruments.
- Au niveau de l'analyse : analyses parallèles, transformation des données (qualitiser, quantitiser).
- Au niveau de l'interprétation : convergences, divergences, complémentarité.

La méthode mixte n'est pas une juxtaposition. Elle vise un gain heuristique qu'aucune des deux approches isolément ne permettrait.

## Éthique de la recherche

### Cadres réglementaires

En France :
- **RGPD** : protection des données personnelles. Consentement éclairé, finalité, droit d'accès, droit à l'effacement.
- **Comités d'éthique** : obligatoires pour la recherche biomédicale (CPP), recommandés pour les sciences humaines (CER).
- **Conventions de stage ou de recherche** : règles de confidentialité, propriété des données.
- **Loi informatique et libertés**.

### Principes

- **Consentement éclairé** : les participants connaissent l'objectif, leurs droits, peuvent se retirer.
- **Confidentialité et anonymisation** : pseudonymes, désidentification, sécurisation des fichiers.
- **Bienveillance et non-malfaisance** : ne pas nuire aux participants, ne pas exploiter une asymétrie de pouvoir.
- **Justice** : sélection équitable des participants, partage des bénéfices.
- **Restitution** : retour aux participants ou à la communauté concernée.

### Documents à produire

- Formulaire de consentement éclairé signé.
- Note d'information.
- Procédure d'anonymisation décrite et appliquée.
- Plan de gestion des données (PGD), de plus en plus exigé par les organismes de financement.

### Cas sensibles

Enfants, personnes vulnérables, populations marginalisées, données médicales, terrain conflictuel : règles renforcées, accompagnement par un comité d'éthique recommandé.

## Pré-enregistrement et science ouverte

Tendances récentes qui structurent la rédaction de la méthode :

### Pré-enregistrement

Déposer le protocole d'étude avant la collecte sur une plateforme publique (OSF, AsPredicted). Garantit que la méthode et les hypothèses n'ont pas été ajustées après les résultats (anti-HARKing : `Hypothesizing After the Results are Known`).

### Registered reports

Format d'article où la méthode est évaluée et acceptée avant la collecte. Garantit la publication des résultats même si négatifs ou nuls. De plus en plus répandu en psychologie, sciences cognitives.

### Données ouvertes (FAIR data)

Findable, Accessible, Interoperable, Reusable. Dépôt sur Zenodo, Dataverse, Datalitiq selon la discipline. Sauf raisons éthiques (anonymisation impossible) ou commerciales.

### Code ouvert

Dépôt du code d'analyse sur GitHub, GitLab, OSF, avec DOI. Permet la reproductibilité.

## Erreurs fréquentes dans le chapitre méthode

- Méthode présentée sans justification : on dit ce qu'on a fait, pas pourquoi on l'a fait.
- Confusion entre méthode et résultats.
- Absence d'opérationnalisation : on parle de concepts sans dire comment ils sont mesurés ou caractérisés.
- Échantillon mal décrit (composition, mode de recrutement, taille, justifications).
- Procédure d'analyse vague (`j'ai analysé les entretiens` sans préciser la méthode d'analyse).
- Absence de réflexivité en qualitatif.
- Absence de considérations éthiques.
- Limites de la méthode minimisées ou absentes.

## Synthèse pour rédiger le chapitre méthode

Structure recommandée, à adapter :

1. **Positionnement épistémologique** (1 à 3 paragraphes).
2. **Choix méthodologique global** : pourquoi cette approche.
3. **Population et échantillon** : qui, combien, comment recrutés, justifications.
4. **Instrument de recueil** : entretien (avec grille), questionnaire (en annexe), observation (avec grille), document (avec corpus).
5. **Procédure de recueil** : où, quand, comment, par qui.
6. **Procédure d'analyse** : méthode précise, étapes, logiciel.
7. **Considérations éthiques** : consentement, anonymisation, comité.
8. **Validité, fiabilité, transférabilité** selon le paradigme.
9. **Limites méthodologiques** identifiées dès ce stade.

Longueur : 10 à 25 % du document selon le type. Indispensable que ce chapitre permette à un lecteur de comprendre exactement ce qui a été fait et pourquoi.
