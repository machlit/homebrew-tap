# frozen_string_literal: true

# Homebrew formula for defaults-rs: Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.
class Drs < Formula
  version '0.1.6'
  desc 'Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.'
  homepage 'https://github.com/hitblast/defaults-rs'

  on_arm do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-arm64.zip"
    sha256 'b92b4b8bdd8eeb38b312518202b00da6a0cc7716b8f47f719045a6aef056882c'
  end

  on_intel do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-x86_64.zip"
    sha256 '56a9cc7b22c08b80ded2941dd72bde79068c612a0015dd63b4f70bb3d0d175a0'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/drs.1'
    bin.install 'bin/drs'
  end
end
