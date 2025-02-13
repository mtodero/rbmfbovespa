
test_that("convert indic to csv", {
  f <- system.file("extdata/Indic.txt", package = "rb3")

  res <- convert_to(f, format = "csv")
  expect_true(file.exists(res))

  res <- convert_to(f, template = "Indic", format = "csv")
  expect_true(file.exists(res))
  unlink(res)
})

test_that("convert indic to json", {
  f <- system.file("extdata/Indic.txt", package = "rb3")

  res <- convert_to(f, format = "json")
  expect_true(file.exists(res))
  unlink(res)
})