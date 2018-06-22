#reactive values act as data streams that flow through your app, the input list is a list of reactive values 
#The values show current state of inputs,  


# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
   fluidPage(
  
    ##today's date
     dateInput("date6", "Date:",
               startview = "decade"),
     ##current time
     h2(textOutput("currentTime")),
  # Application title
  titlePanel("UDPipe Text Analysis"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      # Input: for uploading a file ----
      fileInput("file1", "Choose text File"),
      # Horizontal line ----
      tags$hr(),
      
      ##checkbox input
      checkboxGroupInput("upos",label = h4("parts of speech to show:"),
                         c("Adjective" = "ADJ",
                           "Propernoun" = "PROPN",
                           "Adverb" = "ADV",
                           "Noun" = "NOUN",
                           "Verb"= "VERB"),
      selected = c("ADJ","NOUN","VERB"),
      width = '100%'
      #choiceNames =
       # list(icon("Adjective"), icon("Adverb")),
      #choiceValues =
        #list("ADJ", "ADV")
      )),
mainPanel(
  tabsetPanel(type = "tabs",
              tabPanel("Overview",h4(p("Who deveoped this App")),
                       p("This app supports only text files. ", align = "justify"),
                       h4("Pupropse of this app"),
                       h4("what precaution to take")
              ))
  
)

)
))