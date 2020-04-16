### CA Colour Functions

# Retrurn secondary colours as vector -------------------------------------
ct_secondary_cols <- function(with.names = FALSE) {
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
ct_tertiary_cols <- function(with.names = FALSE) {
  cols <-
  c("lightteal" = "#6c8b93",
    "brown" = "#6f2c3f",
    "darkteal" = "#006272")

  if(!with.names) names(cols) <- NULL

  return(cols)
}

# Return all colours as vector
ct_all_cols <- function(with.names = FALSE){
  c(carutools::ca_secondary_cols(with.names = with.names),
    carutools::ca_tertiary_cols(with.names = with.names))}

## Return individual Colours ----------------------------------------------
ct_orange <- function()   {carutools::ca_all_cols(with.names = TRUE)[["orange"]]}
ct_lime <- function()     {carutools::ca_all_cols(with.names = TRUE)[["lime"]]}
ct_gold <- function()     {carutools::ca_all_cols(with.names = TRUE)[["gold"]]}
ct_purple <- function()   {carutools::ca_all_cols(with.names = TRUE)[["purple"]]}
ct_green <- function()    {carutools::ca_all_cols(with.names = TRUE)[["green"]]}
ct_maroon <- function()   {carutools::ca_all_cols(with.names = TRUE)[["maroon"]]}
ct_cyan <- function()     {carutools::ca_all_cols(with.names = TRUE)[["cyan"]]}
ct_lightteal <- function(){carutools::ca_all_cols(with.names = TRUE)[["lightteal"]]}
ct_brown <- function()    {carutools::ca_all_cols(with.names = TRUE)[["brown"]]}
ct_darkteal <- function() {carutools::ca_all_cols(with.names = TRUE)[["darkteal"]]}

### Show spelling mistakes for every character column in a tibble
### Note this only works with the development version of dplry
ct_tibble_spellcheck <- function(data) {
  dplyr::transmute(data, dplyr::across(is.character, hunspell::hunspell))
}

### Get regex for UK postcodes
ct_postcode_regex <- function(anchors = TRUE){
  if(anchors) "^(([gG][iI][rR] {0,}0[aA]{2})|((([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y]?[0-9][0-9]?)|(([a-pr-uwyzA-PR-UWYZ][0-9][a-hjkstuwA-HJKSTUW])|([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y][0-9][abehmnprv-yABEHMNPRV-Y]))) {0,}[0-9][abd-hjlnp-uw-zABD-HJLNP-UW-Z]{2}))$"
  else "^(([gG][iI][rR] {0,}0[aA]{2})|((([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y]?[0-9][0-9]?)|(([a-pr-uwyzA-PR-UWYZ][0-9][a-hjkstuwA-HJKSTUW])|([a-pr-uwyzA-PR-UWYZ][a-hk-yA-HK-Y][0-9][abehmnprv-yABEHMNPRV-Y]))) {0,}[0-9][abd-hjlnp-uw-zABD-HJLNP-UW-Z]{2}))$"
}

ct_is_postcode <- function(vector) stringr::str_detect(vector, carutools::ct_postcode_regex(anchors = TRUE))
ct_contains_postcode <- function(vector) stringr::str_detect(vector, carutools::ct_postcode_regex(anchors = FALSE))

ct_extract_postcode <- function(vector, extract.all = FALSE){

   if(extract.all) extract.function <- stringr::str_extract_all
  else extract.function <- stringr::str_extract

  result <- extract.function(vector)
  return(result)
}
