cask "session" do
  version "1.6.11"
  sha256 "15badec18a6530406fe83d4a69788dac7b1b36a646769bf5361cb0d9f4e7bbc6"

  url "https://github.com/loki-project/session-desktop/releases/download/v#{version}/session-desktop-mac-#{version}.dmg",
      verified: "github.com/loki-project/session-desktop/"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
