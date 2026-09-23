cask "boring-notch@rc" do
  version "2.8-rc.0"
  sha256 "7c276ec9f9666ebcc2a8029e03acdb29b8eaacffce0007281772cc01f3991595"
  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v2.8-rc.0/boringNotch.dmg"
  name "Boring Notch RC"
  desc "Not so boring notch That Rocks (Release Candidate)"
  homepage "https://github.com/TheBoredTeam/boring.notch"
  livecheck do
    url :url
    strategy :github_latest
  end
  auto_updates true
  depends_on macos: :sonoma
  app "boringNotch.app"

  postflight do
    app_path = appdir/"boringNotch.app"
    next unless app_path.exist?
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", app_path]
  end

  uninstall quit: "theboringteam.boringnotch"

  zap trash: [
    "~/Library/Application Scripts/theboringteam.boringnotch/",
    "~/Library/Containers/theboringteam.boringnotch/",
  ]
end
