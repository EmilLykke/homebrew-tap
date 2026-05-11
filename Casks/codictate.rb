cask "codictate" do
  version "0.0.47"
  sha256 "3ccc3817b9cdba1e9fa257e330d740f0f17909c64c5621b41dd45f8b6d72370d"

  url "https://github.com/EmilLykke/codictate/releases/download/v#{version}/stable-macos-arm64-Codictate.dmg",
      verified: "github.com/EmilLykke/codictate/"

  name "Codictate"
  desc "Local, private voice dictation for macOS"
  homepage "https://github.com/EmilLykke/codictate"

  depends_on arch: :arm64

  app "Codictate.app"

  zap trash: [
    "~/Library/Application Support/app.codictate",
    "~/Library/Application Support/codictate",
    "~/Library/Caches/CodictateParakeetHelper",
    "~/Library/HTTPStorages/CodictateParakeetHelper",
    "~/Library/Preferences/app.codictate.plist",
    "~/Library/WebKit/app.codictate",
  ]
end
