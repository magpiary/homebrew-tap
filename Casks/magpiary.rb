# Homebrew cask for the Mac app: brew install --cask magpiary/tap/magpiary
# At each release, `version` and `sha256` change (the sha256 is the disk image's line in SHA256SUMS).
cask "magpiary" do
  version "0.1.5"
  sha256 "6e707369d20bbbfb8306ce33bb880cc3a3df4dfe5c3588141ab661f7ff4fe482"

  url "https://github.com/magpiary/magpiary/releases/download/v#{version}/Magpiary-#{version}.dmg"
  name "Magpiary"
  desc "Turns posts shared from your iPhone into a searchable library on your Mac"
  homepage "https://github.com/magpiary/magpiary"

  depends_on macos: :ventura

  app "Magpiary.app"

  # The app is not signed with a paid Apple account. This removes the "downloaded from the internet" mark,
  # so macOS opens it at once (tested: the app arrives sealed and unmarked).
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Magpiary.app"]
  end

  zap trash: "~/Library/LaunchAgents/org.magpiary.receiver.plist"
end
