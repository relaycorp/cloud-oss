locals {
  nodejs_lib_min_v16_ci_contexts = [
    "ci / test-nodejs16-ubuntu-latest",
    "ci / test-nodejs16-macos-latest",
    "ci / test-nodejs16-windows-latest",
    "ci / test-nodejs18-ubuntu-latest",
    "ci / test-nodejs18-macos-latest",
    "ci / test-nodejs18-windows-latest",
  ]
  nodejs_lib_ci_contexts = concat([
    "ci / test-nodejs14-ubuntu-latest",
    "ci / test-nodejs14-macos-latest",
    "ci / test-nodejs14-windows-latest",
  ], local.nodejs_lib_min_v16_ci_contexts)

  lib_jvm_ci_contexts = [
    "ci / java8-ubuntu-latest",
    "ci / java11-ubuntu-latest",
    "ci / java8-macos-latest",
    "ci / java11-macos-latest",
    "ci / java8-windows-latest",
    "ci / java11-windows-latest"
  ]
}
