load("@rules_proto//proto:defs.bzl", "proto_library")
load("@rules_cc//cc:defs.bzl", "cc_proto_library")
load("@com_github_grpc_grpc//bazel:cc_grpc_library.bzl", "cc_grpc_library")

package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # Apache 2

proto_library(
  name = "tracing_protocol_proto_lib",
  srcs = ["Tracing.proto"],
  deps = ["//common:common_protocol_proto_lib"],
)

cc_proto_library(
  name = "tracing_protocol_cc_proto",
  deps = [":tracing_protocol_proto_lib"],
)

cc_grpc_library(
  name = "tracing_protocol_cc_grpc",
  srcs = [":tracing_protocol_proto_lib"],
  deps = [":tracing_protocol_cc_proto"],
  grpc_only = True,
)
