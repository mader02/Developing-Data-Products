
shinyUI(fluidPage(
        titlePanel("Basal Metabolic Rate (BMR) Calculator"),
        
        sidebarLayout(sidebarPanel(
                
                helpText("You use energy no matter what you're doing, even when sleeping. The BMR Calculator will calculate your Basal Metabolic Rate (BMR); the number of calories you'd burn if you stayed in bed all day"),
                helpText("In most situations, the BMR is estimated with equations summarized from statistical data. The most commonly used one is the Mifflin - St Jeor equation:"),
                helpText("BMR = 10 * weight(kg) + 6.25 * height(cm) - 5 * age(y) + 5         (man)"),
                helpText("BMR = 10 * weight(kg) + 6.25 * height(cm) - 5 * age(y) - 161     (woman)"),
                
                radioButtons(
                        inputId  = "Gender",
                        label    = "Gender:",
                        choices  = c("Male" = 1, "Female" = 2),
                        selected = 1
                ),
                
                numericInput(
                        inputId = "age",
                        label = strong("Your age:"),
                        value = 30
                ),
                
                
                numericInput(
                        inputId = "weight",
                        label = strong("Your weight:"),
                        value = 70
                ),
                
                numericInput(
                        inputId = "height",
                        label = strong("Your height:"),
                        value = 170,
                        step  = 5
                ),
                submitButton("Calculate")
                ),
                
                
                mainPanel(
                        uiOutput("input"),
                        uiOutput("result"),
                        uiOutput("graph"),
                        uiOutput("fork"),
                        HTML('<p><img src="Basal-metabolic-rate-vs-age.jpg" /></p>'),
                        paste("source: www.cardiotrek.ca")
                       
                ))
        
               
))

