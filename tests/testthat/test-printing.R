context("printing")

test_that("can override printing with proto_print", {
  x <- proto(proto_print = function(.) 10)
  expect_output(print(x), "10")
})

test_that("default object prints as environment", {
  x <- proto()
  expect_output(print(x), "environment")
})
