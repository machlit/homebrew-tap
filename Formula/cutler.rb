# frozen_string_literal: true

# Homebrew formula for cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.18.1'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/machlit/cutler'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/cutler/releases/download/v#{version}/cutler-aarch64-apple-darwin.tar.gz"
    sha256 '9d083044ce01c560b29f02f92cc4580a4ee0d1fe096873a13967231c23d72ea5'
  else
    odie "cutler is only available for macOS ARM (Apple Silicon)."
  end

  license 'MIT OR Apache-2.0'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
