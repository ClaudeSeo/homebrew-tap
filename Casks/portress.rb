cask "portress" do
  version "0.1.1"
  sha256 "774c00fe517afa97ea5213d6f0753819b5da3661cddbb0831a21ba6ababbf91a"

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
