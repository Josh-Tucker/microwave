# 🛸 Microwave

Dev image for Distrobox based on [boxkit](https://github.com/ublue-os/boxkit/tree/main).

## Contents

* Based on fedora 38 toolbox image
* Installs additional packages listed in `packages` file
* Symlinks handy tools from host OS  (Silverblue Specific)

## Setup

Distrobox:

```bash
distrobox create -i ghcr.io/josh-tucker/microwave -n microwave
distrobox enter microwave
```

Toolbox:

```bash
toolbox create -i ghcr.io/josh-tucker/microwave -c microwave
toolbox enter microwave
```

## Usage

Goes well with my [dotfiles](https://github.com/Josh-Tucker/dotfiles).

Use [Chezmoi](https://www.chezmoi.io/) to apply once Distrobox container is spun up

