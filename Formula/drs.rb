# frozen_string_literal: true

# Homebrew formula for defaults-rs: Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.
class Drs < Formula
  version '0.3.1'
  desc 'Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.'
  homepage 'https://github.com/hitblast/defaults-rs'

  on_arm do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-arm64.zip"
    sha256 '0f1f1444e5da52973e87cdd479a693d0f00a5ac59783a67708752348649375e8'
  end

  on_intel do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-x86_64.zip"
    sha256 '460d4c1f36613fdf2e8d19464d737ce4b068fc8c4cdd9bb9a3188d16372cfa0e'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/drs.1'
    bin.install 'bin/drs'
  end
end
