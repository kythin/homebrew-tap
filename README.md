# homebrew-tap

Private Homebrew tap for stable releases of kythin's CLI tools.
Releases here are manually promoted from the [beta tap](https://github.com/kythin/homebrew-tap-beta).

## Prerequisites

This tap is private. Set your GitHub token so Homebrew can authenticate:

```sh
export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)
```

Add this to your shell profile (`~/.zshrc` or `~/.bashrc`) to make it permanent.

## Install

Add the tap, then install whichever tools you want:

```sh
brew tap kythin/tap https://github.com/kythin/homebrew-tap
```

### checkydo

Fast, concurrent name availability checker (domains, App Store, Play Store, and more).

```sh
brew install kythin/tap/checkydo
checkydo --help
```

### stackydo

Context-aware CLI task manager with TUI and MCP server.

```sh
brew install kythin/tap/stackydo
stackydo --help
```

## Update

```sh
brew update && brew upgrade kythin/tap/checkydo kythin/tap/stackydo
```

## Available Formulas

| Formula | Description | Version |
|---------|-------------|---------|
| `checkydo` | Fast, concurrent name availability checker | 0.2.3 |
| `stackydo` | Context-aware CLI task manager with TUI | 0.1.0 |
