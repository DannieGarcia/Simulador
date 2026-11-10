# Simulador de Reversión de Preferencias Intertemporales

## Descripción del proyecto

Este proyecto consiste en una aplicación interactiva desarrollada en R mediante el paquete Shiny, cuyo objetivo es ilustrar el fenómeno de **reversión de preferencias temporales** a través de dos modelos matemáticos de descuento: el exponencial y el hiperbólico.

El simulador permite modificar los parámetros asociados a la demora de dos recompensas y observar cómo cambia su valor subjetivo a lo largo del tiempo. De esta manera, facilita la exploración visual de las diferencias entre ambos modelos y de cómo pueden explicar distintos patrones de elección.

El proyecto fue desarrollado durante mis estudios de Licenciatura en Psicología en la Universidad Nacional Autónoma de México (UNAM).

## Fundamento teórico

La reversión de preferencias intertemporales ocurre cuando una persona cambia su preferencia entre dos recompensas conforme se aproxima el momento de recibirlas. Este fenómeno puede observarse, por ejemplo, cuando una recompensa mayor pero demorada es preferida inicialmente frente a una recompensa menor, pero la preferencia cambia cuando ambas se aproximan en el tiempo.

El simulador presenta dos funciones utilizadas para estudiar el descuento de recompensas demoradas:

## Funcionamiento del simulador

La aplicación está organizada en tres secciones:

- **Teoría:** introducción al fenómeno de reversión de preferencias temporales y explicación de los modelos de descuento.
- **Simulador de descuento exponencial:** permite modificar las demoras de las recompensas y visualizar sus curvas de descuento.
- **Simulador de descuento hiperbólico:** permite explorar cómo cambia el valor subjetivo de las recompensas mediante la función hiperbólica.

Los controles interactivos permiten modificar los valores de demora y observar las representaciones gráficas correspondientes.

## Tecnologías utilizadas

- R
- Shiny
- shinythemes
- Gráficas con funciones base de R
- MathJax para la representación de expresiones matemáticas

## Estructura del repositorio

```text
Simulador/
│
├── ui.R
└── server.R
```

- `ui.R`: define la interfaz de usuario, las secciones informativas, los controles interactivos y los espacios destinados a las gráficas.
- `server.R`: contiene la lógica de los modelos matemáticos, los cálculos del valor subjetivo y la generación de las gráficas.

## Referencias

Green, L., & Myerson, J. (2004). A discounting framework for choice with delayed and probabilistic rewards. *Psychological Bulletin, 130*(5), 769–792.

Newell, B. R., & Shanks, D. R. (2015). *Straight choices: The psychology of decision making*. Psychology Press.

## Autora

Daniela García

Licenciatura en Psicología  
Universidad Nacional Autónoma de México (UNAM)
