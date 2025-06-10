# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.7.1'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/hitblast/cutler'

  on_arm do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '9258bee8f7d85f09be4214e3c18be0ebad9cc8d1c1a27e017afb8f3a3f907d56'
  end

  on_intel do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '1b72ccc4e9dd6099dca237b36a17534f92caf664a8c6f8d6e3c513ab49ff3cf0'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
