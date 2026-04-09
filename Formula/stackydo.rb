class Stackydo < Formula
  desc "Context-aware CLI task manager with MCP server"
  homepage "https://github.com/kythin/stackydo"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.3/stackydo-aarch64-apple-darwin.tar.xz"
      sha256 "17364ea4206ba612bbf5bfc44c24cbf2d6765467495bf422d7ace52d12e29775"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.3/stackydo-x86_64-apple-darwin.tar.xz"
      sha256 "0b111c6f0eeebaadfcf5060ae166c78d475aa4ddf5219bd182fcf6884f4b2bf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.3/stackydo-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "f72547a9035f18545d719c85dbb07828c3a1f1c474ebdac7864ee3826a77381c"
    elsif Hardware::CPU.intel?
      url "https://github.com/kythin/stackydo/releases/download/v0.9.3/stackydo-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8b861893c61191e17035c1fc27bf8ad3473ce6cacc6be825e0f37408945aa64c"
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
