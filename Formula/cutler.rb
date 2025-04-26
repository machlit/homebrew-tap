class Cutler < Formula
  version "0.5.3"
  desc "Powerful, declarative settings management for your Mac, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "a0c421c43c36be20ea1d90e99973d5cebcd4f2cdbc3d31d7c2c022280d392ccb"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/man1/cutler.1"
    bin.install "bin/cutler"
    generate_completions_from_executable(bin/"cutler", "completion")
  end
end
