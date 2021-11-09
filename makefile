# rule for making report
report.pdf: Rmd/report.Rmd data/cleandata.csv
	Rscript -e "rmarkdown::render('Rmd/report.Rmd', quiet = TRUE)"

# rule for cleaning data
data/cleandata.csv: R/cleandata.R data/CA_ED_INFO550.csv
	Rscript R/cleandata.R