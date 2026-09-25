cask "boring-notch@rc" do
  version "2.8-rc.1"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v2.8-rc.1/boringNotch.dmg"
  name "Boring Notch RC"
  desc "Not so boring notch That Rocks (Release Candidate)"
  homepage "https://github.com/TheBoredTeam/boring.notch"
  livecheck do
    url :url
    strategy :github_latest
  end
  auto_updates true
  depends_on macos: :sonoma
  app "Boring Notch.app"

  postflight do
    app_path = appdir/"Boring Notch.app"
    next unless app_path.exist?
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", app_path]
  end

  uninstall quit: "theboringteam.boringnotch"

  zap trash: [
    "~/Library/Application Scripts/theboringteam.boringnotch/",
    "~/Library/Containers/theboringteam.boringnotch/",
  ]
end
