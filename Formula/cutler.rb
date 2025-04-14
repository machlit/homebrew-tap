class Cutler < Formula
  version "0.3.1"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "ee4fbcf094c3fccf3ddd12cee6a50b8d3ece97b40e00f89d482c32ccddd1cc50"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
