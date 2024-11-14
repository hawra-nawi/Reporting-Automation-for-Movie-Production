## **Overview**

Automated reporting and visualisations for movie production data to identify key factors influencing film success, including net profit, ratings, genres, and release timing. This project features an end-to-end data processing pipeline designed to streamline data preparation and uncover trends, supporting informed decision-making within the film industry.

## **Approach**

- **Data Processing Pipeline**: Built in R (using `dplyr`, `tidyr`, and `stringr`), reducing processing time by 50% and optimizing data preparation for **Tableau** and **PowerBI** dashboards.
- **Data Dashboard (Tableau)**:  
   ![Tableau Dashboard Pic](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/What%20Makes%20a%20Movie%20Producer%20Successful.png)
   
   - **Revenue Trends**: Visualized key factors contributing to high-grossing films.
   - **Genre & Popularity Analysis**: Analyzed genre correlations with popularity across different demographics.
   - **Rating Distributions**: Investigated rating distributions and relationships with other variables.

  This reporting approach was replicated in PowerBI, though visualisations may differ slightly in format compared to Tableau.

## **Tools**
- **Languages**: R, Excel
- **Visualization**: Tableau, PowerBI

## **Documentation**

The **Files** folder contains:

1. **[Data Cleaning and Preparation](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/tree/main/Files/Data%20Cleaning%20and%20Preparation)**:
    - *`Data Cleaning and Preparation.Rproj`*: R Project file for data preparation.
    - *[`Movies-Data Cleaning and Preparation.R`](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Movies-Data%20Cleaning%20and%20Preparation.R)*: R script for data cleaning.
    - **Data** folder, containing:
        - *[`movies.csv`](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Data/movies.csv)*: Original dataset from Kaggle.
        - *[`movies_modified.csv`](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Data/movies_modified.csv)* and *[`movies_modified.xlsx`](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Data/movies_modified.xlsx)*: Cleaned and modified datasets.
2. **[`Movies Industry-Tableau.twb`](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Movies%20Industry-Tableau.twb)**: Tableau workbook file.
3. **[`What Makes a Movie Producer Successful.png`](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/What%20Makes%20a%20Movie%20Producer%20Successful.png)**: Infographic image located in the **Image** folder.
4. **[`what makes a movie producer successful.pbix`](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/what%20makes%20a%20movie%20producer%20successful.pbix)**: Power BI file.
