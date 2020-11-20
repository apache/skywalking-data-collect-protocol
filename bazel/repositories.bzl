load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def skywalking_data_collect_protocol_dependencies():
  rules_proto()
  com_github_grpc_grpc()

def com_github_grpc_grpc():
  http_archive(
    name = "com_github_grpc_grpc",
    sha256 = "3ccc4e5ae8c1ce844456e39cc11f1c991a7da74396faabe83d779836ef449bce",
    urls = ["https://github.com/grpc/grpc/archive/v1.27.0.tar.gz"],
    strip_prefix = "grpc-1.27.0",
  )

def rules_proto():
  http_archive(
    name = "rules_proto",
    sha256 = "602e7161d9195e50246177e7c55b2f39950a9cf7366f74ed5f22fd45750cd208",
    strip_prefix = "rules_proto-97d8af4dc474595af3900dd85cb3a29ad28cc313",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/97d8af4dc474595af3900dd85cb3a29ad28cc313.tar.gz",
    ],
  )
