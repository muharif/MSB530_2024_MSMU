## Transcriptomics Data Analysis
For this hands-on experience assignment, we will analyze transcriptomics data from real and published studies. To facilitate the analysis, we will use an online tool called [BioJupies](https://maayanlab.cloud/biojupies/). There are many other tools, including [Galaxy](https://usegalaxy.org) and [R-based tools](https://github.com/sysmedicine/phd2020/tree/master/transcriptomics)

## Data to Analyze

**All count, metadata, and related articles are available on CANVAS. Go to "Files" --> "Handson" --> "Transcriptomics"**

1. **Group 1**: Healthy vs Pulmonary Fibrosis Patient Lung (Human). The data can be retrieved from [GSE92592](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE92592). Original Publication is [Cellular senescence mediates fibrotic pulmonary disease](https://www.nature.com/articles/ncomms14532)
2. **Group 2**: Wild-Type (Control) vs 14 days Post-Pulmonary Fibrosis Lung (Mouse). The data can be retrieved from [GSE213709](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE213709). Original Publication is [An Integrative Multiomics Framework for Identification of Therapeutic Targets in Pulmonary Fibrosis](https://onlinelibrary.wiley.com/doi/10.1002/advs.202207454)
3. **Group 3**: Wild-Type (Control) vs 24h Post-Myocardial Infarction heart (Mouse). The data can be retrieved from [GSE153485](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE153485). Original Publication is [Integrative transcriptomic analysis of tissue-specific metabolic crosstalk after myocardial infarction](https://elifesciences.org/articles/66921)
4. **Group 4**: Healthy (non-failing) vs Dilated Cardiomyopathy (DCM) Patient Heart (Human). The data can be retrieved from [GSE116250](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE116250). Original Publication is [Transcriptome analysis of human heart failure reveals dysregulated cell adhesion in dilated cardiomyopathy and activated immune pathways in ischemic heart failure](https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-018-5213-9)
4. **Group 5**: Healthy (non-failing) vs Ischemic Cardiomyopathy (ICM) Patient Heart (Human). The data can be retrieved from [GSE116250](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE116250). Original Publication is [Transcriptome analysis of human heart failure reveals dysregulated cell adhesion in dilated cardiomyopathy and activated immune pathways in ischemic heart failure](https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-018-5213-9)


**Note 1: Feel free to work together with your group member if needed, but reports have to be individualized.**

**Note 2: One presentation per group. **

**Note 3: some of these data are related. E.g. Group 1 and Group 2 will analyze the same disease, but one is using mouse data (pre-clinical) and the other is human data (clinical). Feel free to analyze both to enrich your report. Similarly, Group 3 and 5 data are also related (pre- and clinical), while group 4 and 5 data are also related as it is comparing 2 different heart problems from the same batch. Sharing analysis results with other groups are encouraged, but again, reports have to be independent**

## Reports

Please submit 2-4 pages report by April 29, 2024 11:59pm. The report must include at least 3 supporting figures with legends (Excluded from the page limit). Explain your step-by-steps and link it to the data analysis workflow that we discussed during the Week 6.

My suggestion is to follow the format of the research paper: 

* Title (Try to come up with interesting title for your report)
* Abstract(1 paragraph, no reference, highlight the data and key results)
* Introduction (Max 2 paragraphs). Suggestion:
	* Paragraph 1: What is the disease's characteristics? Why are you analyzing this disease? Take data from WHO, Wikipedia, or other source. Remember to include the references
	* Paragraph 2: Summarize what you are doing and close it with your ultimate goal/sweeping statement
	* Write Paragraph 2 AFTER you finish with the analysis and writing the results and discussions.
* Results (With subheadings of your analysis steps, highlight detailed results.)
* Discussion (Your summary of the results, discuss deeper 2-3 main points from your results that you want people to remember. You can support it with some literature reviews.)
* Methods (Summary of the methods and references of the tools)

## Presentation

Please create 10-15 minutes slide deck to present your findings. My suggestion is to include: Introduction, Methods, Results, and Discussion of the results.

**Presentation date: Week 8 (April 30, 2024)**

## Example questions to be answered on the report and presentation

* How many samples? Male/Female? Age distribution? Disease informations? (Often included in Table 1 or metadata. You can use R to summarize the data, e.g. counting samples, mean +- SD etc)
* What are the conditions?
* Based on Sample exploration, any outliers that you want/decide to remove? Can you see any separation between healthy and diseased samples? (Hint: PCA)
* (For mouse studies) which strain of mouse? Disease induction methods?
* How many significantly differentially expressed genes and pathways? What is the top 10?
* (If comparing human vs mouse results) Do you think the disease model in mouse can mimic patients' conditions? (hint: Pathways/Gene Ontology)
* (If comparing two different but similar diseases) What are the commonalities and differences between these diseases? (hint: Pathways/Gene Ontology)
* While checking the pathways/gene ontology, do you think the data is good? Any known disease pathways/genes/ontology that you find there (based on other literatures)?