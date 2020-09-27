load("@py_deps//:requirements.bzl", "requirement")
load("@rules_python//python:defs.bzl", "py_library")

def simple_module(name):
    py_library(
        name = name,
        srcs = ["{}.py".format(name)],
        visibility = ["//visibility:public"],
        deps = [
            requirement("numpy"),
            requirement("torch"),
        ],
    )
