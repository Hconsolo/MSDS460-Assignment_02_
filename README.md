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

The project plan for the restaurant recommendation application has been updated to include potential features and technical requirements. Our app will offer a range of unique features, such as browsing menus, online ordering, table reservations, loyalty programs, push notifications, reviews, and social sharing. Additionally, the app will be integrated with other platforms and will use an advanced machine-learning recommendation engine to provide personalized recommendations. It will store user preferences and order history, and restaurant owners will be able to post marketing content. The app will also store information on over 100 and less than 1000 restaurants in Marlborough. It will be scalable to accommodate potential increases in operations and support up to 1000 users. External data will consist of monthly updated Yelp reviews accessed using GraphQL API. A detailed list of these features and requirements, along with the associated development time required by a professional, is provided in the table 01. Details are included in the Table 05 in the Appedix. The client (group of restaurants from Marlborough MA) will ultimately decide the complete list of features and this is an initial reference for this exercise.

**Table 01: Summary of the expected effort (in hours) to develop the code of each design feature (ID starting with F) and technical feacture (ID starting with T).**

| Role              |   Effort | Design_ID                                                       |
|:------------------|---------:|:----------------------------------------------------------------|
| Backend Developer  |      180 | F01, F02, F04, F05, F06, F07, F08, F10, F11, F12, F13, T05, T06 |
| Data Engineer      |      160 | F11, F12, T01, T02, T03, T04, T05, T06                          |
| Frontend Developer |      150 | F01, F02, F04, F05, F06, F07, F08, F10, F13                     |
| Data Scientist     |       80 | F11, F12                                                        |



<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Method

For this task, we employed Python and the following third part libraries to help with basic data handling tasks and to solve the the LP problem.

* Pandas - Data Wrangling and Processing
* Matplotlib & Seaborn - Data Visualization
* PulP - Provides a modeling framework and LP optimization tool


![Network][Network]
**Figure 01: directed graph diagram for the project.**



We optimized the problem using three different sets of constraints. These are the models we used:

1. Model 01: Only the constraints listed in Table 01 were used.
2. Model 02: We used the constraints in Table 01 and added a requirement for at least one serving per week (applicable to all meals).
3. Model 03: We used the constraints in Table 01, which required at least one serving of meal per week and set a maximum limit of 28 servings per week (to promote a diverse diet).

To convert this problem to the standard form, we used simple mathematical transformations to convert the minimization problem into a maximization problem as per Camarena (2024). Below is the standard formulation of the problem.




<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Results

We employed the optimization simplex algorithm with PulP to devise a dietary model, the solutions of which are illustrated in Figures 01 and 02. In Model 01, we found that the solution consisted of only two meals: milk and Kraft Mac and Cheese. It's crucial to underline that the solution fails to converge without milk, highlighting the pivotal role of this food item in maintaining a balanced diet. 

![Optimal Diet](https://github.com/Hconsolo/MSDS460-Assignment_01_/blob/main/002.%20Pictures%20Paper/optimal_diet.png)

**Figure 01: Optimal weekly portion for each food item (meal).**


Moreover, when we stipulated the condition of having at least one meal per food item, the cost rose by almost 12 dollars. Once again, the simplex solution selected milk and Kraft Mac and Cheese, with one serving for the other meals. Shifting to Model 03, we observed that the weekly cost nearly doubled when we aimed to achieve a more diverse diet while maintaining the same nutrient targets. This indicates that a diversified diet can have a significant impact on one's budget. Interestingly, the solution found Salmon with rice and broccoli more attractive than Amy's Thai Pad Thai and Fresh Express Chopped Caesar Salad Kit. This suggests that preparing our meals is better than buying ready-to-heat frozen food or ready-to-eat meal kits.

![Gannt 01. Expected project tasks][Gannt_001_expected]

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

## Appendix

### Reference for the design features

**Table 05: Details of the design features to be developed**

| Design_ID   | Design_Description               | Details                                                                                                                                                         |
|:------------|:---------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| F01         | Desktop and mobile version       | Users can access the app on desktop or mobile. Build an attractive and easy-to-use website for both.                                                            |
| F02         | Menu browsing                    | Users can view the restaurant's menu and make selections per restaurant.                                                                                        |
| F04         | Reservations                     | Users can reserve a table at the restaurant or order for pickup.                                                                                                |
| F05         | Loyalty program                  | Users can earn points or rewards for repeat business.                                                                                                           |
| F06         | Push notifications               | Restaurants can send notifications to users, such as special promotions or discounts, using recommendation system.                                              |
| F07         | Reviews and ratings              | Users can rate their dining experience and read reviews from other customers.                                                                                   |
| F08         | Social sharing                   | Users can share their dining experience on social media platforms.                                                                                              |
| F10         | Integration with other platforms | Users can order food from the restaurant app through platforms like Google Maps and Yelp.                                                                       |
| F11         | ML recommendation                | ML recommendation tool personalized suggestion engine that uses Yelp, order history, GPS, and deals data.                                                       |
| F12         | ML sentiment analysis            | Our app provides sentiment analysis to restaurants based on Yelp reviews, highlighting their main strengths and weaknesses.                                     |
| F13         | Marketing content                | Our app lets restaurant owners post marketing content and maintain a blog. It also stores users' order history and preferences.                                 |
| T01         | Size of restaurants DB           | The app must store info for 100-1000 Marlborough, MA restaurants.                                                                                               |
| T02         | Scalability                      | The application should be scalable enough to handle potential increases in the size of operations.                                                              |
| T03         | Size of users DB                 | Users should be 1,000 or 0.06% of the population in Marlborough and its neighboring towns: Berlin, Hudson, Sudbury, Framingham, Southborough, and Northborough. |
| T04         | ELT external data - Yelp         | The project will use Yelp reviews of restaurants as external data, which will be updated monthly. The Yelp reviews will be accessed daily via GraphQL API.      |
| T05         | Site Infrastructure              | Hosted site on a major cloud platform, run batch jobs, and ML algorithms periodically.                                                                          |
| T06         | Monitoring system                | Store activity log, and trigger alerts when events happen                           

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/hconsolo
[Network]: https://github.com/Hconsolo/MSDS460-Assignment_02_/blob/main/003.%20Output%20Files/fig_00_network.png
[Gannt_001_expected]: https://github.com/Hconsolo/MSDS460-Assignment_02_/blob/main/003.%20Output%20Files/fig_01_gannt_chart.png
