class Cutler < Formula
  version "0.2.8"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "503e1bb0a087902c902702f3418c094cee03023703b9e5766ee7f35f2b7d8531"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
