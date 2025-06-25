# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.8.6'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/hitblast/cutler'

  on_arm do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '41740e7dd63dfc34246d5402e1d741b7e3bda4a45e4d2e05ee0cae4facb0a8e2'
  end

  on_intel do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '5977eec069566e5e45fb1098dc575102e851b67509499595ff479c1eb3b90f72'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
