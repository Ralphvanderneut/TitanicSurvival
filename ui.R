shinyUI(fluidPage(
  titlePanel("Titanic survival tool"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Fill in forms"),
      
      radioButtons("radio", label = h3("Sexes"),
                   choices = list("Male" = "male", "Female" = "female"
                                  ),selected = "male"),
      
      numericInput("Age", 
                   label = h3("Age"), 
                   value = 20),
      numericInput("par", 
                   label = h3("Number of parents"), 
                   value = 2),
      
      numericInput("child", 
                   label = h3("Number of children"), 
                   value = 1),
      
      actionButton("survived","Did you survive?")
      ),
   
    
    
    mainPanel(imageOutput("image1", height = 300, width = 300))
  )
))