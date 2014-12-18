library(shiny)
library(rCharts)
shinyUI(navbarPage("mtcars dataset explorer",tabPanel("Plots",
     selectInput("var1","Variable On X-Axis",names(mtcars)),
     
     selectInput("var2","Variable On Y-Axis",names(mtcars)),
     
     selectInput("var3","Grouping Variable (Optional)",c("No. of Cylinders","V/S Engine" ,"Transmission","Number of forward gears","Number Of Carburetors","No Group")),
     plotOutput('newPlot'),
     showOutput('chart1','nvd3')
),
tabPanel("Documentation",tags$div(HTML("
<h1> mtcars Dataset Explorer</h1>

<p>
This Shiny app plots one variable in the mtcars dataset with another, with or without grouping using a third variable. <br> <br>

The variables are chosen interactively using selection inputs. (Variable on X Axis, Variable On Y-Axis, Grouping Variable) <br><br>

The plots are made using ggplot2 and rCharts. A smoothing curve is also plotted to show relationships. <br><br>
</p>


<h1>Motor Trend Car Road Tests (mtcars Dataset)</h1>
         
         <h2>Description</h2>
         
          <p>
         The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).
         </p>

         <h2>Usage</h2>
         
         mtcars

         <h2>Format</h2>
         
          <p>
         A data frame with 32 observations on 11 variables.
         </p>
          <pre>
[, 1]      mpg	 Miles/(US) gallon
[, 2]	 cyl	 Number of cylinders
[, 3]	 disp	 Displacement (cu.in.)
[, 4]	 hp	 Gross horsepower
[, 5]	 drat	 Rear axle ratio
[, 6]	 wt	 Weight (lb/1000)
[, 7]	 qsec	 1/4 mile time
[, 8]	 vs	 V/S
[, 9]	 am	 Transmission (0 = automatic, 1 = manual)
[,10]	 gear	 Number of forward gears
[,11]	 carb	 Number of carburetors
</pre>


"))
)
)
)
     