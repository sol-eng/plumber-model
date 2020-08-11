# The interface for setting the api specification changed with plumber 1.0
# and so this no longer reflects what's in the rstudio conference talk. This 
# is the current way to set the request body in swagger.

library(plumber)

pr <- plumb("plumber.R")

pr <- pr %>%
  pr_set_api_spec(function(spec) {
      # Define request body for POST to /predict
      spec$paths$`/predict`$post$requestBody <- list(
        description = "New data to predict",
        required = TRUE,
        content = list(
          `application/json` = list(
            # Define JSON schema
            schema = list(
              title = "Car",
              required = c("cyl", "hp"),
              properties = list(
                cyl = list(
                  type = "integer"
                ),
                hp = list(
                  type = "integer"
                )
              )
            )
          )
        )
      )
      spec
    }) 
pr