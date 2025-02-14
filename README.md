# Projet 5 - Segmentez des clients d'un site e-commerce

> 🎓 OpenClassrooms • Parcours [AI Engineer](https://openclassrooms.com/fr/paths/795-ai-engineer) | 👋 *Etudiant* : [David Scanu](https://www.linkedin.com/in/davidscanu14/)

## 📝 Contexte

Olist est une entreprise brésilienne qui offre une solution de vente sur les marketplaces en ligne. Actuellement, Olist est en pleine phase de construction d'une équipe Data pour améliorer sa prise de décision et optimiser ses campagnes marketing. L'une des premières missions de cette équipe est de réaliser une **segmentation des clients** à partir des données historiques disponibles. Cette segmentation vise à mieux comprendre les comportements clients pour affiner les stratégies de communication et d’engagement.

Nous sommes **consultant pour Olist** et nous avons été chargé de **réaliser cette segmentation**, en mettant en place des modèles d'**apprentissage non supervisé** et en fournissant un **plan de maintenance** du modèle.

## ⚡ Mission

Notre rôle est double :

1. **Résoudre une urgence**
   - Fournir les **requêtes SQL** demandées par Fernanda, Lead Data Analyst, pour alimenter le **Dashboard Customer Experience**.

2. **Segmentation client**
   - Explorer et analyser les données fournies.
   - Mettre en place une segmentation des clients en utilisant des **algorithmes d’apprentissage non supervisé** (ex. clustering).
   - Fournir une **analyse approfondie des segments obtenus** pour une exploitation optimale par l'équipe Marketing.
   - Proposer un **plan de maintenance** basé sur une simulation de fréquence de mise à jour du modèle.

## ✔️ TODO

- Apprentissage non-supervisé
  - KMeans ✔️
  - DBScan
  - Classification ascendant hiérarchique (CAH)
- Plan de maintenance dans `p05-david_scanu_04_notebook_simulation_20250117`
- Ajouter géolocalisation à RFM+S ?
- Ajouter moyens de paiement ?

## 🎯 Objectifs pédagogiques

1. **Maîtrise des algorithmes d’apprentissage non supervisé**
   - Comprendre et appliquer des techniques de clustering.
   - Comparer et évaluer les performances des différents modèles.

2. **Analyse exploratoire et transformation des données**
   - Nettoyer et préparer des données pour l’analyse.
   - Effectuer des transformations nécessaires (normalisation, encodage, etc.).

3. **SQL avancé**
   - Utiliser des requêtes SQL complexes pour extraire et analyser des données.

4. **Maintenance des modèles**
   - Élaborer une stratégie pour garantir la pertinence du modèle dans le temps.

## 🗓️ Plan de travail

### 1. **Phase préliminaire : Exploration et mise en place**
- Comprendre les besoins d’Olist et de Fernanda.
- Explorer les données disponibles.
- Rédiger les requêtes SQL urgentes.

### 2. **Analyse exploratoire**
- Nettoyer et préparer les données.
- Identifier les variables clés pour la segmentation.
- Effectuer une analyse descriptive (statistiques, visualisations, corrélations).

### 3. **Segmentation des clients**
- Tester différentes approches de clustering (K-Means, DBSCAN, etc.).
- Évaluer les modèles en fonction de métriques adaptées (silhouette score, etc.).
- Interpréter les segments obtenus.

### 4. **Simulation et maintenance**
- Simuler l'évolution des clusters au fil du temps.
- Proposer une fréquence optimale de mise à jour.

### 5. **Préparation des livrables**
- Créer le support de présentation.
- Rédiger et commenter les notebooks.
- Finaliser le script SQL.

## 📦 Livrables

1. **Script SQL**
   - Un fichier contenant toutes les requêtes SQL demandées par Fernanda.
   - Nom du fichier : `p05-david_scanu_01_sql_for_dashboard_20250117.md`.

2. **Notebook d'analyse exploratoire**
   - Notebook de création des **données client (RFM+S)** et d’analyse initiale des données.
   - Nom du fichier : `p05-david_scanu_02_notebook_exploration_20250117`.

3. **Notebook d’essais de modélisation**
   - Un notebook contenant les tests des différentes approches de modélisation pour le clustering.
   - Nom du fichier : `p05-david_scanu_03_notebook_clustering_20250117`.

4. **Notebook de simulation**
   - Une simulation pour déterminer la fréquence optimale de mise à jour du modèle de segmentation.
   - Nom du fichier : `p05-david_scanu_04_notebook_simulation_20250117`.

5. **Présentation**
   - Un support présentant la démarche, les résultats et les recommandations.
   - Nom du fichier : `p05-david_scanu_05_presentation_20250117`.

## 🔧 Technologies utilisées

- **Langages :** Python, SQL
- **Bibliothèques :** pandas, numpy, scikit-learn, matplotlib, seaborn
- **Outils :** Jupyter Notebook, SQL, Google Sheet

## Documentation 

- [Présentation du jeu de données sur Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)