cask "nanospeak" do
  version "0.0.2"
  sha256 "5323118a88b9d63f6c33e9c0a0117337d976fb0a523a0f931c268ee9217774e7"

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
