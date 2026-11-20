cask "caution-flag" do
  version "0.1.5"
  sha256 "3c033f2b3efe62a29733fc5c550fd51b7423753e0fb28ae1c1876fdf3a9b2fed"

  url "https://github.com/taylorbird/homebrew-caution-flag/releases/download/v#{version}/CautionFlag-#{version}.zip"
  name "Caution Flag"
  desc "Menu bar app that flags heated chat drafts before you send them"
  homepage "https://github.com/taylorbird/homebrew-caution-flag"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (Sparkle, feed at appcast.xml in this repo).
  auto_updates true
  depends_on macos: :sequoia

  app "Caution Flag.app"

  uninstall quit: "com.tbird.cautionflag"

  zap trash: [
    "~/Library/Application Support/Caution Flag",
    "~/Library/Preferences/com.tbird.cautionflag.plist",
  ]

  caveats <<~EOS
    Caution Flag reads the draft in the message box of apps you choose, so it
    needs Accessibility access. The first launch walks you through it:
    System Settings > Privacy & Security > Accessibility > Caution Flag.

    Tone checks run on this Mac only (Apple's on-device model on macOS 26+, or
    a local Ollama server). Draft text is never logged or sent anywhere.
  EOS
end
