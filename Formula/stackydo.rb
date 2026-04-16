class Stackydo < Formula
  desc "Context-aware CLI task manager with MCP server"
  homepage "https://github.com/kythin/stackydo"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.10.0/stackydo-aarch64-apple-darwin.tar.xz"
      sha256 "379617ac0171eddc08197ddc92a495095be0429af78413b5fb8e042eb3878809"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.10.0/stackydo-x86_64-apple-darwin.tar.xz"
      sha256 "a9c2577be399877d49cdfcad2d80cf9f777013e025692ac81d84df530f826bee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.10.0/stackydo-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c3ad563fd5a841b941c884108c57de2a2fb04df6a9780f7e0056adcf9e0b69e9"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.10.0/stackydo-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "93069b44181e626bc420a6eae54379cb7f1a3ef3c0425af8ddd33523ff0d396a"
    end
  end

  def install
    bin.install "stackydo"
    bin.install "stackydo-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stackydo --version")
  end
end
