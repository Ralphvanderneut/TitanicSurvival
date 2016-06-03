source("helpers.R")


shinyServer(
  function(input, output) {
    
    observeEvent(input$survived ,{
    output$image1 <- renderImage({
      sex <- input$radio
      age <- input$Age
      parch <- input$par + input$child
      
      result <- PredictSurvival(sex, age, parch)
      
      return(
        if(result == 1){
          list(
            src = "data/titanic.jpg",
            contentType = "image/jpg",
            alt = "Face"
          )
        }else{
          list(
            src = "data/Rose.jpg",
            contentType = "image/jpg",
            alt = "Face"
          )
        }
      )
    }, deleteFile = FALSE)
    output$text1 <- renderText(
      {
        sex <- input$radio
        age <- input$Age
        parch <- input$par + input$child
        return(PredictSurvival(sex, age, parch))})
    })
  }
 
)