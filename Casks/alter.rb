cask "alter" do
  version '1.0.0'
  sha256 "977810f1d09fe46c501c23b46a25c296527643d61968d24f8571e59a737166d4"

  url "https://github.com/hitblast/Alter/releases/download/v#{version}/alter-v#{version}-darwin-arm64.zip"
  name "Alter"
  desc "Alter is a minimal macOS app which can be used to customize your app icons with ease."
  homepage "https://github.com/hitblast/Alter"

  depends_on macos: ">= :sonoma" # macOS 14

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Alter.app"
  end

  app "alter-v#{version}-darwin-arm64/Alter.app"
end
