module "awala_courier_android" {
  source  = "relaycorp/oss-project/github"
  version = "2.8.0"

  name        = "letro-android"
  description = "Letro for Android"
  licence     = "gplv3"
  topics      = ["letro", "android"]
  ci_contexts = ["Run static checks and tests"]
}
