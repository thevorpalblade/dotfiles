#!/usr/bin/gnuplot

#some useful global settings
set grid

#define function
f(x) = a + b*x**2

#guess at constants
a=1
b=3

#to plot a data file
plot 'sample.data'

#make gnuplot wait for us to look at the plot, and hit enter
pause -1

#plot it with error bars
plot 'sample.data' with yerrorbars
pause -1

#plot it with the function overlaid
plot 'sample.data' with yerrorbars, f(x)
pause -1



#switch the x and y of the data. Note since column 3 was the y error before,
#its now the x error, so instruct gnuplot accordingly.
plot 'sample.data' with xerrorbars using 2:1:3
pause -1

#fit the data to f(x)
fit f(x) 'sample.data' using 1:2:3 via a,b

#now a and b contain the fitted parameters, so if we plot, it will be
#the result of the fit.

plot 'sample.data' with yerrorbars, f(x)
pause -1


#to save a plot as an eps:
set term postscript eps enhanced color
set out "example.eps"
replot #plots the most recent plot again, this time to an eps
set term postscript monochrome
set out "example-bw.eps"

#put things back to normal
set term wxt #or x11
set out

