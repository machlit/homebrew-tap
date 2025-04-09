class Cutler < Formula
  version "0.2.9"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "5f7a49be2d8687bb5e281dd37e49b44ea0c8a5f15de4d10516b603c4ed52cc67"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
