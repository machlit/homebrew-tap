# frozen_string_literal: true

# Homebrew formula for cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.18.0'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/machlit/cutler'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/cutler/releases/download/v#{version}/cutler-aarch64-apple-darwin.tar.gz"
    sha256 'a392657597f1cbf2b4f6e6f581254b366d8122699e7c298973aafb4c14355c39'
  else
    odie "cutler is only available for macOS ARM (Apple Silicon)."
  end

  license 'MIT OR Apache-2.0'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
