# Homebrew Tap: AI Barracks

[AI Barracks (AIB)](https://github.com/ai-barracks/ai-barracks)를 macOS에 설치하기 위한 Homebrew tap.

## Install

```bash
brew tap ai-barracks/ai-barracks
brew install ai-barracks
```

## Upgrade

```bash
brew update
brew upgrade ai-barracks
```

## Verify

```bash
aib version   # currently published: v1.4.0
aib --help
```

## What gets installed

| Path | Content |
|------|---------|
| `$(brew --prefix)/bin/aib` | CLI executable |
| `$(brew --prefix)/share/ai-barracks/templates/` | Barrack init templates |
| `$(brew --prefix)/share/ai-barracks/scripts/` | Bundled scripts (council.sh) |

## Quick Start

```bash
aib init ~/my-project       # Initialize barrack + auto-configure hooks
aib start claude "my task"  # Or just run `claude` directly (hooks handle it)
aib status                  # Show active sessions and wiki
aib barracks list           # Show all registered barracks
```

Full documentation: [ai-barracks README](https://github.com/ai-barracks/ai-barracks)

## License

MIT
