cask "alter" do
  version '1.0.0'
  sha256 "cc97596c970129064d1c8af3ce296142669328dafe9540067dd0514d43a60e37"

  url "https://github.com/hitblast/Alter/releases/download/v#{version}/alter-v#{version}-darwin-arm64.zip"
  name "Alter"
  desc "Alter is a minimal macOS app which can be used to customize your app icons with ease."
  homepage "https://github.com/hitblast/Alter"

  depends_on macos: ">= :sonoma" # macOS 14

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Alter.app"
  end

  app "Alter.app"
end
