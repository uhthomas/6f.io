load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def dependencies():
    http_archive(
        name = "bazel_gazelle",
        sha256 = "222e49f034ca7a1d1231422cdb67066b885819885c356673cb1f72f748a3c9d4",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.3/bazel-gazelle-v0.22.3.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.22.3/bazel-gazelle-v0.22.3.tar.gz",
        ],
    )
    http_archive(
        name = "com_github_bazelbuild_buildtools",
        sha256 = "b8b69615e8d9ade79f3612311b8d0c4dfe01017420c90eed11db15e9e7c9ff3c",
        strip_prefix = "buildtools-4.2.1",
        url = "https://github.com/bazelbuild/buildtools/archive/4.2.1.tar.gz",
    )
    http_archive(
        name = "rules_pkg",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.5.1/rules_pkg-0.5.1.tar.gz",
            "https://github.com/bazelbuild/rules_pkg/releases/download/0.5.1/rules_pkg-0.5.1.tar.gz",
        ],
        sha256 = "a89e203d3cf264e564fcb96b6e06dd70bc0557356eb48400ce4b5d97c2c3720d",
    )
    http_archive(
        name = "rules_proto",
        sha256 = "36476f17a78a4c495b9a9e70bd92d182e6e78db476d90c74bac1f5f19f0d6d04",
        strip_prefix = "rules_proto-fcad4680fee127dbd8344e6a961a28eef5820ef4",
        urls = ["https://github.com/bazelbuild/rules_proto/archive/fcad4680fee127dbd8344e6a961a28eef5820ef4.tar.gz"],
    )
    http_archive(
        name = "rules_python",
        sha256 = "954aa89b491be4a083304a2cb838019c8b8c3720a7abb9c4cb81ac7a24230cea",
        urls = ["https://github.com/bazelbuild/rules_python/releases/download/0.4.0/rules_python-0.4.0.tar.gz"],
    )
    http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "1f4e59843b61981a96835dc4ac377ad4da9f8c334ebe5e0bb3f58f80c09735f4",
        strip_prefix = "rules_docker-0.19.0",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.19.0/rules_docker-v0.19.0.tar.gz"],
    )
    http_archive(
        name = "io_bazel_rules_go",
        sha256 = "7904dbecbaffd068651916dce77ff3437679f9d20e1a7956bff43826e7645fcc",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.25.1/rules_go-v0.25.1.tar.gz",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.25.1/rules_go-v0.25.1.tar.gz",
        ],
    )
    http_archive(
        name = "screensaver",
        build_file = "//:src.bazel",
        sha256 = "eaf5dfa4cdcd62404c5fc7e12a29be0171c779cada632643e81c91e336b39bff",
        strip_prefix = "screensaver-2830e0652bf53a419ec4f7c5a93c1cc5c8f05243",
        urls = ["https://github.com/uhthomas/screensaver/archive/2830e0652bf53a419ec4f7c5a93c1cc5c8f05243.tar.gz"],
    )
    http_archive(
        name = "spectrum",
        build_file = "//:src.bazel",
        sha256 = "645b27ab0bf1039ae81013b7a9280fb962ce101ece3fa1a0bd56fef4b24c67c8",
        strip_prefix = "spectrum-f4e1c9b6fe6e86942bad4ec37694d897c4bde340",
        urls = ["https://github.com/uhthomas/spectrum/archive/f4e1c9b6fe6e86942bad4ec37694d897c4bde340.tar.gz"],
    )
