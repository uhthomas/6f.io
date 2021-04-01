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
        sha256 = "c28eef4d30ba1a195c6837acf6c75a4034981f5b4002dda3c5aa6e48ce023cf1",
        strip_prefix = "buildtools-4.0.1",
        url = "https://github.com/bazelbuild/buildtools/archive/4.0.1.tar.gz",
    )
    http_archive(
        name = "rules_pkg",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
            "https://github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
        ],
        sha256 = "038f1caa773a7e35b3663865ffb003169c6a71dc995e39bf4815792f385d837d",
    )
    http_archive(
        name = "rules_proto",
        sha256 = "9fc210a34f0f9e7cc31598d109b5d069ef44911a82f507d5a88716db171615a8",
        strip_prefix = "rules_proto-f7a30f6f80006b591fa7c437fe5a951eb10bcbcf",
        urls = ["https://github.com/bazelbuild/rules_proto/archive/f7a30f6f80006b591fa7c437fe5a951eb10bcbcf.tar.gz"],
    )
    http_archive(
        name = "rules_python",
        sha256 = "b6d46438523a3ec0f3cead544190ee13223a52f6a6765a29eae7b7cc24cc83a0",
        urls = ["https://github.com/bazelbuild/rules_python/releases/download/0.1.0/rules_python-0.1.0.tar.gz"],
    )

    # pin to e15c9ebf203b7fa708e69ff5f1cdcf427d7edf6f, as sequential container_push
    # is not available in v0.15.0
    http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "9cf51e6168bff8c7b59128a636c437b3ffdebe450e50a37baada4364a15718d5",
        strip_prefix = "rules_docker-6c3c59bced2d6c43bde36cf7338b01b9c8fba523",
        urls = ["https://github.com/bazelbuild/rules_docker/archive/6c3c59bced2d6c43bde36cf7338b01b9c8fba523.tar.gz"],
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
