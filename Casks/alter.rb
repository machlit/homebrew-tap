cask "alter" do
  version '1.1.3'
  sha256 "4887be669dad230d153975cceae81f709eb6bbd0e3ef12f25a22fd003083bc75"

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
