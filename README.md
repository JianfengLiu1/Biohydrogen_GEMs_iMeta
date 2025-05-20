# Biohydrogen_GEMs_iMeta
Metabolic Model Construction & Simulation Pipeline
This repository contains all scripts, models, and results for constructing, quality-controlling, processing, and simulating genome-scale metabolic models of 215 bacterial strains. We:

1.Build initial models with CarveMe
2.QC & refine with MQC → 215 curated SBML models
3.Close carbon-source exchanges across models (process_model.ipynb)
4.Compute optimal growth on single carbon sources (optimize_metabolites.ipynb)
5.Evaluate growth impacts of individual ion deficiencies (optimize_zero_metabolites.ipynb)
