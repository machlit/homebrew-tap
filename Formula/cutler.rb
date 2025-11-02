# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.14.3'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  if Hardware::CPU.arm?
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-aarch64-apple-darwin.tar.gz"
    sha256 '3c7764267ca6bfd807025971705441f8ecd011580ea20d1848a934d60f1babed'
  else
    odie "cutler is only available for macOS ARM (Apple Silicon)."
  end

  license 'GPL-3.0-or-later'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
