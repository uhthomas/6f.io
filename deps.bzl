load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def dependencies():
    http_archive(
        name = "bazel_gazelle",
        sha256 = "de69a09dc70417580aabf20a28619bb3ef60d038470c7cf8442fafcf627c21cb",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
            "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.24.0/bazel-gazelle-v0.24.0.tar.gz",
        ],
    )
    http_archive(
        name = "com_github_bazelbuild_buildtools",
        sha256 = "ae34c344514e08c23e90da0e2d6cb700fcd28e80c02e23e4d5715dddcb42f7b3",
        strip_prefix = "buildtools-4.2.2",
        url = "https://github.com/bazelbuild/buildtools/archive/4.2.2.tar.gz",
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
        sha256 = "83c8798f5a4fe1f6a13b5b6ae4267695b71eed7af6fbf2b6ec73a64cf01239ab",
        strip_prefix = "rules_proto-b22f78685bf62775b80738e766081b9e4366cdf0",
        urls = ["https://github.com/bazelbuild/rules_proto/archive/b22f78685bf62775b80738e766081b9e4366cdf0.tar.gz"],
    )
    http_archive(
        name = "rules_python",
        sha256 = "954aa89b491be4a083304a2cb838019c8b8c3720a7abb9c4cb81ac7a24230cea",
        urls = ["https://github.com/bazelbuild/rules_python/releases/download/0.4.0/rules_python-0.4.0.tar.gz"],
    )
    http_archive(
        name = "io_bazel_rules_docker",
        sha256 = "92779d3445e7bdc79b961030b996cb0c91820ade7ffa7edca69273f404b085d5",
        strip_prefix = "rules_docker-0.20.0",
        urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.20.0/rules_docker-v0.20.0.tar.gz"],
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
