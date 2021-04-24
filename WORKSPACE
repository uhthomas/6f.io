# gazelle:repository_macro go_deps.bzl%go_dependencies
workspace(name = "com_github_uhthomas_6f_io")

load("//:deps.bzl", "dependencies")

dependencies()

load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")

rules_pkg_dependencies()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(go_version = "1.16.3")

load("//:go_deps.bzl", "go_dependencies")

go_dependencies()

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")

container_repositories()

load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")

container_deps()

load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

container_pull(
    name = "nginx",
    # v1.20.0-alpine (linux/amd64)
    digest = "sha256:55684c622b7b62045bd4578e402704bdd1923f6ab704f57134e712c2f1da48c8",
    registry = "index.docker.io",
    repository = "library/nginx",
)
