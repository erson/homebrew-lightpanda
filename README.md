# Homebrew Lightpanda Tap

Unofficial Homebrew tap for [Lightpanda](https://github.com/lightpanda-io/browser) - a headless browser designed for AI and automation.

## Installation

```bash
# Add the tap
brew tap <YOUR_GITHUB_USERNAME>/lightpanda

# Install Lightpanda nightly
brew install --cask lightpanda-nightly
```

## Verify Installation

```bash
lightpanda --version
```

## Updating

Since this is a nightly build with `version :latest`, Homebrew cannot automatically detect updates. Use `--greedy` flag to force reinstall:

```bash
brew upgrade --cask --greedy lightpanda-nightly
```

Or update everything at once:

```bash
brew update && brew upgrade --cask --greedy
```

### Quick Alias (Optional)

Add this to your `~/.zshrc` or `~/.bashrc`:

```bash
alias lpup="brew update && brew upgrade --cask --greedy lightpanda-nightly"
```

Then simply run `lpup` to update Lightpanda.

## Uninstall

```bash
brew uninstall --cask lightpanda-nightly
brew untap <YOUR_GITHUB_USERNAME>/lightpanda
```

## Notes

- **Nightly builds**: This tap tracks the nightly release which updates frequently
- **Architecture**: Supports both Apple Silicon (arm64) and Intel (x86_64) Macs
- **Stable releases**: When Lightpanda releases stable versions, this tap will be updated with a versioned cask

## Links

- [Lightpanda Repository](https://github.com/lightpanda-io/browser)
- [Lightpanda Documentation](https://lightpanda.io/docs)
