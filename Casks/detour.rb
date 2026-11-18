cask "detour" do
  version "1.6.1"
  sha256 "e457055754632649c213dfb1fe24ee707935ddf00dcfb2fd0aabb4297d66c448"

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
