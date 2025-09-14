# frozen_string_literal: true

# Homebrew formula for defaults-rs: Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.
class Drs < Formula
  version '0.3.0'
  desc 'Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.'
  homepage 'https://github.com/hitblast/defaults-rs'

  on_arm do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-arm64.zip"
    sha256 '735a1d450fcc62f4d243c55065fb9c33d446c7275bbc416cf2799ae7d9addaef'
  end

  on_intel do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-x86_64.zip"
    sha256 '95698eb718476c998d5bccad684708568f25417070b756a2d716c9d55939ea7d'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/drs.1'
    bin.install 'bin/drs'
  end
end
