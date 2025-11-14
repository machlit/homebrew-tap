# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '0.6.2'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/machlit/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 'd4562dc2c59576c52162a73c1b03980095adacd3be72f59842d3f0987429ecd0'
  else
    odie "drs is only available for macOS ARM (Apple Silicon)."
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/drs.1'
    bin.install 'bin/drs'
  end
end
