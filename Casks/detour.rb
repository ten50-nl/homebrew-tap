cask "detour" do
  version "1.0.0"
  sha256 "5ae654b88e1c1dad5a7a0fd707c6c55955033835c28d5bafcdc619d481538c9a"

  url "https://github.com/ten50nl/detour/releases/download/v#{version}/Detour-#{version}.dmg"
  name "Detour"
  desc "Opens every link in the right browser and profile"
  homepage "https://detour.ten50.nl"

  depends_on macos: ">= :sequoia"

  app "Detour.app"

  uninstall quit: "nl.ten50.detour"

  zap trash: [
    "~/Library/Application Support/Detour",
    "~/Library/Caches/Detour",
    "~/Library/Preferences/nl.ten50.detour.plist",
  ]
end
