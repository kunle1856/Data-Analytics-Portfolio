# Medical Data Analysis Insights

## Abstract

1,338 patients' personal medical data, including a range of factors that impact the price of the treatments they get. The analysis's goal is to examine how various factors, such as age, gender, location, and so forth, affect the price of medical care. 


## Variables

The following variables will affect how this analysis turns out:

- Age: the principal beneficiary's age
  Teenage: 13–19; adult: 20–39 
  - Senior Adult: 60+ - Middle Age Adult: 40-59
- Sex: gender of insurance contractor,
  - Male - Female
- Body Mass Index (BMI): The ratio of body mass to height.
  - Normal: 18.5 - 24.9 - Overweight: 25.0 - 29.9 - Underweight: Below 18.5
  - Fat: More than or equal to 30.0 
- Dependents: Total number of children
- Smoker: Consuming tobacco
Region: The patient's home region inside the United States.
  Southeast, Southwest, Northeast, and Northwest
- Charges: Individual medical expenses for services rendered that are billed by health insurance


## Objective

Analyzing the influence of various variables on the price of medical treatment is the analysis's goal. The following queries are the focus of the analysis:

1. Which region has the lowest cost of medical care?
2. Which gender has the highest typical medical charges?
3. Is there correlation between the number of dependents a patient has and medical charges?
4. Is there correlation between age and medical charges?
5. Do individuals with higher BMI have higher medical charges?
6. What is the relationship between smoking and medical charges?


## Analysis

1. What region has the lowest cost of medical care?

![Charges Histogram](https://user-images.githubusercontent.com/112409778/227813514-97acd1b2-554a-4b28-a397-bf3424d2fed6.jpg)

The dataset's overall average fee is $13,270.42. Nevertheless, the dataset's charge distribution is not uniform. The histogram above shows that the average is being impacted by a right skew. A more accurate representation of the average medical price is provided by the $9,377.90 median charge. 


![Region Median Charges ](https://user-images.githubusercontent.com/112409778/227813527-8c016af7-cbef-4218-a31c-87a211c04608.jpg)

The distribution of charges throughout the dataset's four areas is also true. The median, as previously indicated, provides a more accurate picture of the average medical fee in each area. Out of all the regions in the study, the Southwest region has the lowest median charge, $8,798.59. This can be explained by the fact that the Southwest region has the fewest smokers overall (58), the fewest female smokers (21), and the second-smallest male smoker population (37). This is important since, on average, smokers pay four times as much as non-smokers do!


2. Which  gender has the highest highest typical charges?

Both the male and female charge distributions have a right skew, meaning that the average charge computation is impacted by outliers. 

![Median Charges Sex](https://user-images.githubusercontent.com/112409778/227813596-335b759e-2ef1-4b87-a8e4-2577365f2c70.jpg)

A more reliable predictor of usual charges is the median charges for each gender. According to the bar chart above, the median fee for men is $9,369.62, and the median charge for women is $9,412.96.


3. Is there correlation between the number of dependents a patient has and medical charges?

![Number of Children and Charges Scatter Plot](https://user-images.githubusercontent.com/112409778/227813660-5b866f7b-e106-4894-82db-bb04e728f5fb.jpg)

There is no linear relationship between the number of dependents and charges, as the scatter plot above shows. When a patient's number of children is compared to the expenses incurred, the correlation coefficient is 0.07, meaning that no association exists. The line of greatest fit on the scatter plot above also shows this.


4. Is there correlation between age and medical charges?

![Age and Charges Scatter Plot](https://user-images.githubusercontent.com/112409778/227813708-e345d892-2907-4b04-b49f-41ad5c887c93.jpg)

The relationship between patient charges and age is not very strong. The scatter figure above's line of best fit and correlation coefficient of 0.30 both support this. This is also reflected in the average fees for every age group. The average cost of medical care for teenagers is $8,407.35, for adults it is $10,603.65, for middle-aged adults it is $15,431.97, and for seniors it is $21,248.02. As a patient becomes older, there is a discernible trend of rising costs.

5. Do individuals with higher BMI have higher medical costs?

![Personal Medical Dashboard (2)](https://user-images.githubusercontent.com/112409778/228240332-e56641f0-ab72-493a-881e-76ea344d7e6f.jpg)

Indeed, the expense of healthcare is higher for those with higher BMIs. As seen in the accompanying line chart, average charges increase with a patient's BMI. 


6. What is the relationship between smoking and medical charges?

![Smoker and Non-Smoker Average Charge Comparison](https://user-images.githubusercontent.com/112409778/228288741-6e1fb81a-3d11-4d60-8830-7e6368f330aa.jpg)

Smoking has a negative effect on medical expenses. The above bar chart shows that the average medical cost for smokers is $32,050.23, whereas the average medical cost for non-smokers is $8,434.27. The average cost of smokers is over four times higher than that of non-smokers.

![Smoker Charges Distribution](https://user-images.githubusercontent.com/112409778/228288798-d75c2e8a-ea63-4074-971b-0d0a4c3237bf.jpg)

The above histogram illustrates the bimodality of smokers' charge distribution. The two modes represent the BMI-related subgroups. Patients with a BMI of less than 30 and patients with a BMI of more than 30 make up the two groupings. Remember that a BMI of 30 or higher is considered obese, while a BMI of less than 30 is considered non-obesity.

![Smoker Charges Not Obese Distribution](https://user-images.githubusercontent.com/112409778/228288898-2607831d-6515-4d4e-b9e0-3287ce04039e.jpg)

The above histogram exhibits a small right skew. Therefore, the median provides a more accurate picture of the average cost for a smoker with a BMI under thirty. The average cost comes to $20,167.34.

![Smoker Charges Obese Distribution](https://user-images.githubusercontent.com/112409778/228289038-4c2f6115-fc20-41c2-a619-4ea103fbb3aa.jpg)

There are very few outliers in the given histogram, which depicts an equitable distribution of charges. For smokers with a BMI over 30, the average cost is $41,557.99.



