class Cutler < Formula
  version "0.5.5"
  desc "Powerful, declarative settings management for your Mac, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "6d758ebdd0445c206e631a6716c08d9b93ad4557fd59aed7832685b3b51e2314"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/man1/cutler.1"
    bin.install "bin/cutler"
    generate_completions_from_executable(bin/"cutler", "completion")
  end
end
