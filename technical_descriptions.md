# Technical Descriptions
## The Data Sets
1. The data set we used for this project is Five Thirty Eight's _Gun Deaths In America_. More specifically, we used Five Thirty Eight's cleaned CDC data so we could start from a firm platform and build from there.
2. Five Thirty Eight's data was created to focus on highlighting all the different complexities behind the 33,000 annual deaths due to gun violence.
3. We accessed this dataset via a downloaded .csv file. The link can be found in our project appendix
4. In _Gun Deaths In America_ observations are individual shooting events.
5. In _Gun Deaths In America_ each observation has a variable for the year of the shooting, month of the shooting, intent of the shooter, if it was a police involved shooting, the sex of the shooter, the age of the shooter, the race of the shooter, if the shooter had hispanic ethnicity, the address/place of the shooting, and the education level of the shooter.

6. _Gun Deaths In America_ includes 100,800 observations and 10 attributes.

7. Although the data sets do not represent people they do detail specific traits of the people involved in shootings and it is critical to not that although their identities are different they are individuals and not bound to their age, gender, race, ect.


- **Envisioning Cards:** With the envisioning cards we were able to recognize the main weakness with these data sets is it is easy to let all the numbers and statistics make these serious events seem like just numbers and not the tragic events where families and communities lost loved ones. Moving forward in this project we promised to make a conscious effort to remember the gravity of shootings.

- **Strengths and Weaknesses of Datasets:** One of the clear advantages of these datasets is they have a ton of information. Unfortunately although all this information is great large parts of it is missing from the sets and it took a lot of cleaning to work around the missing values.


- **Data Wrangling:** Data was cleaned to minimize values that did not properly compute or was incomplete while maximizing values that provided full insights into each of our data's separate observations. Most missing values either disqualified the entire observation from the set (because it did not fully highlight each aspect of a shooting) or we did not need that specific feature of the observation.

## 4.0 Information visualizations
Two main components went into how the information was visualized. First, how it could be visualized best to highlight trends relating to the data by intent and racial groups. Second, how to work best with the type of data we had. When the visualizations were created these two elements helped decide where to change hue value and the plot type to use.

## 5.0 Technical description of Shiny application
The shiny application is built with 3 major components. First the sidebar contains the title of the project. Second the tab panels contain the Overview, visualizations, and dataset. Third main page includes all of these elements to build the application. The data is loaded with a .csv file. The major libraries are plotly and, of course, shiny.
