library(shiny)
library(shinydashboard)
library(styler)

#style_file("demo_app.R")

ui <- dashboardPage(
  title = "demo_app",
  skin = "green",
  dashboardHeader(
    title = "?"
  ),
  dashboardSidebar(
    sidebarMenu(
      menuItem("mainP", tabName = "mainPageTab"),
      menuItem("StatistI",
        tabName = "statisticalIllusionsTab",
        menuItem("Illusion1",
          tabName = "illusion1Tab"
        ),
        menuItem("Illusion2",
          tabName = "illusion2Tab",
          menuSubItem("History",
            tabName = "illusion2HistoryTab",
            icon = icon("dumpster-fire")
          ),
          menuSubItem("Plot",
            tabName = "illusion2PlotTab",
            icon = icon("line-chart")
          )
        ),
        menuItem("Illusion3",
          tabName = "illusion3Tab"
        ),
        menuItem("Illusion4",
          tabName = "illusion4Tab"
        )
      ),
      menuItem("doublebackflip", tabName = "backflipTab"),
      menuItem("meta", tabName = "metaTab")
    )
  ),
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "mainPageTab",
        paste("Welcome to THE statistical illusions app")
      ),
      tabItem(
        tabName = "illusion1Tab",
        paste("fallacy nr. 1")
      ),
      tabItem(
        tabName = "illusion2HistoryTab",
        paste("important history")
      ),
      tabItem(
        tabName = "illusion2PlotTab",
        paste("interesting plot")
      ),
      tabItem(
        tabName = "illusion3Tab",
        paste("fallacy nr. 3")
      ),
      tabItem(
        tabName = "illusion4Tab",
        paste("fallacy nr. 4")
      ),
      tabItem(
        tabName = "backflipTab",
        fluidRow(
          title = "first row",
          box(
            tabPanel(
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
                  htmlOutput("fullText")
                )
              )
            )
          ),
          box(
            title = "invisible plot", solidHeader = TRUE,
            collapsible = TRUE,
            plotOutput(
              "chickenPlot"
            )
          ),
          fluidRow(
            title = "second row",
            box(
              id = 1,
              tabPanel(
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
                    htmlOutput("fullText")
                  )
                )
              )
            )
          )
        )
      ),
      tabItem(
        tabName = "metaTab",
        paste("meta meta meta"),
        plotOutput(
          "scatter"
        )
      )
    )
  )
)

server <- function(input, output) {
  output$chickenPlot <- renderPlot({
    var_chicken <- data.frame(chickwts)
    titleplot <- "fuck yourself R"
    plot(var_chicken$weight, var_chicken$feed, main = titleplot, xlab = "none", ylab = "none", type = "p", main = "everything")
  })

  output$fullText <- renderUI({
    str1 <- paste("You have selected", input$var_select)
    str2 <- paste(
      "You have chosen a range that goes from",
      input$var_slider[1], "to", input$var_slider[2]
    )
    HTML(paste(str1, str2, sep = "<br/>"))
  })

  output$fallacyNumeration <- renderText({
    paste("fallacy")
  })
}

shinyApp(ui = ui, server = server)
