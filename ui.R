library(shiny)

fluidPage(
  theme = shinythemes::shinytheme("superhero"),
  verticalLayout(
    titlePanel("Correlation with K-means Clustering"),
    plotOutput("clustPlot"),
    fluidRow( 
      #Column 4:
      column(4,
             HTML("<font size=2>This very simple app loads the <em>iris</em> dataset, run a k-means 
                  clustering model and show some information about it:<br>  
                  &emsp;-Scatterplot of all variables, 2x2, colored by cluster;<br>
                  &emsp;-Correlation, 2x2 (overall and splitted by cluster);<br>
                  &emsp;-Overall density distribution of each cluster, by variable;<br>
                  You can choose the number of clusters (k) from 1 to 10, by using the slider.<br>
                  You can also select which variables will be included into the model and 
                  those who will appear on the chart.<br></font>")
             ),
      #Column 1:
      column(3, offset = 1,
        sliderInput("clusters",
                           "Select the number of clusters:",
                           min = 1,
                           max = 10,
                           value = 3)
      ),
      #Columns 2:
      column(2,
        checkboxGroupInput("show_vars_kmeans","Select variables to be included into the model:",
                           names(iris)[1:4], selected = names(iris)[1:4])
      ),
      #Colum 3:
      column(2,
        checkboxGroupInput("show_vars_plot","Select variables to be shown into the chart:",
                           names(iris), selected = names(iris)[1:5])
      )
    )
))
