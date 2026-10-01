# Homebrew Tap: AI Barracks

[AI Barracks (AIB)](https://github.com/ai-barracks/ai-barracks)를 macOS에 설치하기 위한 Homebrew tap.

## Install

```bash
brew tap ai-barracks/ai-barracks
brew install ai-barracks/ai-barracks/ai-barracks
```

## Upgrade

```bash
brew update
brew upgrade ai-barracks/ai-barracks/ai-barracks
```

## Verify

```bash
aib version   # currently published: v1.4.0
aib --help
```

`command -v aib`와 symlink 대상도 확인하세요. `aib version`은 실제 executable의 버전이고 `brew list --versions ai-barracks`는 설치된 keg 목록입니다. 이전 `cyrok90/ai-barracks` tap과 동명 formula가 충돌하면 이전 executable·keg·설정을 백업하고 경로를 확인한 뒤 전환하세요. 무조건 uninstall/overwrite하는 절차는 권장하지 않습니다.

## Compatibility and post-release validation

- 공식 v1.4.0 archive/hash로 지원 macOS의 GitHub Homebrew install/test CI를 통과했습니다.
- 2026-10-01의 macOS 27 / Homebrew 5.1.15 / CLT 26.5 환경에서는 `jq`/build dependency bottle 부재, CLT 27 요구 및 uninstall `:dunno` 오류를 관찰하여 정식 Homebrew 설치가 완료되지 않았습니다.
- 그 환경에서는 archive SHA256을 대조한 후 system `jq`를 사용해 CLI를 user-local에 수동 배치하고 이전 Homebrew 1.3.4 keg는 unlinked 복구용으로 보존했습니다. 실제 CLI v1.4.0 및 CC v1.5.0 표시, 격리 init/read-only dry-run/native-hook fixture 설치를 확인했습니다. **수동 설치 결과를 Homebrew 설치 성공으로 해석하지 마세요.**
- Xcode/CLT, tap trust, OS security, 모델 CLI 및 기존 배럭 설정을 임의로 변경하지 않았습니다. 상세 경로 계약·복구 절차는 [설치 안내](https://github.com/ai-barracks/ai-barracks/blob/main/docs/installation.md)를 참고하세요.
- Formula test는 `sync --dry-run <path>` 순서로 실행합니다. v1.4.0 tag/archive/hash는 변경하지 않았습니다.

CLI 설치는 기존 프로젝트 템플릿을 자동 동기화하지 않습니다. 필요하면 먼저 `aib sync --dry-run /path/to/barrack`으로 검토하고 별도로 동기화하세요.

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
