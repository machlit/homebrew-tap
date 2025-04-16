class Cutler < Formula
  version "0.3.2"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "04a1eb447211e8ea73495ba03e632ab5867da795cc37ba642770e566348ed82e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
