class Cutler < Formula
  version "0.3.3"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "0c133f3bc6d4ba2cc08d6705c2f00bc047a9c86f89d80dbd2d3f6310648205bc"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
