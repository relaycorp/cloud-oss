locals {
  nodejs_lib_min_v20_ci_contexts = [
    "ci / test-nodejs20-ubuntu-latest",
    "ci / test-nodejs20-macos-latest",
    "ci / test-nodejs20-windows-latest",
  ]
  nodejs_lib_min_v18_ci_contexts = concat([
    "ci / test-nodejs18-ubuntu-latest",
    "ci / test-nodejs18-macos-latest",
    "ci / test-nodejs18-windows-latest",
  ], local.nodejs_lib_min_v20_ci_contexts)
  nodejs_lib_ci_contexts = concat([
    "ci / test-nodejs16-ubuntu-latest",
    "ci / test-nodejs16-macos-latest",
    "ci / test-nodejs16-windows-latest",
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
