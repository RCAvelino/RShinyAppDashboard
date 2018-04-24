library(shiny)
library(shinydashboard)

# Define UI for application

# Header
header <- dashboardHeader(
  dropdownMenu(
    type = "messages",
    messageItem(
      from = "Lucy",
      message = "You can view the International Space Station!",
      href = "https://spotthestation.nasa.gov/sightings/"
    ),
    # Add a second messageItem() 
    messageItem(
      from = "Lucy",
      message = "Learn more about the International Space Station",
      href = "https://spotthestation.nasa.gov/faq.cfm"
    )
  ),
  dropdownMenu(
    type = "notifications",
    notificationItem(
      text = "The International Space Station is overhead!")
  ),
  dropdownMenu(
    type = "tasks",
    taskItem(
      text = "Mission Learn Shiny Dashboard",
      value = 10)
  )
)

# Sidebar
sidebar <- dashboardSidebar(
  sidebarMenu(
    # Create two `menuItem()`s, "Dashboard" and "Inputs"
    menuItem(
      "Dashboard",
      tabName = "dashboard"
    ),
    menuItem(
      "Inputs",
      tabName = "inputs"
    )
  )
)

#Body
body <- dashboardBody(
  # Create a tabBox
  tabItems(
    tabItem(
      tabName = "dashboard",
      tabBox(
        title = "International Space Station Fun Facts",
        tabPanel("Fun Fact 1"),
        tabPanel("Fun Fact 2")
      )
    ),
    tabItem(
      tabName = "inputs",
      fluidRow(
        # Row 1
        box(
          width = 12,
          title = "Regular Box, Row 1",
          "Star Wars"
        )
      ),
      fluidRow(
        # Row 2
        box(
          width = 12,
          title = "Regular Box, Row 2",
          "Nothing but Star Wars"
        )
      )
    )
  )
)

# UI
shinyUI(
  dashboardPage(header, sidebar, body)
)
