# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '1.1.0'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/machlit/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 '1c7c1f1972acf1e9cfed3fc0689faa587a4aa2f9eb9fe7b3f455a18ac6c441e3'
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
