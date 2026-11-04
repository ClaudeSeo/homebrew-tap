cask "portress" do
  version "0.1.2"
  sha256 "145112d03e9177f9423ffcf1da41b6e9120dd426c421da9a5c9ce680b45c6d9c"

  url "https://github.com/ClaudeSeo/homebrew-tap/releases/download/portress-v#{version}/portress-#{version}-darwin-arm64.dmg"
  name "Portress"
  desc "Menu bar list of listening TCP ports and their owning process or container"
  homepage "https://github.com/ClaudeSeo/homebrew-tap"

  livecheck do
    url "https://github.com/ClaudeSeo/homebrew-tap.git"
    regex(/^portress-v(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Portress.app"

  uninstall quit: "me.clud.portress"

  zap trash: [
    "~/Library/Caches/me.clud.portress",
    "~/Library/Preferences/me.clud.portress.plist",
    "~/Library/Saved Application State/me.clud.portress.savedState",
  ]
end
