# frozen_string_literal: true

# Homebrew formula for cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.15.2'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/machlit/cutler'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/cutler/releases/download/v#{version}/cutler-aarch64-apple-darwin.tar.gz"
    sha256 '12e042467511585eb3d55312545feb859ca1d94385f25c39411c120b13a3418d'
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
