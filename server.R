library(shiny)
library(shinythemes)
library(rsconnect)

server <- function(input, output){
    datos <- reactive({c(0:12)})
    T1_demora <- reactive({120/(1+input$Demora_Tiempo1*datos())})
    T2_demora <- reactive({100/(1+input$Demora_Tiempo2*datos())})
    T1_demora_exp <- reactive({120*(2.718282^(-datos()*input$Demora_Tiempo1_Exp))})
    T2_demora_exp <- reactive({100*(2.718282^(-datos()*input$Demora_Tiempo2_Exp))})
    
    output$grafico <- renderPlot({
        layout(matrix(c(0,1,1,0),ncol=4))
        par(mar = c(5, 2, 4, 0))
        plot(0, type='n',xlim=c(0,12),ylim=c(0,120),xlab='',ylab='',axes=F)
        mtext('Descuento del Valor Subjetivo de 120 pesos',3,col='gray30',cex=1.3)
        mtext('Demora en meses',1, line=3,col='gray30')
        mtext('Valor subjetivo',2,line=3.5,col='gray30')
        legend(10,480,col = c('purple','turquoise3','tomato','turquoise3'),pch=c(16,17, 16, 17),
               legend = c('Tiempo 1','Tiempo 2'),
               cex=1.5,box.col='white',text.col='gray30')
        axis(1, at=c(0:12),cex.axis=1.2,col='gray30',col.axis='gray30')
        axis(2,las=2,cex.axis=1.3,col='gray30',col.axis='gray30')
        points(datos(),T1_demora(),type='b',col='purple',pch=16,cex=1.2)
        points(datos(),T2_demora(),type='b',col='turquoise3',pch=17,cex=1.2)
    })
    output$grafico_2 <- renderPlot({
        layout(matrix(c(0,1,1,0),ncol=4))
        par(mar = c(5, 2, 4, 0))
        plot(0, type='n',xlim=c(0,12),ylim=c(0,120),xlab='',ylab='',axes=F)
        mtext('Descuento del Valor Subjetivo de 120 pesos',3,col='gray30',cex=1.3)
        mtext('Demora en meses',1, line=3,col='gray30')
        mtext('Valor subjetivo',2,line=3.5,col='gray30')
        legend(10,480,col = c('purple','turquoise3','tomato','turquoise3'),pch=c(16,17, 16, 17),
               legend = c('Tiempo 1','Tiempo 2'),
               cex=1.5,box.col='white',text.col='gray30')
        axis(1, at=c(0:12),cex.axis=1.2,col='gray30',col.axis='gray30')
        axis(2,las=2,cex.axis=1.3,col='gray30',col.axis='gray30')
        points(datos(),T1_demora_exp(),type='b',col='purple',pch=16,cex=1.2)
        points(datos(),T2_demora_exp(),type='b',col='turquoise3',pch=17,cex=1.2)
    })
    }