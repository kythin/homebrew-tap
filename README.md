# homebrew-tap

Private Homebrew tap for stable releases of kythin's CLI tools.
Releases here are manually promoted from the [beta tap](https://github.com/kythin/homebrew-tap-beta).

## Install

Add the tap, then install whichever tools you want:

```sh
brew tap kythin/tap https://github.com/kythin/homebrew-tap
```

### stackydo

Context-aware CLI task manager with MCP server and AI-friendly workflow capabilities.

```sh
brew install kythin/tap/stackydo
stackydo --help
```

## Update

```sh
brew update && brew upgrade kythin/tap/stackydo
```

## Available Formulas

| Formula | Description | Version |
|---------|-------------|---------|
| `stackydo` | Context-aware CLI task manager with TUI | 0.1.0 |
