shinyServer(
  function(input, output) {
    output$typeValue <- renderPrint({input$Type})
    output$freqValue <- renderPrint({input$Freq})
    output$ampValue <- renderPrint({input$Amp})
    output$phaValue <- renderPrint({input$Pha})
    x<-seq(-2*pi,2*pi,by=0.001)
    observe({
      Frequen<-input$Freq
      Ampli<-input$Amp
      Phase<-input$Pha
      if (input$Type=="Sin"){
        y=Ampli*sin(Frequen*x+Phase)
        output$trigplot <- renderPlot({plot(x,y,"l",main="Sin Function",col="dark red")
                                       par(new=TRUE)
                                       abline(h=0,v=0,col = "gray60")})
        }
      else{if (input$Type=="Cos"){
        y=Ampli*cos(Frequen*x+Phase)
        output$trigplot <- renderPlot({plot(x,y,"l",main="Cos Function",col="dark blue")
                                       par(new=TRUE)
                                       abline(h=0,v=0,col = "gray60")})
       }  
      }
      })

  }
)