class Cutler < Formula
  version "0.4.7"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "4c694d3856ef53bdac556f9fe9433131e79958ddf226c91dabb5d5ccdccf6400"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/man1/cutler.1"
    bin.install "bin/cutler"
    generate_completions_from_executable(bin/"cutler", "completion")
  end
end
