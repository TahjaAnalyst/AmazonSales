# AmazonSales
This repo contains an amazon sales project.

## 1. Amazon Sales SQL and Power BI
SQL queries created to support the analysis of Amazon sales, with a focus on products, categories, regions, revenue, and customer satisfaction. 

Power BI used to create an interactive data visualization tool for the exploration of Amazon sales in 2022 and 2023. The data curated from both the source material and the queries from SQL allowed for deep analysis of regions, categories, and discounts. 

## 2. Description
The SQL queries are steps taken to analyze the data in detail. The queries are meant to observe the data with business questions in mind.

The Amazon Sales is a visually engaging and analytical Power BI report designed to help users explore data gathered in 2022 and 2023. The dashboard highlights revenue patterns based off of the region, category, year, and discounts. This tool is intended to be used by businesses to determine how these factors could affect a business's revenue. 

## 3.  Tech Stack
This project was built using the following tools and technologies:
* SSMS - An object explorer and query editor.
* PowerBI Desktop - Main data visualization platform used for report creation.
* Power Query- Data transformation and cleaning layer for reshaping and preparing data.
* DAX (Data Analysis Expression) - Used for calculated measures and dynamic visuals.
* Data Modeling - Relationships established among tables (Date Table, time table, area, weapons, and crime).
* File Format - .pbix for development and .png for dashboard purposes.

## 4. Data Source
Source: [Amazon Sales Dataset](https://www.kaggle.com/datasets/aliiihussain/amazon-sales-dataset)

## 5. Features / Highlights
Businesses need to understand what their data is trying to say and how the data can actually help their business. It is important to ask ourselves *"What Does It Say"* and *"What Does This Mean For The Business"*.

Product Performance: Which products and categories are driving the most sales?

Regional Performance: How does sales performance differ across regions?

Discount Effectiveness: Are higher discounts actually translating into stronger sales?

Customer Satisfaction: How do customer ratings compare among top selling products?


Goal: To create an effective tool that helps to gain business insights from products, categories, regions, and customers.


***Key Findings***

**Category Performance:**


The Beauty category generated the most revenue, quantity sold, and number of orders, despite having an average rating of less than 3 stars. 

While the category demonstrates strong sales performance, the lower average rating presents an opportunity to investigate which products are contributing to customer dissatisfaction and identify potential areas for improvement.

**Product Performance:**


The #1 selling product was a Home & Kitchen item, with a higher revenue, quantity sold, and number of orders yet its rating had an average of less than 3 stars.

The #2 selling product was a Beauty item with a significantly higher rating while generating revenue and sales close to the #1 product.

Analyzing the data, I found that the Beauty product had a wide range of discounts throughout the orders, however the amount sold did not appear to be affected by the discount. The same pattern was observed for the #1 product. Neither showed a clear relationship between the level of discount and the quantity sold.

This suggests an opportunity to test whether lower discounts could increase revenue while maintaining demand. 

**Regional Performance:**


The Middle East and North America regions were the two highest revenue regions in the dataset. In 2022 North America generated approximately 16k more revenue than the Middle East, however in 2023 the Middle East generated approximately 40k more. To investigate the difference, I compared the revenue per order and revenue per unit sold. Both regions had nearly identical revenue per unit at approximately $220 in both years. The revenue per order had similar results with North America at $662.11 versus the Middle East's $661.15 in 2022. In 2023, North America had $660.45 and the Middle East had $666.62 revenue per unit. 

With similar order and unit sales, the difference in total revenue appears to be more closely related to the number of unit sales itself, rather than the difference in average revenue per unit or order. Using comparative metrics, I was able to investigate the unexpected change in regional performance.

**Discount Effectiveness:**


Products with discounted ranges of 1-10% or 11-20% generated the most revenue and number of sales in comparison to products with no discounts or discounts above 21%. This suggests that moderate discounts were associated with stronger sales performance in the dataset, while higher discounts did not correspond to higher sales or revenue. This pattern was consistent across all categories, regions, and years, which suggests that discount level is an important factor to investigate when evaluating sales performance. 

Average product ratings were very close across all discount ranges, ranging from 2.90 to 3.05, suggesting customer ratings did not meaningfully distinguish between the discount groups.  

**Customer Satisfaction:**


While ratings did not provide significant distinction between discount groups, they determined possible potential with individual products. Analysis showed that there were some high volume products with averages of 3.0 and higher ratings with substantial discounts. While discounts may have contributed to increased sales, they also reduce revenue generated per unit sold. As a result, products could have a high number of reviews and sell a lot of units, while still generating less total revenue than products with lower sales performance but higher revenue per unit. 

A business consideration would be to reflect on products with a combination of high ratings, strong sales volume, and high discount percentages. Warranting review, these products may be demonstrating how their level of discounting could be limiting revenue potential. Reviewing these products could help determine if discounts could be optimized while maintaining sales volume and customer demand. 

**6. Key Visuals**
* KPIs (LEFT): Shows Amazon's total $32.87M in Revenue along with cards displaying the Top Selling Category, Region with Most Revenue, and Most Profitable Month. 
* Category Revenue For All Regions (TOP Bar Chart): Total Revenue for each category.
* Total Revenue by Region and Year (BOTTOM Bar Chart): Total Revenue for each region in the years 2022 and 2023.
* 2022 vs 2023 Revenue (RIGHT Line Graph): Revenue comparison for each month in the years 2022 and 2023.
* Total Sales Per Discount Type (RIGHT MIDDLE Table): Total revenue and units sold based on the range of discount provided. 
* Buttons (RIGHT MIDDLE): Buttons that take the user to pages specific to the button's description.
* TOP 5 Revenue Producing Products (BOTTOM RIGHT Table): Top 5 of the highest revenue producing products along with the rating, average discount, and units sold.

**7. Screenshot of Dashboard** 

![Dashboard Preview](https://github.com/TahjaAnalyst/AmazonSales/blob/main/AmazonDash.JPG)
