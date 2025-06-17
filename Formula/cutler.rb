# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.7.10'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/hitblast/cutler'

  on_arm do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '9ac860dd0a6528e86c9a360f18065bae1f7aed465b257349a5fecfca6e089ca0'
  end

  on_intel do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 'e693bf88c1a1fc51520194e403fa518e9c1f707a4fdfc504a03b6abbd08b6f5e'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
