class Cutler < Formula
  version "0.6.2"
  desc "Powerful, declarative settings management for your Mac, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "9c86109109e7b93b26dcdfb133fdb22bc7b620a893666329bfa10635cbeab8a8"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/man1/cutler.1"
    bin.install "bin/cutler"
    generate_completions_from_executable(bin/"cutler", "completion")
  end
end
