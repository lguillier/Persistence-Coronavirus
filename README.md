Data and model related to coronaviruses inactivation 
========
## Contents
  * [Introduction](#introduction)
  * [Collecting the kinetics](#collecting)
  * [Retrieving log10 D values from kinetics](#retrieve)
  * [Licence](#licence)
  
## Introduction

This repository aims at providing data and models relative to virus from Coronaviridae family. 
This project is constituted of three main parts: (i) the collection of coronavirus kinetics from publications

![](workflow2.tif?raw=true "Data and modelling workflow")

## Collecting the kinetics

The first part focuses on the collection of raw kinetics values of coronaviruses from 26 published studies (regular articles or pre-prints). Images of relevant graphs showing inactivation kinetics were grapped. All the images (in .jpeg format) are stored in Data/figures folder.
The digitize_FigsTabs.r script helps to get the kinetics from these images. It uses the digitize() function from the digitize R package. As the collection of values from digitized images is a manual process, minor differences could be found according to users. Indeed the digitisation process requires the user input from the mouse (to calibrate the graph axis, and to digitize the data).
This script also summarizes the kinetics values gathered in publication' tables. The ouput from this script is the inactivation_kinetics.Rdata (102 kinetics). The time is expressed in hours, the inactivation is expressed in log10 of infectious virus concentration.
  

## Retrieving log10 D values from kinetics

The second part is related to the estimation of D values from the inactivation kinetics. It relies on the estimate_Dvalues script

## Licence
This project is licensed under the terms of the GPLv3 license.