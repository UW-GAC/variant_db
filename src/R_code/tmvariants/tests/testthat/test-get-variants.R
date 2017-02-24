context("get_variants - unit tests")

test_that("get_variants retunrs an error if con is not a valid database
          connection", {
  con <- "badcon"
  expect_error(get_variants(con, 1, 5),
               "badcon is not a valid database connection", fixed = TRUE)
})
