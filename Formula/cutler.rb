class Cutler < Formula
  version "0.2.3"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "8d7a21a5c2bcf6743a930a9ca12f5cfa3f5e548cc619e5bfb32bed3d98124ad7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
