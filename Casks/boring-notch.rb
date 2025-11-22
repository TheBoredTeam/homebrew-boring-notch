cask "boring-notch" do
  version "2.7.1"
  sha256 "6f62f32ee6d4e06b309f26e45c6ae468556f33e5f92f16bbab696fc8db44fc2e"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v2.7.1/boringNotch.dmg"
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
