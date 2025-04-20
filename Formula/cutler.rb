class Cutler < Formula
  version "0.4.1"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "f9c0d980edd5e7c71e1a05834a883f240b6063203bdfe589306d659cd7d9eb7f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
