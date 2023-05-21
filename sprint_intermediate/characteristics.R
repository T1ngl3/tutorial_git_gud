library(shiny)
library(lintr)
library(styler)

# lint("characteristics.R")
style_file("characteristics.R")

ui <- fluidPage(
  titlePanel("Homework"),
  sidebarLayout(
    sidebarPanel(
      selectInput("var_select",
        label = "Fun activities to do",
        choices = c("Maybe do a backflip", "Probably do a backflip", "Surely do a backflip", "I will do a backflip"),
        selected = "I will do a backflip"
      ),
      sliderInput("var_slider",
        label = "Range of interest",
        min = 0,
        max = 100,
        value = c(42, 69)
      )
    ),
    mainPanel(
      # textOutput("backflip"),
      # textOutput("range")

      htmlOutput("fullText")
    )
  )
)

server <- function(input, output) {
  # output$backflip <- renderText({input$var_select})
  # output$range <- renderText({input$var_slider})

  output$fullText <- renderUI({
    str1 <- paste("You have selected", input$var_select)
    str2 <- paste(
      "You have chosen a range that goes from",
      input$var_slider[1], "to", input$var_slider[2]
    )
    HTML(paste(str1, str2, sep = "<br/>"))
  })
}

shinyApp(ui = ui, server = server)
