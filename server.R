source("./bmr.R")

shinyServer(function(input,output) {
   
        
        output$result <- renderText({
                bmr = bmr(Gender=input$Gender, weight = input$weight, height = input$height, age = input$age)
           
                paste0("Your BMR is ","<font size=10>", bmr,"</font>"," Calories/day")
                
                
                 })
})

       

