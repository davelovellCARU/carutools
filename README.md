# carutools
A toolbox of functions useful to Church Army's Research Unit. Currently only contains three functions:

- `ca_col()`
- `ca_secondary()` 
- `ca_tertiary()`

## `ca_col()`

This function returns the hexademical code of one or more Church Army colours by name. 

Note that these names are consistent with Church Army branding guides, rather than strictly accurate. 

### Example:

`ca_col(c("lightteal", "lime"))`

## `ca_secondary`

This function returns a charcter vector containing the hexadecimal codes for the Church Army secondary pallete:
`c("orange" = "#e84619", "lime" = "#e1de00", "gold" = "#fbc900", "purple" = "#523178", "green" = "#509e2f", "maroon" = "#910048", "cyan" = "#0092bc")`

### Example:

```{r}
ggplot(data, aes(x = var1, y = var2) +
  geom_bar(stat = "identity") +
  scale_fill_discrete(values = carutools::ca_secondary())
```

## `ca_tertiary`

This function returns a charcter vector containing the hexadecimal codes for the Church Army secondary pallete:
`c("lightteal" = "6c8b93", "#6f2c3f", "darkteal" = "#006272")`

### Example:

```{r}
ggplot(data, aes(x = var1, y = var2) +
  geom_bar(stat = "identity") +
  scale_fill_discrete(values = carutools::ca_tertiary())
```
