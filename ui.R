shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Developing Data Products - Trigonometric Functions"),
    sidebarPanel(
      h3('Instructions:'),
      p('Provides with a choice of Trigonometric Functions and the app will provides you with a graph 
        for this function'),
      selectInput("Type", "Select a Function of your Choice", 
                         c("Sin"="Sin","Cos"="Cos")),
      numericInput("Freq","Enter Frequency",1),
      numericInput("Amp","Enter Amplitude",1),
      numericInput("Pha","Enter Phase",0),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You Choose:'),
      verbatimTextOutput("typeValue"),
      h4('With frequency of:'),
      verbatimTextOutput("freqValue"),
      h4('amplitude of:'),
      verbatimTextOutput("ampValue"),
      h4('phase of:'),
      verbatimTextOutput("phaValue"),
      h4('Which resulted in a plot of '),
      plotOutput('trigplot')
    )
  )
)