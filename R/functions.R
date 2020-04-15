
# Retrurn secondary colours as vector -------------------------------------
ca_secondary_cols <- function(with.names = FALSE) {
  cols <-
    c(
      "orange" = "#e84619",
      "lime" = "#e1de00",
      "gold" = "#fbc900",
      "purple" = "#523178",
      "green" = "#509e2f",
      "maroon" = "#910048",
      "cyan" = "#0092bc"
    )

  if(!with.names) names(cols) <- NULL

  return(cols)
}

# Retrurn tertiary colours as vector --------------------------------------
ca_tertiary_cols <- function(with.names = FALSE) {
  cols <-
  c("lightteal" = "#6c8b93",
    "brown" = "#6f2c3f",
    "darkteal" = "#006272")

  if(!with.names) names(cols) <- NULL

  return(cols)
}

# Return all colours as vector
ca_all_cols <- function(with.names = FALSE){
  c(carutools::ca_secondary_cols(with.names = with.names),
    carutools::ca_tertiary_cols(with.names = with.names))}

## Return individual Colours ----------------------------------------------
ca_orange <- function()   {carutools::ca_all_cols(with.names = TRUE)[["orange"]]}
ca_lime <- function()     {carutools::ca_all_cols(with.names = TRUE)[["lime"]]}
ca_gold <- function()     {carutools::ca_all_cols(with.names = TRUE)[["gold"]]}
ca_purple <- function()   {carutools::ca_all_cols(with.names = TRUE)[["purple"]]}
ca_green <- function()    {carutools::ca_all_cols(with.names = TRUE)[["green"]]}
ca_maroon <- function()   {carutools::ca_all_cols(with.names = TRUE)[["maroon"]]}
ca_cyan <- function()     {carutools::ca_all_cols(with.names = TRUE)[["cyan"]]}
ca_lightteal <- function(){carutools::ca_all_cols(with.names = TRUE)[["lightteal"]]}
ca_brown <- function()    {carutools::ca_all_cols(with.names = TRUE)[["brown"]]}
ca_darkteal <- function() {carutools::ca_all_cols(with.names = TRUE)[["darkteal"]]}
