# Session 1 -- Homework: Exploratory Data Analysis

## Assignment Description

Perform a complete exploratory data analysis (EDA) on a dataset of your choice. The goal is to practice the pandas and matplotlib workflow from Session 1 on new data, formulate questions about the data, and answer them with code and visualizations.

You will create a Jupyter notebook that walks through the entire EDA process, from loading the data to summarizing your findings.

## Dataset Options

Choose **one** of the following datasets. All can be created inline (no internet downloads required during execution).

### Option A: California Housing (from scikit-learn)

```python
from sklearn.datasets import fetch_california_housing
import pandas as pd

data = fetch_california_housing(as_frame=True)
df = data.frame
```

8 numeric features (median income, house age, average rooms, etc.) and a target (median house value) for ~20,000 California census blocks.

### Option B: Wine Quality (create inline)

```python
from sklearn.datasets import load_wine
import pandas as pd

data = load_wine(as_frame=True)
df = data.frame
df['target_name'] = df['target'].map({0: 'class_0', 1: 'class_1', 2: 'class_2'})
```

13 chemical measurements (alcohol, malic acid, ash, etc.) for 178 wine samples across 3 cultivar classes.

### Option C: Iris (create inline)

```python
from sklearn.datasets import load_iris
import pandas as pd

data = load_iris(as_frame=True)
df = data.frame
df['species'] = df['target'].map({0: 'setosa', 1: 'versicolor', 2: 'virginica'})
```

4 measurements (sepal/petal length and width) for 150 flowers across 3 species. A classic but smaller dataset -- if you choose this one, your analysis should be more thorough to compensate for its simplicity.

## Requirements

Your notebook must include the following:

### 1. Data Inspection

- Load the dataset and display the first few rows
- Show the shape, dtypes, and basic info
- Check for missing values
- Compute summary statistics with `.describe()`

### 2. Answer These Questions (using pandas)

Answer **all four** questions below for your chosen dataset. Use code cells for the computation and markdown cells to write your answer in plain language.

**California Housing:**
1. What is the median house value across the entire dataset? What are the 25th and 75th percentiles?
2. Which feature has the highest correlation with the target (median house value)?
3. How many census blocks have a median income above 5.0? What percentage of the total is that?
4. What is the average number of rooms for the top 10% most expensive houses vs the bottom 10%?

**Wine Quality:**
1. Which chemical feature has the largest range (max - min)?
2. What is the mean alcohol content for each wine class?
3. Which two features are most correlated with each other (excluding the target)?
4. How many samples are in each class? Is the dataset balanced?

**Iris:**
1. Which measurement (sepal/petal length or width) varies the most across species?
2. What is the mean petal length for each species?
3. Which two features are most correlated with each other?
4. Is there a feature that can perfectly (or nearly perfectly) separate one species from the other two? Which one and how?

### 3. Visualizations

Create **at least 3 different types** of plots. Choose from:

- Histograms (distribution of one or more features)
- Scatter plots (relationship between two features, optionally colored by category)
- Box plots (compare distributions across groups)
- Correlation heatmap (using `plt.imshow()` on `df.corr()`)
- Bar charts (e.g., counts per category, mean values per group)

Each plot must have:
- A descriptive title
- Labeled axes
- A legend (if applicable)

### 4. Summary of Findings

Write a markdown cell at the end of the notebook with 3-5 bullet points summarizing what you learned from the data. What patterns did you find? What surprised you? What would you want to investigate further?

### 5. Git

Commit and push your work to your student repository.

## Deliverable

Submit your completed notebook at the following path in your student repository:

```
homework/session-01/homework.ipynb
```

Commit and push to `main`. That is the submission -- no pull request needed.

## Rubric

This homework is graded **complete/incomplete**.

| Criterion | Complete | Incomplete |
|-----------|----------|------------|
| Data inspection | All four steps present (head, info/shape, missing values, describe) | Missing two or more steps |
| Questions answered | All 4 questions answered with code AND written explanation | Fewer than 3 answered, or code without explanation |
| Visualizations | 3+ different plot types, all with titles and axis labels | Fewer than 3 plots, or missing titles/labels |
| Summary | 3-5 bullet points with genuine observations | Missing, or single generic sentence |
| Git | Notebook committed and pushed to correct path | Not in the repo or wrong path |

**Note:** The bar is "did you do the work thoughtfully?" not "is your analysis perfect?" Incomplete analyses with honest observations are better than polished but shallow ones.

## Deadline

**Before Session 3: Monday, March 9, 2026, 17:30**

You have one full week. If you need an extension, use one of your 3 wildcards (notify the instructor before the deadline).

