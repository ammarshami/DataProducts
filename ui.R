# Install the shiny package if not already installed
# install.packages("shiny")

library(shiny) # load the shiny package

# Define UI for application
shinyUI(fluidPage(

  # Header or title Panel
  titlePanel(h4('Demostration of the US Personal Expenditure', align = "center")),

  # Sidebar panel
  sidebarPanel(

    selectInput("var", label = "1. Select the expens type",
                choices = c("Food and Tobacco" = 1, "Household Operation" = 2, "Medical and Health" = 3, "Personal Care" = 4, "Private Education" =5),
                selected = 1),

    radioButtons("color", label = "2. Select the color of histogram",
                 choices = c("Green", "Red",
                             "Blue"), selected = "Green")
  ),

  # Main Panel
  mainPanel(
    textOutput("text1"),
#    textOutput("text2"),
#    textOutput("text3"),
    plotOutput("myBarplot")

  )

)
)
