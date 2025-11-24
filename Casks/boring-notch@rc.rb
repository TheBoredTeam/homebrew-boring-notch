cask "boring-notch@rc" do
  version "2.7.3"
  sha256 "23786382548d33c59b309db558e513a92e3f95b63d611544dcddf5d196e46698"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v2.7.3/boringNotch.dmg"
  name "Boring Notch RC"
  desc "Not so boring notch That Rocks 🎸🎶 (Release Candidate)"
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
