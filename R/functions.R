ca_cols <-
  function(cols = NULL)
  {
    # All church Army Colours ------------------------------------
    allCaColours <-
      c("orange" = "#e84619",
        "lime" = "#e1de00",
        "gold" = "#fbc900",
        "purple" = "#523178",
        "green" = "#509e2f",
        "maroon" = "#910048",
        "cyan" = "#0092bc",
        "lightteal" = "6c8b93",
        "brown" = "#6f2c3f",
        "darkteal" = "#006272")

    # If no input given, return all input colours :::::::::::::
    if(is.null(cols)) return(allCaColours)

    # Check input ------------------------------------------------
    badinput <- "input must be a character vector of colournames.
    use names(ca_cols()) for a full list of appropriate inputs"
    if(!is.vector(cols)) stop(badinput)
    if(!is.character(cols)) stop(badinput)
    if(!(all(cols %in% names(allCaColours)))) stop(badinput)

    outputCols <- allCaColours[cols]

    return(outputCols)
  }

ca_secondary <-
  function()
  {
    secondaryCols <- c("orange" = "#e84619",
                       "lime" = "#e1de00",
                       "gold" = "#fbc900",
                       "purple" = "#523178",
                       "green" = "#509e2f",
                       "maroon" = "#910048",
                       "cyan" = "#0092bc")
    return(secondaryCols)
  }

ca_tertiary <-
  function()
  {
    tertiaryCols <- c("lightteal" = "6c8b93",
                      "brown" = "#6f2c3f",
                      "darkteal" = "#006272")
    return(tertiaryCols)
  }
