# Homebrew Lightpanda Tap

> **Unofficial Homebrew tap for installing [Lightpanda](https://github.com/lightpanda-io/browser) on macOS.**

This repository provides Homebrew cask formulas for easy installation and updates of Lightpanda. It downloads binaries directly from the [official Lightpanda releases](https://github.com/lightpanda-io/browser/releases) - no modifications are made to the original binaries.

## What is Lightpanda?

[Lightpanda](https://github.com/lightpanda-io/browser) is a headless browser designed specifically for AI agents and automation. It provides a fast, lightweight alternative to traditional headless browsers for web scraping, testing, and AI-powered web interactions.

**This repository does not contain Lightpanda source code.** It only provides Homebrew packaging to simplify installation on macOS. For source code, documentation, and issues related to Lightpanda itself, please visit the [official repository](https://github.com/lightpanda-io/browser).

## Supported Architectures

| Architecture | Mac Type | Binary | Status |
|--------------|----------|--------|--------|
| ARM64 (aarch64) | Apple Silicon (M1/M2/M3/M4) | `lightpanda-aarch64-macos` | Supported |
| x86_64 | Intel Macs | `lightpanda-x86_64-macos` | Supported |

The cask automatically detects your Mac's architecture and downloads the appropriate binary.

## Available Casks

| Cask | Description | Version Tracking |
|------|-------------|-----------------|
| `lightpanda` | Latest stable release with versioning and SHA256 verification | Automatic via `livecheck` |
| `lightpanda-nightly` | Nightly build from the `nightly` release tag | Manual (`--greedy`) |

## Installation

### Prerequisites

- [Homebrew](https://brew.sh/) must be installed on your system

### Install Lightpanda (Stable)

```bash
# Add this tap to Homebrew
brew tap erson/lightpanda

# Install latest stable release (recommended)
brew install --cask lightpanda
```

### Install Lightpanda (Nightly)

```bash
brew tap erson/lightpanda
brew install --cask lightpanda-nightly
```

### Verify Installation

```bash
# Check if lightpanda is available
lightpanda help

# Or test with a URL
lightpanda fetch --dump https://example.com
```

## Updating

### Stable Release

The stable cask uses `livecheck` to automatically detect new releases:

```bash
brew upgrade --cask lightpanda
```

### Nightly Build

Since nightly builds use a fixed URL without version numbers, use the `--greedy` flag:

```bash
brew upgrade --cask --greedy lightpanda-nightly
```

## Uninstall

```bash
# Remove Lightpanda
brew uninstall --cask lightpanda
# or
brew uninstall --cask lightpanda-nightly

# Remove the tap (optional)
brew untap erson/lightpanda
```

## How It Works

This Homebrew tap provides two casks:

- **`lightpanda`** (stable): Downloads versioned releases with SHA256 checksum verification. Uses Homebrew's `livecheck` to detect new versions automatically.
- **`lightpanda-nightly`**: Downloads the latest nightly build from a fixed URL. Uses `version :latest` and `sha256 :no_check` since the binary changes with each build.

Both casks place the binary in Homebrew's bin directory and create a `lightpanda` symlink for easy command-line access.

## Troubleshooting

### "lightpanda: command not found"

Ensure Homebrew's bin directory is in your PATH:

```bash
# For Apple Silicon Macs
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
source ~/.zshrc

# For Intel Macs
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zshrc
source ~/.zshrc
```

### Reinstall from Scratch

If you encounter issues, try a clean reinstall:

```bash
brew uninstall --cask lightpanda
brew install --cask lightpanda
```

## Disclaimer

This is an **unofficial** community-maintained Homebrew tap. It is not affiliated with or endorsed by the Lightpanda team.

- **Source code & issues**: [lightpanda-io/browser](https://github.com/lightpanda-io/browser)
- **Official documentation**: [lightpanda.io](https://lightpanda.io)
- **Tap issues**: [erson/homebrew-lightpanda](https://github.com/erson/homebrew-lightpanda/issues)

## License

This Homebrew tap configuration is provided as-is. Lightpanda itself is licensed under its own terms - see the [official repository](https://github.com/lightpanda-io/browser) for details.
