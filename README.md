# R Shiny Workshop

R Shiny Workshop materials by Christina Maimone from [Northwestern Research Computing Services](http://www.it.northwestern.edu/research/).  


# Software and Files

For this workshop, you'll need to install some R packages and download the workshop files from this repository.  See [R/Rstudio Installation/Access Instructions](https://sites.northwestern.edu/researchcomputing/resources/r-and-rstudio/), and [Downloading from GitHub](https://sites.northwestern.edu/researchcomputing/resources/downloading-from-github/)

Install these packages and their dependencies:

* tidyverse
* shiny
* rmarkdown
* DT
* shinythemes
* rsconnect (optional, for deploying to shinyapps.io)

```r
install.packages(c("tidyverse", "shiny", "rmarkdown", "DT", "shinythemes", "rsconnect"), 
                 repos="http://cran.rstudio.com")
```


Keynote and Powerpoint versions of the slides will be included when you download the repository (below).  If you don't have either of these programs, try opening the slides with [Google Slides](https://docs.google.com/presentation/u/0/) or [PowerPoint Online](https://support.office.com/en-us/article/view-a-presentation-without-powerpoint-2f1077ab-9a4e-41ba-9f75-d55bd9b231a6).


# Deploying Shiny Apps

One option for deploying Shiny applications to share with others is http://shinyapps.io.  This is a service of RStudio, and there is a free account option.  This workshop includes information on deploying your application to this service; this is an optional step.  


# Shiny Resources

[Shiny Documentation](https://shiny.rstudio.com): reference, articles, tutorials, gallery, etc.  Start here.

[Shiny Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/shiny.pdf)

[Shiny Examples](https://github.com/rstudio/shiny-examples): code for all of the examples in the official documentation and more

[Shiny Essentials Workshop Materials](https://github.com/rstudio-education/shiny-sdss18) from Mine Çetinkaya-Rundel

[Shiny and RMarkdown Workshop Materials](https://github.com/rstudio-education/intro-shiny-rmarkdown) from Mine Çetinkaya-Rundel

[Webinars from RStudio](https://www.rstudio.com/resources/webinars/): look for the Shiny and Advanced Shiny sections

# Acknowledgements

These workshop materials are largely based on various Shiny workshops, tutorials, and courses created by [Mine Çetinkaya-Rundel](https://github.com/mine-cetinkaya-rundel).  