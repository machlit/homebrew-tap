# frozen_string_literal: true

class Cutler < Formula
  version '0.14.0'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  # ARM-only build
  url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 'f956c7db9069afdbccdd41d811dbcb2ce27f4620e82ed39048638bb8509ceccf'

  license 'GPL-3.0-or-later'
  depends_on :macos

  def install
    odie "cutler only supports Apple Silicon (ARM64)" unless Hardware::CPU.arm?
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
