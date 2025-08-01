cask "boring-notch@rc" do
  version "2.7-rc.1"
  sha256 "a4751822b2c72e3a5c3d41a3307421557f7f0717cf66e9f66faf3ce0e4d4103e"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v#{version}/Flying_Rabbit.dmg"
  name "Boring Notch"
  desc "Not so boring notch That Rocks 🎸🎶 "
  homepage "https://github.com/TheBoredTeam/boring.notch"

  livecheck do
    url :url
    strategy :github_latest
  end
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  zap trash: [
    "~/Library/Application Scripts/theboringteam.boringnotch/",
    "~/Library/Containers/theboringteam.boringnotch/",
  ]
end
