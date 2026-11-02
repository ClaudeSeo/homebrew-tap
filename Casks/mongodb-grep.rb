cask "mongodb-grep" do
  version "0.1.1"
  sha256 "19ffdd9f7bc5574caa9bff8b75ba0172740e96901613ddfac3a225f202eb2409"

  url "https://github.com/ClaudeSeo/homebrew-tap/releases/download/mongodb-grep-v#{version}/mongodb-grep-#{version}-darwin-arm64.dmg"
  name "MongoDB Grep"
  desc "Native MongoDB client for running queries and exporting audit-ready Excel"
  homepage "https://github.com/ClaudeSeo/homebrew-tap"

  livecheck do
    url "https://github.com/ClaudeSeo/homebrew-tap.git"
    regex(/^mongodb-grep-v(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MongoDB Grep.app"

  uninstall quit: "me.clud.mongodb-grep"

  zap trash: [
    "~/Library/Caches/me.clud.mongodb-grep",
    "~/Library/Preferences/me.clud.mongodb-grep.plist",
    "~/Library/Saved Application State/me.clud.mongodb-grep.savedState",
  ]
end
