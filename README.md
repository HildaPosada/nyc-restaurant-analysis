# NYC Restaurant Analysis - End-to-End Data Pipeline

## Project Overview
A complete data analysis pipeline demonstrating web scraping, database management, and data visualization skills. This project analyzes NYC restaurant data from OpenTable to uncover insights about cuisine distribution, quality ratings, and geographic patterns.

**🔗 [View Live Dashboard](https://public.tableau.com/app/profile/hilda.posada/viz/NYCRestaurantAnalysis-End-to-EndDataPipeline/NYCRestaurantAnalysis?publish=yes)**

## 🎯 Project Goals
- Build an end-to-end data pipeline from collection to visualization
- Demonstrate proficiency with industry-standard data tools
- Extract actionable insights from real restaurant data
- Create a portfolio piece showcasing technical and analytical skills

## 🛠️ Tech Stack
- **Data Collection**: Octoparse (web scraping)
- **Database**: SQLite Online
- **Data Processing**: SQL, Python (pandas)
- **Visualization**: Tableau Public
- **Development**: GitHub, macOS

## 📊 Key Findings
- **83% Exceptional Ratings**: 13 out of 17 restaurants rated as "Exceptional"
- **Contemporary American Dominance**: Most common cuisine type (3 restaurants)
- **Geographic Diversity**: Restaurants span 12+ NYC neighborhoods
- **Quality Concentration**: Chelsea leads with 3 high-rated establishments
- **Average Rating**: 4.88/5.0 across all restaurants

## 🔄 Data Pipeline Process

### 1. Data Collection (Octoparse)
- **Source**: OpenTable restaurant listings
- **Method**: Visual web scraping with Octoparse
- **Scope**: 17 NYC restaurants
- **Fields**: Name, Cuisine Type, Rating, Location

### 2. Data Storage & Processing (SQLite)
- **Database Schema**: Normalized restaurant table
- **Data Cleaning**: Standardized cuisine categories and locations
- **Rating Conversion**: Text ratings to numeric scale (Exceptional=5.0, Awesome=4.5)
- **Quality Assurance**: Removed duplicates and null values

### 3. Data Analysis (SQL)
```sql
-- Example: Top cuisines by restaurant count
SELECT cuisine_type, COUNT(*) as restaurant_count
FROM restaurants 
GROUP BY cuisine_type 
ORDER BY restaurant_count DESC;
```

### 4. Visualization (Tableau Public)
- **4 Interactive Charts**: Cuisine distribution, rating analysis, geographic breakdown, restaurant directory
- **Dashboard Design**: Clean, professional layout with filtering capabilities
- **Color Coding**: Intuitive green/orange scheme for rating categories

## 📈 Dashboard Components

1. **Cuisine Distribution Chart**
   - Bar chart showing restaurant count by cuisine type
   - Highlights Contemporary American as leading category

2. **Rating Distribution Analysis**
   - Horizontal bar chart of quality ratings
   - Demonstrates high overall quality (83% exceptional)

3. **Geographic Analysis**
   - Restaurant distribution across NYC neighborhoods
   - Shows market concentration in key areas

4. **Restaurant Directory**
   - Detailed table with cuisine and rating information
   - Color-coded by rating category for quick reference

## 🎯 Business Insights

**Market Opportunities:**
- High concentration of exceptional restaurants suggests quality-focused market
- Contemporary American cuisine dominance indicates potential for diversification
- Geographic spread shows untapped neighborhood opportunities

**Quality Patterns:**
- Consistent high ratings suggest effective quality control
- Limited "Awesome" tier restaurants indicate room for mid-tier growth

## 🚀 Skills Demonstrated

**Technical Skills:**
- Web scraping and data collection
- Database design and SQL querying
- Data cleaning and preprocessing  
- Statistical analysis and visualization
- Dashboard design and storytelling

**Business Skills:**
- Market research and competitive analysis
- Data-driven insight generation
- Executive-level reporting and presentation

## 📁 Project Structure
```
restaurant-analysis/
├── data/
│   ├── raw/restaurant_reservation_data.csv
│   ├── processed/restaurant_analysis.csv
│   └── database/restaurant_analysis.db
├── sql/
│   ├── schema.sql
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
├── docs/
│   ├── data_dictionary.md
│   └── methodology.md
└── README.md
```

## 🔍 Data Dictionary

| Column | Type | Description |
|--------|------|-------------|
| name | TEXT | Restaurant name |
| cuisine_type | TEXT | Primary cuisine category |
| rating_text | TEXT | OpenTable rating (Exceptional/Awesome) |
| rating_numeric | REAL | Numeric rating scale (4.5-5.0) |
| location | TEXT | NYC neighborhood |
| scraped_date | TEXT | Data collection timestamp |

## 🚦 Getting Started

### Prerequisites
- Octoparse (free version)
- SQLite Online access
- Tableau Public account

### Running the Analysis
1. **Data Collection**: Use Octoparse to scrape OpenTable listings
2. **Database Setup**: Import data to SQLite Online using provided schema
3. **Analysis**: Execute SQL queries for data exploration
4. **Visualization**: Connect Tableau to database and build dashboard

## 📊 Future Enhancements
- **Expand Dataset**: Include pricing, reviews, and ratings over time
- **Advanced Analytics**: Sentiment analysis of customer reviews
- **Predictive Modeling**: Restaurant success prediction algorithms
- **Real-time Updates**: Automated data refresh pipeline
- **Mobile Dashboard**: Responsive design for mobile viewing

## 🤝 Contributing
This project demonstrates individual data analysis capabilities. For questions or collaboration opportunities, please reach out via [LinkedIn]([your-linkedin-url](https://www.linkedin.com/in/hildaposada/)).

## 📝 License
This project is for portfolio demonstration purposes. Data sourced from publicly available OpenTable listings.

---

**Author**: Hilda Posada  
**Project Type**: Data Analysis Portfolio Project  
**Completion Date**: September 2025  
**Tools**: Octoparse, SQLite, Tableau, SQL
