# Biohydrogen_GEMs_iMeta
Scripts for statistics and plotting figures in "Metagenomics and Digital Cell Modeling Facilitate Targeted High-Throughput Sorting of Anaerobic Hydrogen-Producing Microorganisms".published in iMeta 2025.


*/Fig1-2#Raw datasets and associated figure PDFs
*/Protein_sequence#215 files containing protein sequences
*/model#Including the model constructed by CarveMe and the model refined by MQC
*/script#The script files employed for model construction and simulation in this study

Metabolic Model Construction & Simulation Pipeline

This repository contains all scripts, methods, models, and results for constructing, quality-controlling, processing, and simulating genome-scale metabolic models of 215 bacterial strains. We:

1.Build initial models with CarveMe

2.QC & refine with MQC → 215 curated SBML models

3.Close carbon-source exchanges across models (process_model.ipynb)

4.Compute optimal growth on single carbon sources (optimize_metabolites.ipynb)

5.Evaluate growth impacts of individual ion deficiencies (optimize_zero_metabolites.ipynb)

If you use these scripts, please cite the paper below:
Jianfeng Liu#, Wei Xing#, Xingyang Zhang#, Nengyao Xu#, Ran Xu#, ..., Nanqi Ren*, Cong Huang*. Metagenomics and Digital Cell Modeling Facilitate Targeted High-Throughput Sorting of Anaerobic Hydrogen-Producing Microorganisms. 2025. iMeta.
