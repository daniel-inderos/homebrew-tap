cask "storagebar" do
  version "1.3.1"
  sha256 "6583d37fae2d0fe08199b019b39ba52046be059af9adf525731d664bd16ff035"

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
