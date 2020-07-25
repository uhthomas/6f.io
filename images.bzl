def images(*tags):
    images = {}
    for tag in tags:
        if tag:
            images["docker.pkg.github.com/uhthomas/6f.io/root:{tag}"] = ":image"
    return images
