library(shiny)
library(shinythemes)
library(rsconnect)

ui <- (fluidPage(theme = shinytheme("superhero"),
                tabsetPanel(
                  tabPanel('Teoría',
                           h1('Teoría de Reversión de Preferencias Intertemporal'),
                           h5('Por Daniela García'),
                           a(href = 'http://shuny.rstudio.com/','Shiny'),
                           hr(),
                           p('La Reversión de Preferencias se da cuando se nos presenta un set de elección
                           en donde tenemos dos opciones, elegir la opción grande, pero demorada; o elegir 
                           la opción pequeña inmediata. Este tipo de eleccione se nos presentan prácticamente 
                           todo el tiempo en nuestra vida cotidiana. Por ejemplo, por la noche podemos elegir
                           que por la mañana nos levantaremos temprano e iremos a correr, donde la recompesa 
                           sería grande, ya que estamos cuidadno de nuestra salud, pero también demorada, pues
                           para ver resultados tiene que pasar mucho tiempo. Por otro lado, cuando despertamos 
                           al esa mañana, nos encontramos cómodos en la cama y pararnosa correr no parece ser la
                           mejor idea, por lo que decidimos quedarnos en cama y dormir más. Elegir esta opción es
                           elegir una recompensa pequeña, pues sólo nos traerá el beneficio de dormir un poco más
                           esa mañana, pero es una recompensa inmediata. De este modo, hemos invertido nuestra preferencia
                           por despertar temprano y salir a hacer ejercicio por quedarnos a dormir un poco más.'),
                           p('Este fenómeno es muy común en todos los humanos, y puede explicarse con las funciones de
                             descuento intertemporal. En esta ocasión explicaremos dos modelos que se han utilizado
                             para dar cuenta de este fenómeno.',
                             tags$ol(
                               tags$li("Modelo de Descuento Exponencial", withMathJax('$$V=A\\cdot e ^ {-\\beta\\cdot t}$$')),
                               p('Una implicación del modelo de descuento exponencial es que los rangos individuales del orden
                                 de los valores de resultados futuros no pueden cambiar con el paso del tiempo.Newell (2015), 
                                 explica que el descuento exponencial implica que este orden de preferencias se mantendrá sin 
                                 importar cuándo ocurran los eventos.Conforme pasa el tiempo, las curvas reflejan su valor
                                 gradualmente conforme se acerca la recompensa, pero estas curvas jamas se cruzan. Por lo que, 
                                 decisiones entre los mismos resultados separados por la misma cantidad de tiempo, pueden ser 
                                 consistentes con este modelo. '),
                               tags$li("Modelo de Descuento Hiperbólico", withMathJax('$$V=\\frac{A}{1+\\kappa \\cdot t}$$'))),
                                p('Debido a que este fenómeno no puede ser explicado por el modelo de descuento exponencial, 
                                  por lo que se requiere un modelo que permita que las curvas de valor se crucen. Una función 
                                  aplicada en muchos estudios de elección intertemporal es la función hiperbólica. Cuando las 
                                  recompensas están lejanas, la grande y más demorada es preferida a la cercana pero pequeña. 
                                  Sin embargo, cuando pasan la mayoría de los meses de la demora, la recompensa pequeña es 
                                  preferida (Newell, B. et al, 2015). La curva muestra cómo el valor subjetivo puede cambiar
                                  como una función del tiempo en el que la recompensa fue evaluada, mostrando cómo el valor
                                  de una recompensa futura es descontada cuando es demorada (Green, L. et al, 2004).'),
                             tags$blockquote('Referencias:'),
                             tags$li('Green, L & Myerson, J. (2004) A Discounting Framework for Choice With Delayed and Probabilistic
                               Rewards. Psychological Bulletin. 130, No. 5, 769-792.'),
                             tags$li('Newell, B., Lagando, A & Shanks, D. (2015) Straight Choices. Analyzing decision II: Prospect theory
                             and preference reversals. Psychology Press. Pp. 434.'))),
                  
                  tabPanel('Simulador Descuento Exponencial',
                           h1("Simulador de Reversión de Preferencias usando Descuento Exponencial"),
                           p('Por Daniela García'),
                           hr(),
                           fluidRow( 
                             column(4, offset = 2,
                                    h4('Grande demorada'),
                                    sliderInput(inputId = 'Demora_Tiempo1_Exp',
                                                label = 'Demora en meses para la grande demorada',
                                                value = 1,
                                                min = 0,
                                                max = 12)),
                             column(4, 
                                    h4('Pequeña inmediata'),
                                    sliderInput(inputId = 'Demora_Tiempo2_Exp',
                                                label = 'Demora en meses para la pequeña inmediata',
                                                value = 2,
                                                min = 0,
                                                max = 12)),
                             
                             plotOutput('grafico_2'))),
                  tabPanel('Simulador Descuento Hiperbólico',
                           h1('Simulador de Reversión de Preferencias usando Descuento Hiperbólico'),
                           p('Por Daniela García'),
                           hr(),
                  fluidRow( 
                    column(4, offset = 2,
                          h4('Grande demorada'),
                          sliderInput(inputId = 'Demora_Tiempo1',
                          label = 'Demora en meses para la grande demorada',
                          value = 12,
                          min = 0,
                          max = 12)),
                   column(4, 
                         h4('Pequeña inmediata'),
                        sliderInput(inputId = 'Demora_Tiempo2',
                                   label = 'Demora en meses para la pequeña inmediata',
                                   value = 3,
                                   min = 0,
                                   max = 12)),
            
                  plotOutput('grafico')))
                  
)))

               
           