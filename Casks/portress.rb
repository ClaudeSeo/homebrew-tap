cask "portress" do
  version "0.1.3"
  sha256 "378fa1f6d4e6feaa58c11f2fee5bb9edf1a8f118381f1fe7dcf53ae41109e15f"

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
