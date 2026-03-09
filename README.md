# Kythin's misc homebrew tools

Homebrew tap for stable releases of my random assortment of CLI tools. These are provided AS-IS, use at your own risk.

## Install

Add the tap, then install whichever tools you want:

```sh
brew tap kythin/tap https://github.com/kythin/homebrew-tap
```

### stackydo

Context-aware CLI task manager with MCP server and AI-friendly workflow capabilities. Programatic task storage in markdown format in a directory of your choice, allowing project-based task stacks (in or separate from the project git repo), or system-level task storage for multi-project contexts. Comes with stackydo-mcp and a claude code install helper command, giving Claude virtually unlimited task & context background capabilities and a common format for future planning.

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
