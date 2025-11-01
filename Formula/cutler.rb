# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.14.1'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  if Hardware::CPU.arm?
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '8694847e6c3a0fa7544cc44f40ded4230d45c58eb23ee18cfd8e67bb6bbd54a7'
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
