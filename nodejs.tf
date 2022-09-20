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
}
