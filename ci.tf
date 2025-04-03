locals {
  nodejs_lib_ci_contexts = concat([
    "ci / nodejs20",
    "ci / nodejs22",
  ])

  lib_jvm_ci_contexts = [
    "ci / java17-ubuntu-latest",
    "ci / java17-macos-latest",
    "ci / java17-windows-latest",
  ]
}
