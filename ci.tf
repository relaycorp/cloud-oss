locals {
  nodejs_lib_min_v20_ci_contexts = ["ci / nodejs20"]
  nodejs_lib_min_v18_ci_contexts = concat([
    "ci / nodejs18",
  ], local.nodejs_lib_min_v20_ci_contexts)
  nodejs_lib_ci_contexts = concat([
    "ci / nodejs16",
  ], local.nodejs_lib_min_v18_ci_contexts)

  jvm_java11_ci_contexts = [
    "ci / java11-ubuntu-latest",
    "ci / java11-macos-latest",
    "ci / java11-windows-latest",
  ]
  lib_jvm_ci_contexts = concat(local.jvm_java11_ci_contexts, [
    "ci / java17-ubuntu-latest",
    "ci / java17-macos-latest",
    "ci / java17-windows-latest",
  ])
}
