# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '1.2.2'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/machlit/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.tar.gz"
    sha256 'ba9341e60394b5f546c67f94bfac54c91aa178487b4b2eaddb01caef90326cfd'
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
