# Supplementary Material for "Predicting Mouse Positions Beyond a System's Latency Can Increase Throughput and User Experience in Linear Steering Tasks"

This repository contains material related to the MUC'23 Paper "Predicting Mouse Positions Beyond a System's Latency Can Increase Throughput and User Experience in Linear Steering Tasks". Here you can find source code as well as data collected in the studies. These files can be used to replicate results. Data files are anonymized as far as possible. If you use any code of data from this repository for further studies please cite the paper.

## Abstract
Latency is present in all interactive systems and decreases user experience and performance.
Previous work developed approaches that predict user actions and show these predictions to reduce latencies' negative effects.
While this can increase user experience and performance, it is unclear if predicting beyond a system's latency results in further improvements.
Therefore, we investigated the effects of predicting beyond a system's latency. We collected data from 60 participants performing Steering Law tasks to systematically train an artificial neural network (ANN) that predicts 100ms into the future.
We integrated the ANN into the Steering Law task and buffered users' inputs to simulate latency between 50ms and -50ms.
A study with 30 participants showed that decreasing latency beyond the system's latency increases throughput up to -50ms.
Subjective measures improved up to -16.67ms without negative effects on agency.
Overall, we show that predicting beyond a system's latency can increase performance and user experience.

## Repository contents

| Folder | Content Description|
| --- | --- |
| 00_Plots | All plots used in the paper. |
| 01_Data Collection/01_Steering Task | JavaScript Steering Task implementation. Mouse Movement data as well as Movement Times are recorded and sent to the server. |
| 01_Data Collection/02_Data Analysis | Movement Time and Demographic data from Data Collection study. Excel, SPSS, and Jupyter Notebook files for data analysis. |
| 02_Neural Network Development/01_Hyperparameter Tuning | Jupyter Notebook to optimize Hyperparameters for fully-connected feed-forward ANNs, RNNs, and Transformer-based architectures using optuna. |
| 02_Neural Network Development/02_Model Training | Jupyter Notebook for training all optimized models with MAE, MSE, and NTS loss. |
| 02_Neural Network Development/03_Pilot Study/01_Task with Prediction | Extension of the Steering task implementation from Data Collection now using the trained ANNs to display predicted mouse positions. |
| 02_Neural Network Development/03_Pilot Study/02_Questionnaire Results | Excel file containing responses to the user experience questionnaire and analysis. |
| 02_Neural Network Development/04_Final Model | Jupyter Notebooks for optimizing the fully-connected feed-forward ANN with MAE loss and training of optimized single and ensemble model. |
| 03_Study/01_Task | Extension of Steering Law implementation using ensemble for prediction, informing participants about questionnaires, buffering inputs, and selecting random next latency. |
| 03_Study/02_Data | All collected Movement Time and Questionnaire data. Juypter Notebook, Excel, and SPSS files for data analysis. |

## Citation
Currently, work in progress untill paper publication is finalized.

```bibtex
@inproceedings{Wiese.2023.Predicting,
	author = {Wiese, Jannik and Henze, Niels},
	title = {Predicting Mouse Positions Beyond a System's Latency Can Increase Throughput and User Experience in Linear Steering Tasks},
	pages = {xx--xx},
	publisher = {ACM},
	isbn = {xx},
	editor = {xx},
	booktitle = {Mensch und Computer 2023 (MuC '23), September 3--6, 2023, Rapperswil, Switzerland},
	year = {2023},
	address = {Rapperswil, CH},
	doi = {xx.xx/xx}
}
```