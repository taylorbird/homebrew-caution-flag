# homebrew-caution-flag

Homebrew tap for **Caution Flag**, a macOS menu bar app that notices when a chat
draft is running hot and gently raises a flag before you send it. Tone checks run
entirely on your Mac.

```sh
brew install --cask taylorbird/caution-flag/caution-flag
```

Upgrade with `brew upgrade --cask caution-flag`. Requires macOS 15 or later.

Release zips are signed with Developer ID, notarized by Apple, and attached to this
repo's GitHub releases. The cask's version and sha256 are bumped by the app's
`scripts/release.sh`.
