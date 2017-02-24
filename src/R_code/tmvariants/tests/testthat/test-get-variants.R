context("get_variants - unit tests")

test_that("get_variants retunrs an error if con is not a valid database
          connection", {
  con <- "badcon"
  expect_error(get_variants(con, 1, 5),
               "badcon is not a valid database connection", fixed = TRUE)
})

test_that("get_variants returns an error if chromosome is not 1-22, x, or y", {
  fakecon <- "fakecon"
  class(fakecon) <- "MySQLConnection"
  expect_error(get_variants(fakecon, 23, 1),
               "chromosome argument must be 1-22, X, or Y", fixed = TRUE)
})

test_that("get_variants returns an error if start is not numeric", {
  fakecon <- "fakecon"
  class(fakecon) <- "MySQLConnection"
  expect_error(get_variants(fakecon, 1, "a"),
               "start argument must be numeric", fixed = TRUE)
})

test_that("get_variants returns an error if end is not numeric", {
  fakecon <- "fakecon"
  class(fakecon) <- "MySQLConnection"
  expect_error(get_variants(fakecon, 1, 1, "a"),
               "end argument must be numeric or NULL", fixed = TRUE)
})
