class Stackydo < Formula
  desc "Context-aware CLI task manager with MCP server"
  homepage "https://github.com/kythin/stackydo"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.5/stackydo-aarch64-apple-darwin.tar.xz"
      sha256 "d12e3c21e07557a3e3fff8650cf78bf36583bd499ca051b88728337ef21cdb7f"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.5/stackydo-x86_64-apple-darwin.tar.xz"
      sha256 "157deb0655d594870017ccef524be9857c0de355e1c27c48017d4f5857294784"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.5/stackydo-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "2342ecb03b9dbf95095d23de8488fb378e9edc4f4af37fbc5dc9a9f552fb4611"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.5/stackydo-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "95bf85ec008611806b38492d698e5a7fac299cb1a81ffbff2425d595920b216d"
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
