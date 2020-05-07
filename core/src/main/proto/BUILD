package(default_visibility = ["//visibility:public"])

load("@rules_proto//proto:defs.bzl", "proto_library")
load("@io_grpc_grpc_java//:java_grpc_library.bzl", "java_grpc_library")

proto_library(
    name = "ping_proto",
    srcs = ["ping.proto"]
)

java_proto_library(
    name = "ping_java_proto",
    deps = [":ping_proto"],
)

java_grpc_library(
    name = "ping_java_grpc",
    srcs = [":ping_proto"],
    deps = [":ping_java_proto"],
)