class Cutler < Formula
  version "0.5.4"
  desc "Powerful, declarative settings management for your Mac, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "84a80dc0da61d971775d98b2a09631e6f886fb9873c4e0447391a17edbeecb31"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/man1/cutler.1"
    bin.install "bin/cutler"
    generate_completions_from_executable(bin/"cutler", "completion")
  end
end
