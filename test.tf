module "one" {
  source = "./modules/one"
}

module "two" {
  source = "./modules/two"
  # fail = "a,b"
  fail = "${module.one.fail}"
}
