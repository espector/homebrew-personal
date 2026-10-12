cask "astris" do
  version "1.0.32"
  sha256 "661f01a47816b3baeda5c6c924f92d32e7a2bf42db98483c259207f0eb5feb6f"

  url "https://codeberg.org/V380-Ori/Astris.Binaries/releases/download/astris-#{version}/Astris-#{version}+2398e7c80.dmg"
  name "Astris"
  desc "Nintendo Switch emulator for Apple Silicon Macs"
  homepage "https://astrisemulator.com/"

  depends_on :macos

  app "Astris.app"

  zap trash: [
    "~/Library/Application Support/Astris",
    "~/Library/Preferences/com.v380ori.astris.plist",
    "~/Library/Saved Application State/com.v380ori.astris.savedState",
  ]

  caveats <<~EOS
    This app is unsigned. You may need to right-click and choose Open,
    or run:
      xattr -d com.apple.quarantine /Applications/Astris.app
  EOS
end
