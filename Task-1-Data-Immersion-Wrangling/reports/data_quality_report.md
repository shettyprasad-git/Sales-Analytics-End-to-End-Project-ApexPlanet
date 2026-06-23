# Data Quality Report

## Project Information

**Project:** Data Immersion & Wrangling
**Internship:** ApexPlanet Data Analytics Internship
**Task:** Task 1 – Data Immersion & Wrangling
**Prepared By:** Durga Prasad

---

# 1. Executive Summary

The objective of this task was to perform data profiling, quality assessment, cleaning, validation, and transformation on the provided sales dataset. The dataset was analyzed to identify missing values, duplicate records, datatype inconsistencies, and potential quality issues before preparing an analysis-ready dataset.

The data cleaning process successfully resolved missing values, standardized date formats, validated sales calculations, and introduced a new feature to support customer segmentation.

---

# 2. Dataset Overview

| Metric         | Value                      |
| -------------- | -------------------------- |
| Total Records  | 1000                       |
| Total Columns  | 12                         |
| Date Range     | 01-Jan-2025 to 01-Jan-2026 |
| Duplicate Rows | 0                          |

### Dataset Features

The dataset contains information related to:

* Customer demographics
* Product purchases
* Sales transactions
* Product categories
* Geographic locations
* Revenue generated

### Columns Present

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

# 3. Data Quality Assessment

## Missing Values

| Column | Missing Values |
| ------ | -------------- |
| Age    | 20             |
| City   | 13             |

### Observations

* Age contained 20 missing values.
* City contained 13 missing values.
* All remaining columns contained complete records.

---

## Duplicate Analysis

### Full Row Duplicates

No fully duplicated records were identified.

| Metric         | Value |
| -------------- | ----- |
| Duplicate Rows | 0     |

---

### Duplicate Order_ID Investigation

| Metric                | Value |
| --------------------- | ----- |
| Total Records         | 1000  |
| Unique Order_IDs      | 992   |
| Duplicate Occurrences | 8     |

Investigation revealed that all duplicate records shared the same Order_ID (**ORD100050**) but belonged to different customers, dates, products, quantities, and sales values.

#### Business Observation

A single Order_ID should normally represent a unique transaction. The repeated use of Order_ID **ORD100050** across multiple customers indicates a possible data-entry or system-generated inconsistency.

#### Action Taken

The records were retained to avoid losing potentially valid transaction data. The issue was documented for business review.

---

# 4. Data Type Assessment

## Before Cleaning

| Column     | Data Type |
| ---------- | --------- |
| Order_Date | Object    |

## After Cleaning

| Column     | Data Type |
| ---------- | --------- |
| Order_Date | Datetime  |

### Action Taken

The Order_Date column was converted to datetime format to support time-series analysis and reporting.

---

# 5. Data Cleaning Process

## Missing Value Treatment

### Age

* Missing values filled using the median age.
* Missing values before cleaning: 20
* Missing values after cleaning: 0

### City

* Missing values filled using the mode city (Patna).
* Missing values before cleaning: 13
* Missing values after cleaning: 0

---

# 6. Data Validation

## Sales Validation

The following business rule was verified:

**Total_Sales = Quantity × Unit_Price**

Validation confirmed that all records satisfy the sales calculation rule.

Minor differences observed during validation were caused by floating-point precision and not actual data inconsistencies.

### Result

✅ Sales Validation Passed

---

# 7. Feature Engineering

## Age_Group Creation

A new feature named **Age_Group** was created to support customer segmentation.

| Age Range | Group      |
| --------- | ---------- |
| 0–30      | Young      |
| 31–45     | Adult      |
| 46–60     | Middle Age |
| 60+       | Senior     |

### Age Group Distribution

| Age Group  | Count |
| ---------- | ----: |
| Young      |   268 |
| Adult      |   332 |
| Middle Age |   295 |
| Senior     |   105 |

---

# 8. Outlier Analysis

Outliers were identified using the Interquartile Range (IQR) method.

## Age

| Metric            | Value |
| ----------------- | ----- |
| Outliers Detected | 0     |

No unusual age values were identified.

---

## Total_Sales

| Metric            | Value |
| ----------------- | ----- |
| Outliers Detected | 19    |

These records represent high-value sales transactions and were retained because they reflect legitimate business activity.

---

# 9. Final Dataset Status

## Before Cleaning

| Issue                          | Count |
| ------------------------------ | ----- |
| Missing Age Values             | 20    |
| Missing City Values            | 13    |
| Duplicate Order_ID Occurrences | 8     |
| Order_Date Datatype Issue      | Yes   |

---

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

# 10. Key Skills Demonstrated

* Data Profiling
* Data Cleaning
* Missing Value Treatment
* Data Validation
* Feature Engineering
* Outlier Analysis
* Python Programming
* Pandas & NumPy
* Business Data Documentation
* Data Quality Assessment

---

# 11. Conclusion

The dataset was successfully profiled, cleaned, validated, and transformed into an analysis-ready format.

Key quality issues such as missing values, datatype inconsistencies, and duplicate Order_ID usage were identified and documented. Appropriate preprocessing techniques were applied to improve data quality while preserving business information.

The final dataset is suitable for:

* Exploratory Data Analysis (EDA)
* SQL-Based Business Intelligence
* Dashboard Development
* Statistical Analysis
* Data Storytelling and Reporting

---

# Deliverables Generated

* Data Dictionary
* Dataset Profiling Notebook
* Data Cleaning Notebook
* Cleaned Dataset
* Data Quality Report

The cleaned dataset is now ready for the next phase of the project: **Exploratory Data Analysis (EDA) and Business Intelligence**.
