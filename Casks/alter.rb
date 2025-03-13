cask "alter" do
  version '1.0.0-fix'
  sha256 "52379bedf5aec6cce2894280d3b8c98d26b1f8d4d475a08330dd677a12f9c8c1"

  url "https://github.com/hitblast/Alter/releases/download/v1.0.0/alter-v1.0.0-darwin-arm64.zip"
  name "Alter"
  desc "Alter is a minimal macOS app which can be used to customize your app icons with ease."
  homepage "https://github.com/hitblast/Alter"

  depends_on macos: ">= :ventura" # macOS 13

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Alter.app"
  end

  app "Alter.app"
end
