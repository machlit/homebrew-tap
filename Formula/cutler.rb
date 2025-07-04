# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.8.15'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  on_arm do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '833a9b11f21e9e11a0dc1440b5064e22e4bb13007537fdf11dbb7fb460a8680f'
  end

  on_intel do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '9a4d4bc75e1a4f3c72a4f41ae96567e8080eea4d3a1a6100a4ecaf2fe4ee4f31'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
