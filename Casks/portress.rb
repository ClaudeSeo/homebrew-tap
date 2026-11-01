cask "portress" do
  version "0.1.0"
  sha256 "387a01f7b5ef26c9f3013f93adeb2196d6bf8bb09a9fb774ea9c6c1f6d6226e6"

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
