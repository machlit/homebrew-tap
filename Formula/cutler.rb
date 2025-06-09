# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.7.0'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/hitblast/cutler'

  on_arm do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '2fd665bf913381fa9121600aecd9e636695594a3408f671dbba852a95adda5dc'
    sha256 'aca4756f28ad3b4aca6862db1dc3f66caa89c8589caeb057a00d5a043d473709'
  end

  on_intel do
    url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '7e833191290e025bd9fffbf3c9ebe3521ec5e5c974b15bd8afed7733554451c2'
    sha256 '403602eeb29d596221c889219c057cbd75fa0d8f883441ec29b75c6cb395eb5f'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
