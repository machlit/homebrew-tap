cask "alter" do
  version '1.1.0'
  sha256 "8de035a9923714e13dfab4c5cb9c796f0b01af2b19f672b5fd0b3634a3dc56fa"

  url "https://github.com/hitblast/Alter/releases/download/v#{version}/alter-v#{version}-darwin-arm64.zip"
  name "Alter"
  desc "Alter is a minimal macOS app which can be used to customize your app icons with ease."
  homepage "https://github.com/hitblast/Alter"

  depends_on macos: ">= :ventura" # macOS 13

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Alter.app"
  end

  app "Alter.app"
end
