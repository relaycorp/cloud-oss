locals {
  nodejs_lib_min_v20_ci_contexts = ["ci / nodejs20"]
  nodejs_lib_ci_contexts = concat([
    "ci / nodejs18",
  ], local.nodejs_lib_min_v20_ci_contexts)

  lib_jvm_ci_contexts = [
    "ci / java17-ubuntu-latest",
    "ci / java17-macos-latest",
    "ci / java17-windows-latest",
  ]
}
