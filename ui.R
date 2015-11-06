
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinyAce)


shinyUI(fluidPage(
    mainPanel(
      includeScript("moveFocusOnTab.js"),
      h5(tags$strong("Tags")),
      aceEditor("elementTags", value="", mode="text", theme="ambient", readOnly = FALSE,
                height = "60px", fontSize = 12, wordWrap = TRUE),
      h5(tags$strong("Description")),
      aceEditor("elementDescription", value="", mode="text", theme="ambient", readOnly = FALSE,
                height = "60px", fontSize = 12, wordWrap = TRUE)
    )
))
