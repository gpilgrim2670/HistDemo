run_app <- function(port = NULL) {

  if (is.null(port)) {
    shiny::shinyApp(ui = HistDemo::app_ui(),
                    server = HistDemo::app_server)
  } else {
    port <- try(as.integer(port))
    if (is.integer(port) && port > 0L) {
      shiny::shinyApp(ui = HistDemo::app_ui(),
                      server = HistDemo::app_server,
                      options = list(port = port))
    }
  }

}
