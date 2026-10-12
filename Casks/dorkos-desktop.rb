cask "dorkos-desktop" do
  version "0.110.0"
  sha256 "3b1f0049f8bf61accf2bd63eede4c544202ecca94bb5327d46274aee5e8f071c"

  url "https://github.com/dork-labs/dorkos/releases/download/v#{version}/DorkOS-#{version}-arm64.dmg",
      verified: "github.com/dork-labs/dorkos/"
  name "DorkOS"
  desc "Mission control for coding agents"
  homepage "https://dorkos.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "DorkOS.app"

  zap trash: [
    "~/Library/Application Support/DorkOS",
    "~/Library/Caches/com.dorkos.desktop",
    "~/Library/Caches/com.dorkos.desktop.ShipIt",
    "~/Library/HTTPStorages/com.dorkos.desktop",
    "~/Library/Logs/DorkOS",
    "~/Library/Preferences/com.dorkos.desktop.plist",
    "~/Library/Saved Application State/com.dorkos.desktop.savedState",
  ]
end
