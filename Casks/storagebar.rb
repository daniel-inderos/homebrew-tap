cask "storagebar" do
  version "1.2.0"
  sha256 "2eed678cfbdc19703b6b288593d3700ccf417500f5b78a3e4968744fafcddbd6"

  url "https://github.com/daniel-inderos/storage-menu-bar/releases/download/v#{version}/StorageBar.zip"
  name "StorageBar"
  desc "Menu bar app showing disk space, memory, CPU, and battery info"
  homepage "https://github.com/daniel-inderos/storage-menu-bar"

  depends_on macos: :ventura

  app "StorageBar.app"

  zap trash: "~/Library/Preferences/local.storagebar.app.plist"

  caveats <<~EOS
    StorageBar is ad-hoc signed, not notarized. If macOS blocks the first
    launch, either reinstall with --no-quarantine or run:
      xattr -cr /Applications/StorageBar.app
  EOS
end
