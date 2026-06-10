cask "storagebar" do
  version "1.2.1"
  sha256 "b23be82759406632446f80987134815b2c1e0cf1272ed21f116e92b9f73dcf21"

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
