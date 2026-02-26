cask "nanospeak" do
  version "0.0.1"
  sha256 "02d6603177e1a84458fdd468e2a44e12014ebc42ea1374ce085795d80156f2bf"

  url "https://github.com/jankowtf/homebrew-nano-speak/releases/download/v#{version}/NanoSpeak-#{version}.zip"

  name "NanoSpeak"
  desc "Local-first macOS menu bar speech-to-text with on-device AI"
  homepage "https://gitlab.kaosmaps.com/kaosmaps/nano-speak"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NanoSpeak.app"

  zap trash: [
    "~/Library/Application Support/NanoSpeak",
    "~/Library/Preferences/com.kaosmaps.nanospeak.plist",
    "~/Library/Caches/com.kaosmaps.nanospeak",
  ]
end
