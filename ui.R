library(shiny)

fluidPage(verticalLayout(
    
  titlePanel("Correlation with K-means Clustering"),
  #plotlyOutput("ClustPlot"),
  plotOutput("clustPlot"),
  fluidRow( 
    column(4,
      #Coluna 1:
      sliderInput("clusters",
                         "Select the number of clusters:",
                         min = 1,
                         max = 10,
                         value = 3)
    ),
    column(4,
      #Coluna 2:
      checkboxGroupInput("show_vars_kmeans","Select variables to be included into the model:",
                         names(iris)[1:4], selected = names(iris)[1:4])
    ),
    column(4,
      #Coluna 3:
      checkboxGroupInput("show_vars_plot","Select variables to be shown into the chart:",
                         names(iris), selected = names(iris)[1:5])
    )
)))