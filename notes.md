## TODO

1. Lire Open AI ✔️
2. Lire article [Yellowbrick — Clustering Evaluation Examples](https://www.kaggle.com/code/kautumn06/yellowbrick-clustering-evaluation-examples)
3. Lire [A Guide to drift tracking](https://www.truefoundry.com/blog/guide-to-drift-tracking)
2. Lire article "OList clustering"
3. Notebook 1 : création dataset
4. Notebook 2 : Clustering 

## Questions

- For environments with continuous data streams, algorithms like `MiniBatchKMeans` can be updated incrementally while controlling how much the model changes at once. ??


### Comment gérer les données initiales et les nouvelles données ? 

- Ajouter les nouvelles données aux anciennes données
- Utiliser le scaler initial
- **Ré-entraîner Kmeans**
    - retrain model on the **full aggregated data** (2023 + Q1 2024)
    - retrain model on on a **rolling window** (e.g., only the last 12 months)
    - then compare their performance using internal metrics (silhouette score, inertia) and business KPIs.

---

## Approaches for Monitoring Cluster Validity

### 1. Track Internal Cluster Quality Metrics

- Inertia (Within-Cluster Sum of Squares)
- Silhouette Score
- Cluster Size Distribution

 In many production environments, you might have a baseline clustering on a set of customers and then later reassign clusters for the same customers. In that case, these metrics can help quantify the change.

- Adjusted Rand Index (ARI) :
  - https://fr.wikipedia.org/wiki/Indice_de_Rand
  - https://scikit-learn.org/stable/modules/generated/sklearn.metrics.adjusted_rand_score.html
- Homogeneity
- Completeness
- Distances between cluster centers

### 2. Drift Detection on Input Features

- Statistical Tests (e.g., Kolmogorov–Smirnov Test)
- Population Stability Index (PSI)

### 3. Business Metrics and Domain Knowledge

- Domain-Specific KPIs
- Expert Review

## Determining the Frequency for Re-training

- Data Arrival Rate
- Thresholds for Metric Changes
- Business Cycle Considerations
- Automated Alerts