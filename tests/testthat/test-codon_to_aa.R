test_that("translation successful", {
  expect_equal(codon_to_aa("AUG"),"M")
})

test_that("translation successful", {
  expect_equal(codon_to_aa("CGC"),"R")
})

