# Homebrew Lightpanda Tap

> **Unofficial Homebrew tap for installing [Lightpanda](https://github.com/lightpanda-io/browser) on macOS.**

This repository provides a Homebrew cask formula for easy installation and updates of Lightpanda. It downloads binaries directly from the [official Lightpanda releases](https://github.com/lightpanda-io/browser/releases) - no modifications are made to the original binaries.

## What is Lightpanda?

[Lightpanda](https://github.com/lightpanda-io/browser) is a headless browser designed specifically for AI agents and automation. It provides a fast, lightweight alternative to traditional headless browsers for web scraping, testing, and AI-powered web interactions.

**This repository does not contain Lightpanda source code.** It only provides Homebrew packaging to simplify installation on macOS. For source code, documentation, and issues related to Lightpanda itself, please visit the [official repository](https://github.com/lightpanda-io/browser).

## Supported Architectures

| Architecture | Mac Type | Binary | Status |
|--------------|----------|--------|--------|
| ARM64 (aarch64) | Apple Silicon (M1/M2/M3/M4) | `lightpanda-aarch64-macos` | Supported |
| x86_64 | Intel Macs | `lightpanda-x86_64-macos` | Supported |

The cask automatically detects your Mac's architecture and downloads the appropriate binary.

## Installation

### Prerequisites

- [Homebrew](https://brew.sh/) must be installed on your system

### Install Lightpanda

```bash
# Add this tap to Homebrew
brew tap erson/lightpanda

# Install Lightpanda nightly build
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

This tap tracks the **nightly release** from the official repository. Since nightly builds use a fixed URL without version numbers, Homebrew cannot automatically detect when updates are available.

### Manual Update

Use the `--greedy` flag to force Homebrew to reinstall the latest nightly build:

```bash
brew upgrade --cask --greedy lightpanda-nightly
```

### Update All Casks

To update Homebrew and all greedy casks at once:

```bash
brew update && brew upgrade --cask --greedy
```

### Quick Alias (Optional)

Add a convenient alias to your shell configuration (`~/.zshrc` or `~/.bashrc`):

```bash
# Add this line to your shell config
alias lpup="brew update && brew upgrade --cask --greedy lightpanda-nightly"
```

Then reload your shell and use:

```bash
lpup
```

## Uninstall

```bash
# Remove Lightpanda
brew uninstall --cask lightpanda-nightly

# Remove the tap (optional)
brew untap erson/lightpanda
```

## How It Works

This Homebrew cask:

1. Downloads the appropriate binary from [Lightpanda's official nightly release](https://github.com/lightpanda-io/browser/releases/tag/nightly)
2. Places the binary in Homebrew's bin directory (`/opt/homebrew/bin/` on Apple Silicon, `/usr/local/bin/` on Intel)
3. Creates a symlink named `lightpanda` for easy command-line access

The cask uses `version :latest` and `sha256 :no_check` because the nightly release URL remains constant while the binary content changes with each build.

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
brew uninstall --cask lightpanda-nightly
brew install --cask lightpanda-nightly
```

## Future Plans

When Lightpanda releases stable, versioned builds, this tap will be updated to include:

- A versioned cask with proper SHA256 checksums
- Automatic update detection via `livecheck`
- Potentially a Homebrew formula for building from source

## Disclaimer

This is an **unofficial** community-maintained Homebrew tap. It is not affiliated with or endorsed by the Lightpanda team. 

- **Source code & issues**: [lightpanda-io/browser](https://github.com/lightpanda-io/browser)
- **Official documentation**: [lightpanda.io](https://lightpanda.io)
- **Tap issues**: [erson/homebrew-lightpanda](https://github.com/erson/homebrew-lightpanda/issues)

## License

This Homebrew tap configuration is provided as-is. Lightpanda itself is licensed under its own terms - see the [official repository](https://github.com/lightpanda-io/browser) for details.
