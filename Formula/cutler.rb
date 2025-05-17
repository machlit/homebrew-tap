class Cutler < Formula
  version "0.6.1"
  desc "Powerful, declarative settings management for your Mac, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "d685baf6e7d1f923073123590ba6900b5b218431e4c8deff1c39a452811d5777"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/man1/cutler.1"
    bin.install "bin/cutler"
    generate_completions_from_executable(bin/"cutler", "completion")
  end
end
