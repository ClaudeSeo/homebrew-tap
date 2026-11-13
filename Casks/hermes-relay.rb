cask "hermes-relay" do
  version "0.0.2"
  sha256 "e6a7f0be738b294731aea582347d010d43f01e6e8753f6485d2161c8e87807d6"

  url "https://github.com/ClaudeSeo/homebrew-tap/releases/download/hermes-relay-v#{version}/hermes-relay-#{version}-darwin-arm64.dmg"
  name "Hermes Relay"
  desc "Menu bar relay for Hermes dev jobs, Calendar, Reminders, and browser scripts"
  homepage "https://github.com/ClaudeSeo/homebrew-tap"

  livecheck do
    url "https://github.com/ClaudeSeo/homebrew-tap.git"
    regex(/^hermes-relay-v(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "HermesRelay.app"

  postflight do
    system_command "/bin/launchctl",
                   args:         ["kickstart", "-k", "gui/#{Process.uid}/me.clud.hermes-relay"],
                   must_succeed: false
  end

  uninstall quit: "me.clud.hermes-relay"

  zap trash: [
    "~/Library/Caches/me.clud.hermes-relay",
    "~/Library/Preferences/me.clud.hermes-relay.plist",
    "~/Library/Saved Application State/me.clud.hermes-relay.savedState",
  ]
end
