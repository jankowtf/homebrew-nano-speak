cask "nanospeak" do
  version "0.0.3"
  sha256 "dab5ed42178b81edde55a1e5124be1aafcf71edbc40fc0fbb10db77dc91f3b5b"

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
