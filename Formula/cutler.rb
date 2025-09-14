# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.10.0'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  on_arm do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '13af0bd5d17ee4763366149b23d6a946b2a22d0906bd15e0380567f614f91258'
  end

  on_intel do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '0bde58d74c24832cd1ed036bbac86bef6ffd530fef16bbe3d436d07370db92be'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
