# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.13.0'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  on_arm do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 'f956c7db9069afdbccdd41d811dbcb2ce27f4620e82ed39048638bb8509ceccf'
  end

  on_intel do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '13881b79253ce5ebce3fe29903d584a7fe73f0abd8f3abe045cd98bce96cf19f'
  end

  license 'Apache-2.0'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
