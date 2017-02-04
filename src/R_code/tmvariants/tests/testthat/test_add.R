context('add')
test_that('add works', {
  expect_equal(add(1,1), 2)
  expect_equal(add(1,2), 3)
  expect_equal(add(1,100), 101)
})
