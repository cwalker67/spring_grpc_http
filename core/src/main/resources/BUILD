package(default_visibility = ["//visibility:public"])

java_library(
    name = "resources",
    resources = glob(["**"],exclude=["BUILD"]),
    resource_strip_prefix = "%s/" % package_name(),
)