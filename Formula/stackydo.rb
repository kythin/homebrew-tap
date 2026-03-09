class Stackydo < Formula
  desc "Context-aware CLI task manager with TUI"
  homepage "https://github.com/kythin/stackydo-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/kythin/homebrew-tap/releases/assets/369823474",
headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "75e6256c23db226dce712d4b45a6b0cd35c1054cdfc1dba04ecfacf05708fbc6"
    else
      url "https://api.github.com/repos/kythin/homebrew-tap/releases/assets/369823473",
headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "742c096240931cd4a18c671fa4836a46a69707ebb27aacfdf7fcccf1d5f6ab9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/kythin/homebrew-tap/releases/assets/369823472",
headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "3420053c32478e1e7101ef4b7dce0b94690916aa15364873924601f34a270abd"
    else
      url "https://api.github.com/repos/kythin/homebrew-tap/releases/assets/369823471",
headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "c655d8e051f9e9e1ff7e411f72ea31a1804eee72ac7c0eebf2f07600f93ee505"
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
