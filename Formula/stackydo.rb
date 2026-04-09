class Stackydo < Formula
  desc "Context-aware CLI task manager with MCP server"
  homepage "https://github.com/kythin/stackydo"
  version "0.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.6/stackydo-aarch64-apple-darwin.tar.xz"
      sha256 "9dbfedaa1d4517da48fb7f5a031f57159a02c32a5da3f53c3d5821e38682b0f7"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.6/stackydo-x86_64-apple-darwin.tar.xz"
      sha256 "52e0ef6fae5d5e0dafa5faf91f2e00d6ffe7146a5ea216d2d2e00d89302d733b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.6/stackydo-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "a4a69a01436dfa93b02730b8ddf81f04a62e092fd0c90a2634027f195614e649"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.6/stackydo-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "e4cb2a3538517cbac27ffc5fe5197a3f1eff34235148d137764e1cf9fc06006a"
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
