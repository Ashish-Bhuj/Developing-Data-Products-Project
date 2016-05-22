library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel(" Alternative way to convert kilometers to miles"),
    
    sidebarPanel(
      numericInput('KM', 'Insert your length in kilometer', 70),
      submitButton('Submit')
    ), 
    mainPanel(
      p('How to convert kilometers to  miles without remembering this value 0.62137119,'),
      p('So,here is simply way to remember that, more sensibly, five miles equals eight kilometers and to use a trick.'),
      p('You take the kilometer number, and halve it. Then take a quarter of your half,and just add the two together. '),
      tags$div(
        tags$ul(
          tags$li('70 : 70/2 =35'),
          tags$li('35 : 35 Miltiply by quarter of Half ie.8.75' ),
          tags$li('35 + 8.75 : And Add both number 43.75' )
        )
      ),
      
      h4('Your entered Kilometer:'), verbatimTextOutput("inputKMvalue"),
      
      h4('Your Miles is:'),strong(verbatimTextOutput("mainfun"))
      
      
      )
    
)
  )
