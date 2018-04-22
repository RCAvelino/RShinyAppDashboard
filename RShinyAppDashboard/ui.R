library(shiny)
library(shinydashboard)

# Define UI for application
header <- dashboardHeader(
  dropdownMenu(type = "messages")
)
sidebar <- dashboardSidebar()
body <- dashboardBody()

shinyUI(
  dashboardPage(header, sidebar, body)
)
