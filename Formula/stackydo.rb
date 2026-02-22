class Stackydo < Formula
  desc "Context-aware CLI task manager with TUI"
  homepage "https://github.com/kythin/stackydo-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/kythin/stackydo-cli/releases/assets/358441149",
          headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "a708dc97f0dc994ad96af1061a0029a1ab1ffd4189619d1bc375d1a83cbcfaf4"
    else
      url "https://api.github.com/repos/kythin/stackydo-cli/releases/assets/358441163",
          headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "0af10c01bc3b6f872458ce4cbcf5994ce2c12d9bc5f535a5047000c1c45a53a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/kythin/stackydo-cli/releases/assets/358441153",
          headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "2513a99919e1ee03e3d743f3c92ad2cd43df67233075f648b9d2c6dfbbc8a9c1"
    else
      url "https://api.github.com/repos/kythin/stackydo-cli/releases/assets/358441171",
          headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "d2804dee2ebbcd4a514f26f8246ce932274c017a489c92838ac21941e58b1400"
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
