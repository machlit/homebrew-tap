cask "alter" do
  version '1.0.1'
  sha256 "8f2c8786e5f85575b97a23116fef3d1a3f2195ea0f347d67a8045f26c0c72e1a"

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
