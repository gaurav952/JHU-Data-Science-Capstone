### JHU Coursera Data Science Capstone
### Developer: Gaurav Sinha

suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

shinyUI(navbarPage("JHU Coursera Data Science Capstone", 
                   
                   theme = shinytheme("cosmo"),
                   
############################### ~~~~~~~~1~~~~~~~~ ##############################  
## Tab 1 - Prediction

tabPanel("Next Word Prediction",
         
         tags$head(includeScript("./js/ga-shinyapps-io.js")),
         
         fluidRow(
                 
                 column(3),
                 column(6,
                        tags$div(textInput("text", 
                                  label = h3("Enter text here:"),
                                  value = ),
                        tags$span(style="color:grey",("Supported Language: English")),
                        br(),
                        tags$hr(),
                        h4("The predicted next word:"),
                        tags$span(style="color:darkred",
                                  tags$strong(tags$h3(textOutput("predictedWord")))),
                        br(),
                        tags$hr(),
                        h4("What you have entered:"),
                        tags$em(tags$h4(textOutput("enteredWords"))),
                        align="center")
                        ),
                 column(3)
         )
),

############################### ~~~~~~~~2~~~~~~~~ ##############################
## Tab 2 - About 

tabPanel("About This Application",
         fluidRow(
                 column(2,
                        p("")),
                 column(8,
                        includeMarkdown("./about/about.md")),
                 column(2,
                        p(""))
         )
),

############################### ~~~~~~~~F~~~~~~~~ ##############################

## Footer

tags$hr(),

tags$br(),

tags$span(style="color:blue", 
          tags$footer(("© 27, June 2019 - "), 
                      tags$a(
                              href="https://github.com/gaurav952",
                              target="_blank",
                              "Gaurav Sinha"), 
                      tags$br(),
                      ("Built with"), tags$a(
                              href="http://www.r-project.org/",
                              target="_blank",
                              "R"),
                      ("&"), tags$a(
                              href="http://shiny.rstudio.com",
                              target="_blank",
                              "Shiny."),
#                       ("&"), tags$a(
#                               href="http://www.rstudio.com/products/shiny/shiny-server",
#                               target="_blank",
#                               "Shiny Server."),
#                     
                      
                      align = "center"),
          
          tags$br()
)
)
)
