# Getting the Facts on Gun Violence in The United States
## Project: A data driven state by state insight into who uses guns and what they use them for.
### Project Members: April Lee, Charlie Francesconi, Bryan Bernardi, Zhijian Zheng
Info-201: Technical Foundations of Informatics The Information School \
University of Washington \
Autumn 2019
## 1.0 Introduction

#### 1.1 Problem Situation
- **Stakeholders:** United States citizens all have a stake in the gun control debate and demand the truth behind gun violence. Gun lobbyists and activist groups like the National Rifle Association use money and political power to influence how gun violence is perceived.
- **Problem Setting:** The Current United States of America and its sates each represent a variation of the problem.
- **Values and Tensions:** The United States Constitution guarantees the right to bear arms yet many are questioning if high gun violence is worth that freedom.
- **Policy and ethic elements:** Each state in the US has its own variation of gun ownership laws and policies. Changes from state to state may effect gun violence.


#### 1.2 What is the problem?
- In 1996 the NRA pushed for an act of congress named the Dickey Amendment. This amendment effectively stifled major CDC gun injury research and data collection. (_Source_: NPR)[1] Data and research into gun violence is limited. This keeps US citizens unaware of the true effects the right to bear arms has on their country. More importantly US citizens are unaware of who is impacted by gun violence in their state and how.

#### 1.3 What does it matter?
- As of 2017 there are more guns than people in the United States.(_Source_: The Washington Post)[2] If weapons are this prevalent in the US the facts need to be available. When facts are kept from the conversation effective change cannot advance. It is important that we can examine and appreciate all aspects of gun violence in the US to address this issue.

#### 1.4 How it will be addressed?
- We will recognize those impacted by gun violence and showcase who is impacted most, how they are impacted, and where in the US gun violence takes root. Focusing on causes, the people effected, and the states where violence occurred will allow us to paint a better national and regional portrait of the cold facts behind the gun control debate in America.

## 2.0 Research Questions
1. What states have the highest rate of gun violence and what racial/gender groups are effected?
2. What categories of gun violence are most prevalent by state?

## 3.0 The Data Sets
1. The main data sets we used for this project are Five Thirty Eight's _Gun Deaths In America_ and _Gun Violence Data_ on Kaggle. Our team worked to clean and divide these data sets into the smaller data sets seen in our current "data/" directory.
2. Five Thirty Eight's data was created to focus on highlighting all the different complexities behind the 33,000 annual deaths due to gun violence. The Kaggle data set was created because "There's currently a lack of large and easily-accessible amounts of detailed data on gun violence."(_Gun Violence Data_ Context)
3. We accesed both of these datasets via downloaded .csv files from each websites project page.
4. In _Gun Deaths In America_ and _Gun Violence Data_ observations are individual shooting events.
5. In _Gun Deaths In America_ each observation has a variable for the year of the shooting, month of the shooting, intent of the shooter, if it was a police involved shooting, the sex of the shooter, the age of the shooter, the race of the shooter, if the shooter had hispanic ethnicity, the address/place of the shooting, and the education level of the shooter. In _Gun Violence Data_ each observation has the date of shooting, state of shooting, city/ County of shooting, address of the location of the shooting, number of people killed, number of people injured, a URL regarding the incident, a reference url to the reporting source, a T or F value indicating if any variables are missing for the observation, the congressional district id, the status of guns involved in the shooting, the guns used in the shooting, latitude, longitude, age of shooter, the age group of shooter, gender of the shooter, and harm done to the shooter.

6. _Gun Deaths In America_ includes 100,800 observations and 10 attributes. _Gun Violence Data_ includes 263,653 observations and 29 attributes.
7. Although the data sets do not represent people they do detail specific traits of the people involved in shootings and it is critical to not that although their identities are different they are individuals and not bound to their age, gender, race, ect.

- **Envisioning Cards:** With the envisioning cards we were able to recognize the main weakness with these data sets is it is easy to let all the numbers and statistics make these serious events seem like just numbers and not the tragic events where families and communities lost loved ones. Moving forward in this project we promised to make a conscious effort to remember the gravity of shootings.

- **Strengths and Weaknesses of Datasets:** One of the clear advantages of these datasets is they have a ton of information. The Kaggle dataset we downloaded has more variables than we can dream of. With specifics like the congressional district and a link to the reporting source it seemed like a perfect data set. Unfortunately although all this information is great large parts of it is missing from the sets and it took a lot of cleaning to work around the missing values.


- **Data Wrangling:** Data was cleaned to minimize values that did not properly compute or was incomplete while maximizing values that provided full insights into each of our data's separate observations. Most missing values either disqualified the entire observation from the set (because it did not fully highlight each aspect of a shooting) or we did not need that specific feature of the observation.

## 4.0 Information visualizations
Two main components went into how the information was visualized. First, how it could be visualized best to highlight trends relating to the data by state and racial/gender groups. Second, how to work best with the type of data we had. When the visualizations were created these two elements helped decide where to change hue vs alpha value and the plot type to use.

## 5.0 Technical description of Shiny application
The shiny application is built with 3 major components. First the sidebar contains the title of the project. Second the tab panels contain the Overview, visualizations, and dataset. Third main page includes all of these elements to build the application. The data is loaded with a .csv file. The major libraries are plotly and, of course, shiny.

## Acknowledgements
Every team member put their full effort into developing this stage of the project.

## References
Links to datasets manipulated:
https://fivethirtyeight.com/features/gun-deaths/ (_Source_: Five Thirty Eight)
https://www.kaggle.com/jameslko/gun-violence-data (_Source_: Kaggle)

## Appendix 1: Data Dictionary

| Variable Name |                Description                | Data Type | Measurement Type |
|:-------------:|:-----------------------------------------:|:---------:|:----------------:|
|      year     |          The year of the shooting         |  Integer  |    Continuous    |
|     month     |         The month of the shooting         |  Integer  |    Continuous    |
|     intent    |         The intent of the shooter         |   String  |    Categorical   |
|     police    | Number of police involved in the shooting |  Integer  |    Continuous    |
|      sex      |           Gender of the shooter           |   String  |    Categorical   |
|      age      |             Age of the shooter            |  Integer  |    Continuous    |
|      race     |            Race of the shooter            |   String  |    Categorical   |
|    hispanic   |   If the shooter was ethnically hispanic  |  Integer  |    Continuous    |
|     place     |             Place of shooting             |   String  |    Continuous    |
|   education   |            Education of shooter           |   String  |    Categorical   |

## Appendix 2: Reflections

- **April Lee:** Working on my visualization was difficult. It was not difficult because of the coding, I had that down already from A5. What was especially difficult was understanding how my visualization effects the research questions. When I started making the visualization I thought I would just be creating another way for someone to be able to see the csv in a creative way. What I quickly realized was that the visualization needed to highlight a trend or pattern easily to the viewer that could answer the question. To do this I reviewed the effective visualizations chapter in the text book and used their suggestions to build my visualizations. Although it was a challenge at first, I am glad that my visualizations have a true purpose behind them besides a prettier way to see the data outside of a csv file. Working on this part of the project definitely increased my skills as a coder but surprisingly also as a thinker.

- **Charlie Francesconi:** One thing I learned from this assignment is learning how to work with my team better and how to divide up work accordingly. When I was working on the technical report I didn't realize how much I was going to need to ask my teammates about what they had done and it make a relatively simple process rather difficult. In the future I will make sure to read the whole specification and make sure I understand it before just diving in and making roles and responsibilities for my team. Even though this was difficult I think it all worked out in the end and I am very glad I learned now from it. This developed my identity as a thinker and innovator because now I know to plan as a thinker and work though my writing like an innovator. One more thing I need to mention is I need to get much better at using github because I keep pushing the wrong versions of files and I do not think LFS is working for me.

- **Bryan Bernardi:** Creating the shiny app was most frustrating for me. Working on a brand new topic we have never worked with before in an assignment was incredibly difficult because it was a brand new topic for me as a coder. Each step presented new challenges in coding. The biggest challenge was importing all of my teammates work into the one application. This was because they needed to create their visualization or modify a data set and then push it to github for me to try and work with in the shiny app and see if I could create a slider or panel based on what they created. This was a major challenge especially when my teammates work wasn't immediately working with the app. Nevertheless I am excited to have taken on this challenge. Working with my teammates code allowed me to push myself fully into shiny development and I believe I am a much stronger coder because of it.

- **Zhijian Zheng:** I really enjoyed working with the data sets in the beginning. The amount of observations and features made it easy to come up with research questions and ideas for potential visualizations. Little did I realize how much time I would need to spend cleaning the data. All over the place in the datasets there were missing values and problems with null or weird data entries. What helped most at this point in the process was consulting my team and seeing what they needed from the data. This allowed me to narrow my focus of what I needed to clean out of the data instead of just simply saying "I'm going to clean the data" with no real purpose. Consulting my team also helped me get tips on how to go about dividing the data and looking at what was relevant. Overall I liked this task, even with its challenges, because it has made me a better communicator with my team and more effective as a team-member with my code.


## Appendix 3: Use of Envisioning Cards
Envisioning Cards were used periodically through the project to allow our group to take a step back and fully comprehend our work through a moral and ethical lense.
