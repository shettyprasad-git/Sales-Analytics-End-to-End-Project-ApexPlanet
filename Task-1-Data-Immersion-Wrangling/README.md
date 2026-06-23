# ApexPlanet Data Analytics Internship

## Task 1: Data Immersion & Wrangling

### Project Overview

This project was completed as part of the **ApexPlanet Data Analytics Internship – Task 1: Data Immersion & Wrangling**.

The objective of this task was to understand the dataset, assess data quality, identify issues, clean and transform the data, and prepare an analysis-ready dataset for future business intelligence and analytics tasks.

The project includes data profiling, missing value treatment, duplicate investigation, data validation, feature engineering, and dataset documentation.

---

# Dataset Overview

| Metric        | Value                      |
| ------------- | -------------------------- |
| Total Records | 1000                       |
| Total Columns | 12                         |
| Time Period   | 01-Jan-2025 to 01-Jan-2026 |

### Dataset Features

The dataset contains information related to:

* Customer Demographics
* Product Purchases
* Sales Transactions
* Product Categories
* Geographic Locations
* Revenue Generation

### Columns Included

* Order_ID
* Order_Date
* Customer_ID
* Customer_Name
* Age
* Gender
* City
* Product
* Category
* Quantity
* Unit_Price
* Total_Sales

---

# Project Structure

```text
01_Data_Immersion_Wrangling
│
├── data
│   ├── raw
│   │   └── ApexPlanet_DataAnalytics_Dataset.xlsx
│   │
│   └── processed
│       └── cleaned_dataset.csv
│
├── notebooks
│   ├── 01_data_profiling.ipynb
│   └── 02_data_cleaning.ipynb
│
├── reports
│   ├── DataDictionary.xlsx
│   └── data_quality_report.md
│
└── README.md
```

---

# Data Profiling Summary

Initial profiling was performed to understand dataset structure and identify data quality issues.

## Missing Values

| Column | Missing Values |
| ------ | -------------- |
| Age    | 20             |
| City   | 13             |

### Observations

* Age contained 20 missing values.
* City contained 13 missing values.
* All other columns were complete.

---

## Duplicate Analysis

### Full Row Duplicates

* No completely duplicated rows were found.

### Duplicate Order_ID Investigation

| Metric                | Value |
| --------------------- | ----- |
| Total Records         | 1000  |
| Unique Order_IDs      | 992   |
| Duplicate Occurrences | 8     |

Investigation revealed that all duplicate records shared the same Order_ID (**ORD100050**) but belonged to different customers, products, dates, and sales amounts.

### Business Observation

The repeated use of the same Order_ID across multiple customers indicates a possible data-entry or system-generated inconsistency.

### Action Taken

The records were retained to avoid loss of valid transaction information.

---

# Data Cleaning Process

The following cleaning activities were performed:

### Date Conversion

* Converted Order_Date from object datatype to datetime format.

### Missing Value Treatment

#### Age

* Strategy Used: Median Imputation
* Missing Values Before: 20
* Missing Values After: 0

#### City

* Strategy Used: Mode Imputation (Patna)
* Missing Values Before: 13
* Missing Values After: 0

---

# Data Validation

### Sales Validation

The following business rule was verified:

```text
Total_Sales = Quantity × Unit_Price
```

Validation confirmed that all records satisfy the sales calculation rule.

Minor validation differences were caused by floating-point precision and not actual data inconsistencies.

✅ Sales Validation Passed

---

# Feature Engineering

## Age_Group Creation

A new feature named **Age_Group** was created to support customer segmentation.

| Age Range | Group      |
| --------- | ---------- |
| 0–30      | Young      |
| 31–45     | Adult      |
| 46–60     | Middle Age |
| 60+       | Senior     |

### Distribution

| Age Group  | Count |
| ---------- | ----: |
| Young      |   268 |
| Adult      |   332 |
| Middle Age |   295 |
| Senior     |   105 |

---

# Outlier Analysis

Outliers were identified using the Interquartile Range (IQR) method.

## Age

| Metric            | Value |
| ----------------- | ----- |
| Outliers Detected | 0     |

No unusual age values were identified.

## Total_Sales

| Metric            | Value |
| ----------------- | ----- |
| Outliers Detected | 19    |

These records represent high-value sales transactions and were retained because they reflect legitimate business activity.

---

# Results

## Before Cleaning

* Missing Age values: 20
* Missing City values: 13
* Duplicate Order_ID issue identified
* Order_Date stored as object datatype

## After Cleaning

| Metric                     | Status |
| -------------------------- | ------ |
| Missing Age Values         | 0      |
| Missing City Values        | 0      |
| Order_Date Converted       | Yes    |
| Sales Validation Passed    | Yes    |
| Age_Group Created          | Yes    |
| Dataset Ready for Analysis | Yes    |

---

# Tools & Technologies Used

* Python
* Pandas
* NumPy
* Jupyter Notebook
* GitHub

---

# Key Skills Demonstrated

* Data Profiling
* Data Cleaning
* Missing Value Treatment
* Data Validation
* Feature Engineering
* Outlier Analysis
* Business Data Documentation
* Data Quality Assessment

---

# Deliverables

* Data Dictionary
* Dataset Profiling Notebook
* Data Cleaning Notebook
* Cleaned Dataset
* Data Quality Report

---

# Conclusion

The dataset was successfully profiled, cleaned, validated, and transformed into an analysis-ready format.

Key issues such as missing values, datatype inconsistencies, and duplicate Order_ID usage were identified and documented. Appropriate preprocessing techniques were applied to improve data quality while preserving business information.

The final dataset is suitable for:

* Exploratory Data Analysis (EDA)
* SQL-Based Business Intelligence
* Dashboard Development
* Statistical Analysis
* Data Storytelling and Reporting

This cleaned dataset will be used in the next phase of the internship for Exploratory Data Analysis and Business Intelligence.
