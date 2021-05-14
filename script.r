source('./r_files/flatten_HTML.r')

############### Library Declarations ###############
libraryRequireInstall("sunburstR")
####################################################

############# Create and save widget ###############
library(sunburstR)

p = sunburst(Values,percent=FALSE);

internalSaveWidget(p, 'out.html');
####################################################
