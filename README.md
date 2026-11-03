# Homebrew tap for Magpiary

[Magpiary](https://magpiary.com) keeps the posts you save in a searchable library on your Mac.

**The Mac app (recommended)**

```bash
brew install --cask magpiary/tap/magpiary
```

The app is not signed with a paid Apple account. The cask removes the "downloaded from the internet" mark, so macOS opens it at once. Needs macOS 13 or newer.

**The command-line version**

```bash
brew install magpiary/tap/magpiary
```

Then follow the notes Homebrew prints at the end.

Update with `brew upgrade`. Remove with `brew uninstall --cask magpiary` (add `--zap` to also delete its background service).

Source and releases: https://github.com/magpiary/magpiary
