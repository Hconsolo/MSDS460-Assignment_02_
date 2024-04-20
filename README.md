# MSDS460-Assignment_02_
Network Models---Project Management (Spring 2024)


# MSDS460-Assignment_02_
Network Models---Project Management (Spring 2024)

<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Hconsolo/MSDS460-Assignment_01_">
    <img src="002. Pictures Paper/Northwestern_Wildcats_logo.svg" alt="Logo" width="80" height="80">
  </a>
  <h3 align="center">Northwestern University</h3>
  <h3 align="center">MSDS 460-DL : Decision Analytics</h3>
  <h3 align="center">ASSIGNMENT 1: Linear Programming Example</h3>
  <h4 align="center">The Diet Problem Revisited (Spring 2024)</h4>
  <h4 align="center">April 16, 2023</h4>
  <h4 align="center">Humberto Consolo Holanda</h4>

</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#Contact">Contact</a></li>
    <li><a href="#Introduction">Introduction</a></li>
    <li><a href="#Method">Method</a></li>
    <li><a href="#Results">Results</a></li>
    <li><a href="#Conclusion">Conclusion</a></li>
    <li><a href="#Reference">Reference</a></li>
  </ol>
</details>

<!-- CONTACT -->
## Contact

Humberto Consolo Holanda - [https://www.linkedin.com/in/hconsolo](https://www.linkedin.com/in/hconsolo) - humbertoconsoloholanda2025@u.northwestern.edu

Project Link: [https://github.com/Hconsolo/MSDS460-Assignment_01_](https://github.com/Hconsolo/MSDS460-Assignment_01_)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ABOUT THE PROJECT -->
## Introduction

This assignment will cover the application of linear programming, a mathematical technique, to solve a network model for optimizing a project's time-cost trade-off using the critical path method (CPM). A network used to represent a project is called a project network, consisting of nodes and arcs, containing three essential pieces of information to describe a project: activities, precedence relationships, and time information in terms of duration of each activity and when it is done (start and end time). In this assignment, we will use the activity-on-node (AON) notation, which is more accessible for inexperienced users. The goal is to determine the critical path for three scenarios: best case, expected, worst case. We have provided code to calculate the critical path for those scenarios. Additionally, we will provide some brief information about crashing activities, although the paper's objective is to explore only the critical path. Project crashing is a schedule compression technique in which you bring in additional resources to complete two tasks simultaneously. The Project Management Body of Knowledge (PMBOK® Guide) defines the crashing technique as a way to shorten any project schedule for the least incremental cost.

Our project will use Yelp data of restaurants located in Marlborough, Massachusetts, to build an app that directed to the population of Marlborough and nearby cities, including Berlin, Hudson, Sudbury, Framingham, Southborough, and Northborough, totaling about 173 thousand people. We will update the list of restaurants monthly, while Yelp reviews, the lifeblood of our app, will be updated daily. To access large quantities of Yelp data, we will secure a contract with GraphQL API, underscoring the importance of this data source in our project.

We will use the following tools to develop the app:
- Front-end development: Alpine.js and Tailwind
- Backend: GraphQL API and a Go web and database server
- Data scientist: Go, Python, or R for recommender system analytics on the backend, with persistent storage provided by PostgreSQL, EdgeDB, or PocketBase
- Data engineering aspect of our project, a critical component, will be hosted on a major cloud platform such as Amazon Web Services (AWS), Microsoft Azure, or Google Cloud Platform (GCP). This strategic decision ensures the scalability and reliability of our project, instilling confidence in its success.

The project plan for the restaurant recommendation application has been updated to include potential features and technical requirements. Our app will offer a range of unique features, such as browsing menus, online ordering, table reservations, loyalty programs, push notifications, reviews, and social sharing. Additionally, the app will be integrated with other platforms and will use an advanced machine-learning recommendation engine to provide personalized recommendations. It will store user preferences and order history, and restaurant owners will be able to post marketing content. The app will also store information on over 100 and less than 1000 restaurants in Marlborough. It will be scalable to accommodate potential increases in operations and support up to 1000 users. External data will consist of monthly updated Yelp reviews accessed using GraphQL API. A detailed list of these features and requirements, along with the associated development time required by a professional, is provided in the table 01.

**Table 01: Daily nutrient constraints for the diet problem together with important food items to consider.**

|    | taskID   | task                         | predecessorTaskIDs     |   bestCaseHours | expectedHours   |   worstCaseHours | projectManager   | frontendDeveloper   | backendDeveloper   | dataScientist   | dataEngineer   |   Rate_Hour |   Quantity_People |   Total_Costs |   PM_Costs |   Dev_Team_Costs |   Maximum Reduction |   Crashing |   Crash_Cost_Hour |
|---:|:---------|:-----------------------------|:-----------------------|----------------:|:----------------|-----------------:|:-----------------|:--------------------|:-------------------|:----------------|:---------------|------------:|------------------:|--------------:|-----------:|-----------------:|--------------------:|-----------:|------------------:|
|  0 | A        | Describe product             |                        |           20    | 20              |             20   | 1                |                     |                    |                 |                |          60 |                 1 |          1200 |       1200 |                0 |                5    |       1800 |               360 |
|  1 | B        | Develop marketing strategy   |                        |           40    | 40              |             40   | 1                |                     |                    |                 |                |          60 |                 1 |          2400 |       2400 |                0 |               10    |       3600 |               360 |
|  2 | C        | Design brochure              | A                      |           20    | 20              |             20   | 1                |                     |                    |                 |                |          60 |                 1 |          1200 |       1200 |                0 |                5    |       1800 |               360 |
|  3 | D        | Develop product  prototype   |                        |            0    |                 |              0   |                  |                     |                    |                 |                |          60 |                 0 |             0 |          0 |                0 |                0    |          0 |                 0 |
|  4 | D1       | Requirements analysis        | A                      |           40    | 40              |             40   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |         12000 |       2400 |             9600 |               10    |       3600 |               360 |
|  5 | D2       | Software design              | D1                     |           40    | 40              |             40   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |         12000 |       2400 |             9600 |               10    |       3600 |               360 |
|  6 | D3       | System design                | D1                     |           40    | 40              |             40   | 1                |                     | 1                  |                 | 1              |          60 |                 3 |          7200 |       2400 |             4800 |               10    |       3600 |               360 |
|  7 | D4.0     | Begin Code                   | D2, D3                 |            0    | 0               |              0   |                  |                     |                    |                 |                |          60 |                 0 |             0 |          0 |                0 |                0    |          0 |                 0 |
|  8 | D4.1     | Coding - Front-end dev       | D4.0                   |          112.5  | 150             |            300   |                  | 1                   |                    |                 |                |          60 |                 1 |          9000 |          0 |             9000 |               37.5  |      27000 |               720 |
|  9 | D4.2     | Coding - Back-end dev        | D4.0                   |          180    | 180             |            180   |                  |                     | 1                  |                 |                |          60 |                 1 |         10800 |          0 |            10800 |               45    |      16200 |               360 |
| 10 | D4.3     | Coding - Data Scientist      | D4.0                   |           60    | 80              |            120   |                  |                     |                    | 1               |                |          60 |                 1 |          4800 |          0 |             4800 |               20    |      10800 |               540 |
| 11 | D4.4     | Coding - Data Engineer       | D4.0                   |          160    | 160             |            160   |                  |                     |                    |                 | 1              |          60 |                 1 |          9600 |          0 |             9600 |               40    |      14400 |               360 |
| 12 | D4.5     | End Code                     | D4.1, D4.2, D4.3, D4.4 |            0    | 0               |              0   |                  |                     |                    |                 |                |          60 |                 0 |             0 |          0 |                0 |                0    |          0 |                 0 |
| 13 | D5       | Write documentation          | D4.5                   |           20    | 20              |             20   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |          6000 |       1200 |             4800 |                5    |       1800 |               360 |
| 14 | D6       | Unit testing                 | D5                     |           30    | 40              |             80   |                  | 1                   | 1                  |                 | 1              |          60 |                 3 |          7200 |          0 |             7200 |               10    |       7200 |               720 |
| 15 | D7       | System testing               | D6                     |           30    | 40              |             80   | 1                | 1                   | 1                  |                 | 1              |          60 |                 4 |          9600 |       2400 |             7200 |               10    |       7200 |               720 |
| 16 | D8       | Package deliverables         | D5, D7                 |           20    | 20              |             30   | 1                | 1                   | 1                  | 1               | 1              |          60 |                 5 |          6000 |       1200 |             4800 |                5    |       2700 |               540 |
| 17 | E        | Survey potential market      | B, C                   |           22.5  | 30              |             45   | 1                |                     |                    |                 |                |          60 |                 1 |          1800 |       1800 |                0 |                7.5  |       4050 |               540 |
| 18 | F        | Develop pricing plan         | D8, E                  |           11.25 | 15              |             22.5 | 1                |                     |                    |                 |                |          60 |                 1 |           900 |        900 |                0 |                3.75 |       2025 |               540 |
| 19 | G        | Develop implementation  plan | A, D8                  |           22.5  | 30              |             45   | 1                |                     |                    |                 |                |          60 |                 1 |          1800 |       1800 |                0 |                7.5  |       4050 |               540 |
| 20 | H        | Write client proposal        | F, G                   |           11.25 | 15              |             22.5 | 1                |                     |                    |                 |                |          60 |                 1 |           900 |        900 |                0 |                3.75 |       2025 |               540 |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Method

For this task, we employed Python and the following third part libraries to help with basic data handling tasks and to solve the the LP problem.

* Pandas - Data Wrangling and Processing
* Matplotlib & Seaborn - Data Visualization
* PulP - Provides a modeling framework and LP optimization tool

We have collected information on the nutritional value of five meals that are easily available online. These meals are Kraft Mac & Cheese, Amy's Thai Pad Thai, Fresh Express Chopped Caesar Salad Kit, Spinach Scramble, Salmon, Rice, and Broccoli. To ensure that all the necessary nutrients are covered, we have also included milk as a sixth meal option to be consumed during the day, since it is cheap and provides calcium, vitamin D, and potassium (Dietary Guidelines for Americans 2020). We chose pre-packaged and easy-to-prepare meals that require no more than five ingredients or have ingredients readily available in the package. We obtained the prices and nutritional information from Mariano's website (2024), and Table 02 summarizes this information along with the pre-packaged meal prices or the pro-rated cost per meal. The prices do not include any costs associated with food preparation, such as utility costs or labor. For the recipes that required preparation, we calculate the prorated costs and nutritional content based on the key ingredients based on the recipes from online websites. On the repository of this assignment one can find the nutritional values on a table, files containing the nutrition information and prices from Mariano’s website.

**Table 02: Nutrition facts and prices for the meal options per serving.**

| Food Item (meal)                       |   Price ($) |   Energy (calories) |   Sodium (mg) |   Protein (g) |   Vitamin D (mcg) |   Calcium (mg) |   Iron (mg) |   Potassium (mg) |
|:---------------------------------------|------------:|--------------------:|--------------:|--------------:|------------------:|---------------:|------------:|-----------------:|
| Kraft Mac & Cheese                     |        0.46 |              250    |        560    |          9    |               0   |         110    |        2.5  |           330    |
| Amy's Thai Pad Thai                    |        6.79 |              410    |        760    |         12    |               0   |          90    |        3.9  |           360    |
| Fresh Express Chopped Caesar Salad Kit |        1.8  |              160    |        310    |          3    |               0   |          90    |        0.9  |           190    |
| Spinach Scramble                       |        1.16 |              161.67 |        458.17 |         13.08 |               2   |          86.68 |        2.65 |           351.42 |
| Salmon, Rice, and Broccolis            |        3.83 |              322.5  |        549.25 |         27.5  |              12.3 |          40.75 |        1.15 |           618.5  |
| Fat Free Skim Milk                     |        0.46 |               80    |        120    |          8    |             100   |         300    |        0    |           390    |

We optimized the problem using three different sets of constraints. These are the models we used:

1. Model 01: Only the constraints listed in Table 01 were used.
2. Model 02: We used the constraints in Table 01 and added a requirement for at least one serving per week (applicable to all meals).
3. Model 03: We used the constraints in Table 01, which required at least one serving of meal per week and set a maximum limit of 28 servings per week (to promote a diverse diet).

To convert this problem to the standard form, we used simple mathematical transformations to convert the minimization problem into a maximization problem as per Camarena (2024). Below is the standard formulation of the problem.

```{python}
\* Diet_Problem_Standard *\
Maximize
OBJ: - 6.79 Amy's_Thai_Pad_Thai - 0.463333333333 Fat_Free_Skim_Milk
 - 1.796 Fresh_Express_Chopped_Caesar_Salad_Kit
 - 0.463333333333 Kraft_Mac_&_Cheese
 - 3.8313953666 Salmon,_Rice,_and_Broccolis - 1.16026357773 Spinach_Scramble
Subject To
Calcium_(mg): - 90 Amy's_Thai_Pad_Thai - 300 Fat_Free_Skim_Milk
 - 90 Fresh_Express_Chopped_Caesar_Salad_Kit - 110 Kraft_Mac_&_Cheese
 - 40.75 Salmon,_Rice,_and_Broccolis - 86.6752916667 Spinach_Scramble <= 9100
Energy_(kcal): - 410 Amy's_Thai_Pad_Thai - 80 Fat_Free_Skim_Milk
 - 160 Fresh_Express_Chopped_Caesar_Salad_Kit - 250 Kraft_Mac_&_Cheese
 - 322.5 Salmon,_Rice,_and_Broccolis - 161.666666667 Spinach_Scramble <= 14000
Iron_(mg): - 3.9 Amy's_Thai_Pad_Thai
 - 0.9 Fresh_Express_Chopped_Caesar_Salad_Kit - 2.5 Kraft_Mac_&_Cheese
 - 1.15 Salmon,_Rice,_and_Broccolis - 2.64541666667 Spinach_Scramble <= 126
Potassium_(mg): - 360 Amy's_Thai_Pad_Thai - 390 Fat_Free_Skim_Milk
 - 190 Fresh_Express_Chopped_Caesar_Salad_Kit - 330 Kraft_Mac_&_Cheese
 - 618.5 Salmon,_Rice,_and_Broccolis - 351.416666667 Spinach_Scramble <= 32900
Protein_(g): - 12 Amy's_Thai_Pad_Thai - 8 Fat_Free_Skim_Milk
 - 3 Fresh_Express_Chopped_Caesar_Salad_Kit - 9 Kraft_Mac_&_Cheese
 - 27.5 Salmon,_Rice,_and_Broccolis - 13.0791666667 Spinach_Scramble <= 350
Sodium_(mg): - 760 Amy's_Thai_Pad_Thai - 120 Fat_Free_Skim_Milk
 - 310 Fresh_Express_Chopped_Caesar_Salad_Kit - 560 Kraft_Mac_&_Cheese
 - 549.25 Salmon,_Rice,_and_Broccolis - 458.166666667 Spinach_Scramble
 <= 35000
Vitamin_D_(mcg): - 100 Fat_Free_Skim_Milk - 12.3 Salmon,_Rice,_and_Broccolis
 - 2 Spinach_Scramble <= 140
_C1: - Amy's_Thai_Pad_Thai <= -1
_C10: Kraft_Mac_&_Cheese <= 28
_C11: Salmon,_Rice,_and_Broccolis <= 28
_C12: Spinach_Scramble <= 28
_C2: - Fat_Free_Skim_Milk <= -1
_C3: - Fresh_Express_Chopped_Caesar_Salad_Kit <= -1
_C4: - Kraft_Mac_&_Cheese <= -1
_C5: - Salmon,_Rice,_and_Broccolis <= -1
_C6: - Spinach_Scramble <= -1
_C7: Amy's_Thai_Pad_Thai <= 28
_C8: Fat_Free_Skim_Milk <= 28
_C9: Fresh_Express_Chopped_Caesar_Salad_Kit <= 28
End
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Results

We employed the optimization simplex algorithm with PulP to devise a dietary model, the solutions of which are illustrated in Figures 01 and 02. In Model 01, we found that the solution consisted of only two meals: milk and Kraft Mac and Cheese. It's crucial to underline that the solution fails to converge without milk, highlighting the pivotal role of this food item in maintaining a balanced diet. 

![Optimal Diet](https://github.com/Hconsolo/MSDS460-Assignment_01_/blob/main/002.%20Pictures%20Paper/optimal_diet.png)

**Figure 01: Optimal weekly portion for each food item (meal).**


Moreover, when we stipulated the condition of having at least one meal per food item, the cost rose by almost 12 dollars. Once again, the simplex solution selected milk and Kraft Mac and Cheese, with one serving for the other meals. Shifting to Model 03, we observed that the weekly cost nearly doubled when we aimed to achieve a more diverse diet while maintaining the same nutrient targets. This indicates that a diversified diet can have a significant impact on one's budget. Interestingly, the solution found Salmon with rice and broccoli more attractive than Amy's Thai Pad Thai and Fresh Express Chopped Caesar Salad Kit. This suggests that preparing our meals is better than buying ready-to-heat frozen food or ready-to-eat meal kits.

![Total Cost](https://github.com/Hconsolo/MSDS460-Assignment_01_/blob/main/002.%20Pictures%20Paper/total_cost.png)

**Figure 02: Optimal weekly cost for all consumed food item (meal).**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Conclusion

In this paper, we employed linear programming techniques to analyze a simplified Diet Problem, which is a well-known LP task. To ensure quick convergence of the solution, we took valuable insights from the Dietary Guidelines for Americans (2020). During the exercise, we gathered recipes and nutritional information from the Marianos website to create six meal options. We also included milk in the list of meals due to its high nutrient content, especially for calcium. 

Based on Model 01, the optimal solution suggests that a diet with less variety, consisting of milk and mac and cheese, is the best. As we imposed more restrictions on the problem, the total cost of the solution worsened, which was expected. This indicates that a diversified diet can have a significant impact on one's budget. Our study suggests that preparing our meals is better than buying ready-to-heat frozen food or ready-to-eat meal kits.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Reference

1. [Camarena, Omar Antolín. "Standard form for Linear Programs." Instituto de Matemáticas, UNAM. Accessed on April 16, 2024](https://www.matem.unam.mx/~omar/math340/std-form.html)
2. [Dantzig, George B. 1990. “The Diet Problem.” Informs. 20:4, 43–47](https://www.mpi-inf.mpg.de/fileadmin/inf/d1/teaching/winter18/Ideen/Materialien/Dantzig-Diet.pdf)
3. [Mariano's. Website. Accessed at April 15, 2024](https://www.marianos.com/)
4. [U.S. Department of Agriculture and U.S. Department of Health and Human Services. Dietary Guidelines for Americans, 2020-2025. 9th Edition. December 2020. Available at DietaryGuidelines.gov.](https://www.dietaryguidelines.gov/resources/2020-2025-dietary-guidelines-online-materials)
5. [Consolo Holanda, Humberto. Documentation Package Food. April 15, 2024](https://github.com/Hconsolo/MSDS460-Assignment_01_/tree/main/001.%20Documentation%20Packaged%20Food%20Recipes%20Ing)
   

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/hconsolo
