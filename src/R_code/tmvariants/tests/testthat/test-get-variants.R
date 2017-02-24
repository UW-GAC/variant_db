context("get_variants - unit tests")

test_that("get_variants retunrs an error if con is not a valid database 
          connection", {
  con <- character()
  expect_error(get_variants(con, 1, 5),
               "con is not a valid database connection", fixed = TRUE)
})


