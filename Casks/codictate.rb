cask "codictate" do
  version "0.0.39"
  sha256 "e93a257f5f2a3f32a1b02944df0f3d5b80ac3ea5c140a740edc0ac20ed50f934"

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
