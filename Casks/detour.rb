cask "detour" do
  version "1.6.0"
  sha256 "3ec96feb5b1ff78c844c1ce798f026c45ca93558391eb2e9af59f00e7b6b9f2d"

  url "https://github.com/ten50-nl/detour/releases/download/v#{version}/Detour-#{version}.dmg"
  name "Detour"
  desc "Opens every link in the right browser and profile"
  homepage "https://detour.ten50.nl"

  depends_on macos: ">= :sequoia"

  app "Detour.app"
  binary "#{appdir}/Detour.app/Contents/Helpers/detour"

  uninstall quit: "nl.ten50.detour"

  zap trash: [
    "~/Library/Application Support/Detour",
    "~/Library/Caches/Detour",
    "~/Library/Preferences/nl.ten50.detour.plist",
  ]
end
