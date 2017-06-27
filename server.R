
library(shiny) # Load shiny package
data(USPersonalExpenditure) # Load the iris dataset


shinyServer(

  function(input, output) {

    output$text1 <- renderText({
      colm = as.numeric(input$var)
      paste("Expense type is", row.names(USPersonalExpenditure)[colm])

    })

    output$myBarplot <- renderPlot(
      {
        colm = as.numeric(input$var)
        barplot(USPersonalExpenditure[colm,], col =input$color,main="Personal Expenditure", xlab = "Year", ylab ="US$ - Billions", names.arg = c(colnames(USPersonalExpenditure)), cex.names=0.8)
      }
)}
)
