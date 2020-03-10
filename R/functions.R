
# Retrurn secondary colours as vector -------------------------------------
ca_secondary_cols <- function() {c("orange" = "#e84619",
                                  "lime" = "#e1de00",
                                  "gold" = "#fbc900",
                                  "purple" = "#523178",
                                  "green" = "#509e2f",
                                  "maroon" = "#910048",
                                  "cyan" = "#0092bc")}

# Retrurn tertiary colours as vector --------------------------------------
ca_tertiary_cols <- function() {c("lightteal" = "#6c8b93",
                                 "brown" = "#6f2c3f",
                                 "darkteal" = "#006272")}
# Return all colours as vector
ca_all_cols <- function(){c(carutools::ca_secondary_cols(),
                            carutools::ca_tertiary_cols())}

## Return individual Colours ----------------------------------------------
ca_orange <- function()   {carultools::ca_allcols()[["orange"]]}
ca_lime <- function()     {carultools::ca_allcols()[["lime"]]}
ca_gold <- function()     {carultools::ca_allcols()[["gold"]]}
ca_purple <- function()   {carultools::ca_allcols()[["purple"]]}
ca_green <- function()    {carultools::ca_allcols()[["green"]]}
ca_maroon <- function()   {carultools::ca_allcols()[["maroon"]]}
ca_cyan <- function()     {carultools::ca_allcols()[["cyan"]]}
ca_lightteal <- function(){carultools::ca_allcols()[["lightteal"]]}
ca_brown <- function()    {carultools::ca_allcols()[["brown"]]}
ca_darkteal <- function() {carultools::ca_allcols()[["darkteal"]]}
