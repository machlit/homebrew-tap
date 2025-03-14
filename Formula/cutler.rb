class Cutler < Formula
  version "0.2.1"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "5bde2fbefab47e5bdf68191849aede34e54ad6f63474e375be8cd0049aea078e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
