locals {
  lib_js_ci_contexts = [
    "ci-nodejs10-ubuntu-latest",
    "ci-nodejs10-windows-latest",
    "ci-nodejs10-macos-latest",
    "ci-nodejs12-ubuntu-latest",
    "ci-nodejs12-windows-latest",
    "ci-nodejs12-macos-latest",
  ]

  lib_nodejs_v12_to_v14_ci_contexts = [
    "ci-nodejs12-ubuntu-latest",
    "ci-nodejs12-windows-latest",
    "ci-nodejs12-macos-latest",
    "ci-nodejs14-ubuntu-latest",
    "ci-nodejs14-windows-latest",
    "ci-nodejs14-macos-latest",
  ]

  lib_js_active_nodejs_ci_contexts = concat([
    "ci-nodejs10-ubuntu-latest",
    "ci-nodejs10-windows-latest",
    "ci-nodejs10-macos-latest",
  ], local.lib_nodejs_v12_to_v14_ci_contexts)

  lib_nodejs_v12_to_v16_ci_contexts = concat(local.lib_nodejs_v12_to_v14_ci_contexts, [
    "ci-nodejs16-ubuntu-latest",
    "ci-nodejs16-windows-latest",
    "ci-nodejs16-macos-latest",
  ])

  // TODO: Replace all other matrices with this one
  nodejs_multiplatform_ci_contexts = [
    "lib-ci / test-nodejs12-ubuntu-latest",
    "lib-ci / test-nodejs12-macos-latest",
    "lib-ci / test-nodejs12-windows-latest",
    "lib-ci / test-nodejs14-ubuntu-latest",
    "lib-ci / test-nodejs14-macos-latest",
    "lib-ci / test-nodejs14-windows-latest",
    "lib-ci / test-nodejs16-ubuntu-latest",
    "lib-ci / test-nodejs16-macos-latest",
    "lib-ci / test-nodejs16-windows-latest",
  ]
}
