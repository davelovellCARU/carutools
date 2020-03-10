
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
ca_orange <- function()   {carutools::ca_all_cols()[["orange"]]}
ca_lime <- function()     {carutools::ca_all_cols()[["lime"]]}
ca_gold <- function()     {carutools::ca_all_cols()[["gold"]]}
ca_purple <- function()   {carutools::ca_all_cols()[["purple"]]}
ca_green <- function()    {carutools::ca_all_cols()[["green"]]}
ca_maroon <- function()   {carutools::ca_all_cols()[["maroon"]]}
ca_cyan <- function()     {carutools::ca_all_cols()[["cyan"]]}
ca_lightteal <- function(){carutools::ca_all_cols()[["lightteal"]]}
ca_brown <- function()    {carutools::ca_all_cols()[["brown"]]}
ca_darkteal <- function() {carutools::ca_all_cols()[["darkteal"]]}
