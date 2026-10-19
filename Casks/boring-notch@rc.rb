cask "boring-notch@rc" do
  version "2.8-rc.1"
  sha256 "dd5d28dec45eb53b0f07a5a3a2ed5b9e6cc34ac22ab58908b503a4906dd62933"
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
