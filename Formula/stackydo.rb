class Stackydo < Formula
  desc "Context-aware CLI task manager with MCP server"
  homepage "https://github.com/kythin/stackydo"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.2/stackydo-aarch64-apple-darwin.tar.xz"
      sha256 "cf695b23444ea61784abb8baf3cfbeb4bf08c1b749a66ea8bf5abf27520f31c7"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.2/stackydo-x86_64-apple-darwin.tar.xz"
      sha256 "f602af28b1151a1b9f328a4af97557caea8f0da96faa450efe9541b88fe13f45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.2/stackydo-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "76a22f2a7130794d8f37430f73de7c84adb1b393da24158090ef3031e802b603"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.2/stackydo-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b091ea1eee8c83e151b39aa9049c026c30f2b326644153f3e6b6b55c59e1bdc6"
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
