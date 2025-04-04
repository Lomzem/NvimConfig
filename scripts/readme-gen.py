import os
import re


class Plugin:
    def __init__(self, spec: str):
        self.spec = spec
        self.creator = spec.split("/")[0]
        self.name = spec.split("/")[-1]
        self.url = f"https://github.com/{spec}"

    def markdown_link(self):
        return f"[{self.name}]({self.url})"


def main():
    os.chdir(os.path.expanduser("~/.config/nvim"))
    OUTFILE = "README.md"

    plugin_regex = r"{\n"
    plugin_regex += r"\s*"
    plugin_regex += r'"([^"]+)'
    plugin_regex += r"[^}]+(?:config|opts)"

    all_plugins = []
    colorschemes = []

    for file in os.listdir("./lua/plugins"):
        with open(f"./lua/plugins/{file}", "r") as f:
            content = f.read()
            search = re.findall(plugin_regex, content)
            if search is None:
                continue
            if "colorschemes" in file:
                colorschemes += [Plugin(spec) for spec in search]
            else:
                all_plugins += [Plugin(spec) for spec in search]

    all_plugins.sort(key=lambda x: x.name.lower())
    colorschemes.sort(key=lambda x: x.spec.lower())

    with open("./scripts/readme-base.md", "r") as f:
        base = f.read()

    with open(OUTFILE, "w+") as f:
        f.write(base)
        f.write("\n\n## Plugins I'm Using\n")
        for plugin in all_plugins:
            f.write("* ")
            f.write(plugin.markdown_link())
            f.write("\n")

        f.write("\nList auto-generated by [scripts/readme-gen.py](scripts/readme-gen.py)\n")


if __name__ == "__main__":
    main()
