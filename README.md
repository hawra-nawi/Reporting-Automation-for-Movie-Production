## **Overview**

Automated reporting and visualizations for movie production data to identify key factors influencing film success, including net profit, ratings, genres, and release timing. This project features an end-to-end data processing pipeline designed to streamline data preparation and uncover trends, supporting informed decision-making within the film industry.

## **Approach**

- **Data Processing Pipeline**: Built in R (using `dplyr`, `tidyr`, and `stringr`), reducing processing time by 50% and optimizing data preparation for **Tableau** and **PowerBI** dashboards.
- **Data Dashboard (Tableau)**:  
   ![Design Capture](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/Paper%20Landscape%20and%20Proposal%20Capture.png)
   
   - **Revenue Trends**: Visualized key factors contributing to high-grossing films.
   - **Genre & Popularity Analysis**: Analyzed genre correlations with popularity across different demographics.
   - **Rating Distributions**: Investigated rating distributions and relationships with other variables.

  This reporting approach was replicated in PowerBI, though visualizations may differ slightly in format compared to Tableau.

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

---

This version highlights your project's efficiency, tools, and organized documentation, making it easy to navigate and understand. Let me know if there are any further tweaks you’d like!














# The Successfulness of Movie Production - Data Visualization (Tableau & PowerBI)

## **Project Overview:**

- Objective: "*Data visualization is a collection of methods that use visual representations to explore, make sense of, and communicate quantitative data*" - Stephen Few
    - A model *of data transformed into visual form, extracted from (Card, 2008):*

![Data Model](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/Data%20Visualisation%20Model.png)

- This project explores the factors contributing to the success of movie productions, including net profit, movie scores, genre, and release dates across different countries.
- Through data visualization and infographic story telling, we aim to provide insights into the following questions:
    
    **Q1:** What is the net profit across the top 5 movie production companies, and does the release date of the movie impact this?
    
    **Q2:** Is there a relationship between movie genre and the top 5 movie productions across the US, UK, and Europe based on movie scores?
    

## **Paper Landscape and Proposal:**

- The paper landscape served as a planning tool for designing and documenting visualizations, ensuring efficient workflow, error reduction, and cost savings.
- Details of the Paper Landscape and Proposal (including data information) are available **[HERE](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Initial%20Design%20Paper%20Landscape%20and%20Proposal.pdf)**.

![Design Capture](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/Paper%20Landscape%20and%20Proposal%20Capture.png)

## **Tableau Dashboards:**

### **Implementation Improvements**

- **Top 5 Production Companies:** limited the displayed information to the top 5 production companies. This design choice enhances user experience by allowing data to fit neatly within the dashboard's space. Users can easily perceive and digest information without the need for scrolling or zooming, aligning with Shneiderman's methodology (Shneiderman, 1996).
- **Enhanced Line Graph:** The line graph has been improved to display net profit trends over months more effectively. This enhancement aligns with principles from both Bertin's image theory and Gestalt's principle. Colored lines highlight continuity and common fate, enhancing data interpretation (Bertin, 2000; Chapman, 2022).
- **Utilization of Box Plot and Grouped Bar Chart:** We incorporated a box plot and grouped bar chart to enhance data clarity.
- **[Full Data Preparation and Implementation Instructions](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Data%20Preparation%20and%20Tableau%20Implementation.pdf)**

![Tableau Dashboard Pic](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/What%20Makes%20a%20Movie%20Producer%20Successful.png)

### **How to Use:**

- The dashboards support global linking and brushing between different graphs, enabling users to explore data relationships effectively.
- For example:
    - The line graph, treemap, and the box plot are linked through the company category.
    - The treemap and the grouped bar plot are linked through the score and genre categories.

## **PowerBI Dashboard:**

- Power BI was used for a comparative analysis of the data representation.
- However, it has limitations in dividing trend line graphs into segments and applying filters to grouped bar plots.
- Visualizations in Power BI may not be as comprehensive as Tableau.

![PowerBI Dashboard Image](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/PowerBI.png)

## **Walkthrough**

### **Data Preparation:**

- Used R Project "Data Cleaning and Preparation" and "Movies-Data Cleaning and Preparation.R" for dataset cleaning.
- Started with the "movies.csv" dataset from Kaggle (https://www.kaggle.com/danielgrijalvas/movies).
- Full detail can be found **[HERE](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Data%20Preparation%20and%20Tableau%20Implementation.pdf)**.

### **Visual Creation**

- Following Stephen Few's data visualization definition, the focus was on transforming raw data into compelling visuals. Key considerations included:
    - **Shneiderman’s TTT Methodology:** This guided the choice of plot types (Shneiderman, 1996).
    - **Gestalt's Principles and Bertin's Image Theory:** Utilised these principles to enhance viewers' ability to perceive information, employing color, shapes, and object orientation (Bertin, 2000; Chapman, 2022).

### **Answering Question 1**

- In response to **Q1**, the line graph revealed that summer movie releases consistently generated higher revenue.
- **Twentieth Century Fox** had the highest median net income in the boxplot, although outliers introduced some inaccuracies.

### **Answering Question 2**

- Addressing **Q2**, the TreeMap and grouped bar plot confirmed a strong relationship between movie genre and production companies.
- **Paramount Pictures** specialized in drama, while **Warner Bros.** produced more action films.

### **Interactive Features**

- Thes visualisations offered interactivity through global linking and brushing, allowing users to explore data relationships effectively.
- For instance, users can easily compare different production companies.
- Example: Comparing Columbia Pictures with Twentieth Century Fox:
    - Linking and brushing across three plots.
    - Highlights Twentieth Century Fox's highest net income and its production focus on action and comedy movies.

![Interactive Features e.g.](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/Interactive%20Features.png)

## **Conclusion and Reflection**

- Data visualization is essential for conveying large complex data effectively.
- Tableau and Power BI are valuable tools for decision-making.
- Tableau's advantages include filtering and global brushing, but a few little limitations led to design changes.

## **Appendix**

In the attached appendix, you'll find a folder named "Files" containing:

1. **[Data Cleaning and Preparation Folder](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/tree/main/Files/Data%20Cleaning%20and%20Preparation):**
    - *'Data Cleaning and Preparation.Rproj’*: R Project for data preparation.
    - *[‘Movies-Data Cleaning and Preparation.R’](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Movies-Data%20Cleaning%20and%20Preparation.R)*: R file for data cleaning.
    - *‘Data’* folder, containing:
        - *[‘movies.csv’](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Data/movies.csv)*: Original data from Kaggle.
        - *[‘movies_modified.csv’](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Data/movies_modified.csv)* and *[‘movies_modified.xlsx’](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Data%20Cleaning%20and%20Preparation/Data/movies_modified.xlsx)*: Modified data after cleaning.
2. *‘Movies Industry-Tableau.twb’*: [Tableau file](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/Movies%20Industry-Tableau.twb).
3. *‘What Makes a Movie Producer Successful.png’*: Infographic images (also in the **[Image](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Images/What%20Makes%20a%20Movie%20Producer%20Successful.png)** folder).
4. *‘what makes a movie producer successful.pbix’*: [Power BI file](https://github.com/hawra-nawi/Movie_Production_Data_Visualisation/blob/main/Files/what%20makes%20a%20movie%20producer%20successful.pbix).

## **Reference**

1. Bertin, J. (2000) ‘Matrix theory of graphics’, *Information Design Journal*, 10(1), pp. 5–19. doi:10.1075/idj.10.1.04ber.
2. Card, S. (2008) ‘Information Visualization’, in, pp. 509–543.
3. Chapman, C. (2022) *Exploring the Gestalt Principles of Design*, *Toptal Design Blog*. Available at: **https://www.toptal.com/designers/ui/gestalt-principles-of-design** (Accessed: 11 April 2022).
4. Few, S. (2017) ‘Visual Business Intelligence – What Is Data Visualization?’, 4 May. Available at: **https://www.perceptualedge.com/blog/?p=2636** (Accessed: 26 April 2022).
5. Shneiderman, B. (1996) ‘The eyes have it: a task by data type taxonomy for information visualizations’, in *Proceedings 1996 IEEE Symposium on Visual Languages*. *Proceedings 1996 IEEE Symposium on Visual Languages*, pp. 336–343. doi:10.1109/VL.1996.545307.
