class Cutler < Formula
  version "0.2.5"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "103abe37ab8d52a51a06eb5217e18ff47429886cd39ac6207a1d7eed9fdd26ed"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
