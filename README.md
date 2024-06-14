### README

# Market Basket Analysis Project

## Introduction
This project conducts an in-depth market basket analysis using the Instacart dataset to uncover customer purchasing patterns. By leveraging Python for data preprocessing, exploration, and visualization, we aim to identify key insights that can drive business improvements, such as cross-selling strategies, personalized recommendations, and optimized inventory management.

## Datasets
The project utilizes five datasets:
1. **aisles.csv** - Information about aisles.
2. **products.csv** - Details about products including product names and their associated aisles and departments.
3. **orders.csv** - Order information, including user IDs, order sequence, and timing details.
4. **departments.csv** - Department information.
5. **order_products__prior.csv** and **order_products__train.csv** - Information about products in prior and train orders.

## Data Cleaning and Preprocessing
- Merged order products datasets with product details.
- Filtered data to include only the top 100 most frequently ordered products for a focused analysis.
- Handled missing values and ensured data consistency.

## Exploratory Data Analysis (EDA)
1. **Top 20 Products Ordered**:
   - Bar plot showcasing the most ordered products.
   - Insight: Helps identify popular products to prioritize in inventory and promotions.

2. **Order Distribution by Day of Week and Hour of Day**:
   - Bar plots displaying order distribution trends.
   - Insight: Assists in staffing and stocking strategies based on peak order times.

3. **Order Reorder Ratio**:
   - Bar plot of reorder ratios for top products.
   - Insight: Highlights customer loyalty and product popularity.

4. **Department and Aisle Analysis**:
   - Bar plots illustrating the number of orders per department and aisle.
   - Insight: Identifies high-demand departments and aisles for better space allocation and inventory management.

5. **Correlation of Products Bought Together**:
   - Heatmap showing the correlation between products bought together.
   - Insight: Reveals frequently co-purchased products, aiding in effective cross-selling and promotional bundling.

## Visualization and Insights
- **Bar Plots**: Used extensively for showing distribution and frequency of product orders, reorders, and departmental trends.
- **Heatmap**: Utilized to display the correlation of products bought together, highlighting strong co-purchase patterns.

## Business Implications
- **Cross-Selling and Personalized Recommendations**: Identifying frequently bought together products can enhance recommendation systems and cross-selling strategies.
- **Inventory Management**: Understanding demand patterns helps in optimizing stock levels and reducing the risk of stockouts.
- **Promotional Strategies**: Bundling correlated products can create attractive promotional offers, potentially increasing the average order value.
- **Operational Efficiency**: Insights into order timing and product demand can improve staffing and inventory placement strategies.

## Conclusion
This market basket analysis project provides valuable insights into customer purchasing behavior using the Instacart dataset. The findings can drive strategic business decisions, improving customer satisfaction, and operational efficiency. The visualizations and analyses offer actionable insights that can be directly implemented to enhance overall business performance.

## Requirements
- Python
- pandas
- numpy
- matplotlib
- seaborn


## Authors
This project was developed by Vibinraj D.

## Acknowledgments
Special thanks to Instacart for providing the dataset used in this analysis.
