library(shiny) 

Miles<-function(KM){KM}
convertKMToMiles<-function(KM){
  milesvalue<-KM/2 + ((KM/2)*0.25)
  milesvalue
}

shinyServer(
  function(input, output) {
    
    output$inputKMvalue <- renderPrint({input$KM})
    output$calculation <- renderPrint({Miles(input$KM)})
    output$mainfun <- renderPrint({convertKMToMiles(input$KM)})
  } 
)