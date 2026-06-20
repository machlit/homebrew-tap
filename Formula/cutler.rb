# frozen_string_literal: true

# Homebrew formula for cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.19.8'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/machlit/cutler'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/cutler/releases/download/v#{version}/cutler-aarch64-apple-darwin.tar.gz"
    sha256 '2fd8c12f5bbca3e71086654470e4bc0f835dee862f7a31d40ad9b68fe4e97beb'
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
