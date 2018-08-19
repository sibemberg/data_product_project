library(shiny)
library(ggplot2)
library(GGally)

shinyServer(function(input, output) {
  
  output$clustPlot <- renderPlot({
    
    # generating clusters based on input$clusters and input$show_vars_kmeans from ui.
    iris_kmeans <- iris[,input$show_vars_kmeans]
    clust <- kmeans(iris_kmeans, input$clusters)
    
    # Plotting the analysis, based on input$show_vars_plot:
    iris_plot <- iris[,input$show_vars_plot]
    g <- ggpairs(iris_plot, aes(colour = as.factor(clust$cluster)))
    g
  })
  
})
