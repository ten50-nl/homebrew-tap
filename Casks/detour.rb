cask "detour" do
  version "1.6.2"
  sha256 "0df6563cd6fedb757e09d19d914194d1e6f978988b07a9ca16acc2085b3c94f4"

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
