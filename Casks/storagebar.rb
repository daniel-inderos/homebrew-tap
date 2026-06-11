cask "storagebar" do
  version "1.3.0"
  sha256 "990aef73d7f3442b925788d7478045eb67a92a41934a21736dad0869a1cb56a1"

  url "https://github.com/daniel-inderos/storage-menu-bar/releases/download/v#{version}/StorageBar.zip"
  name "StorageBar"
  desc "Menu bar app showing disk space, memory, CPU, and battery info"
  homepage "https://github.com/daniel-inderos/storage-menu-bar"

  depends_on macos: :ventura

  app "StorageBar.app"

  zap trash: "~/Library/Preferences/local.storagebar.app.plist"

  caveats <<~EOS
    StorageBar is ad-hoc signed, not notarized. If macOS blocks the first
    launch, run:
      xattr -cr /Applications/StorageBar.app
    or install with quarantine disabled:
      HOMEBREW_CASK_OPTS=--no-quarantine brew install --cask daniel-inderos/tap/storagebar
  EOS
end
