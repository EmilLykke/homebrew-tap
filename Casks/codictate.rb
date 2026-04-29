cask "codictate" do
  version "0.0.36"
  sha256 "82ff3d2b5767007abd1fa502399335a4b6378798178fc0f234fde756d96848c9"

  url "https://github.com/EmilLykke/codictate/releases/download/v#{version}/stable-macos-arm64-Codictate.dmg",
      verified: "github.com/EmilLykke/codictate/"

  name "Codictate"
  desc "Local, private voice dictation for macOS"
  homepage "https://github.com/EmilLykke/codictate"

  depends_on arch: :arm64

  app "Codictate.app"

  zap trash: [
    "~/Library/Application Support/Codictate",
    "~/Library/Preferences/app.codictate.plist",
    "~/Library/Caches/Codictate",
  ]
end
