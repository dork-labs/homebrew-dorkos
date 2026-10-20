cask "dorkos-desktop" do
  version "0.124.1"
  sha256 "f090da829f9e6a9660ca86680ff01abbc04e388fe4dfa24efe78dd06f0f58f72"

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
