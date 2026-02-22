class Checkydo < Formula
  desc "Fast, concurrent name availability checker"
  homepage "https://github.com/kythin/checkydo-cli"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://api.github.com/repos/kythin/checkydo-cli/releases/assets/358924862",
headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "7119cbaa760d2beccc0585dee38c84153050479c784cc90fe1b47c92e96124cf"
    else
      url "https://api.github.com/repos/kythin/checkydo-cli/releases/assets/358924864",
headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
      sha256 "6b125b8c6de5f5d97b8739d41d93368bf88ec7da4acbc893ada7814c5aadfadc"
    end
  end

  on_linux do
    url "https://api.github.com/repos/kythin/checkydo-cli/releases/assets/358924863",
        headers: ["Authorization: token #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}", "Accept: application/octet-stream"]
    sha256 "65e204b95a7dc051fdafc7340e7452d5ce019c69e3363210525160dbe9f8ee9a"
  end

  def install
    bin.install "checkydo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/checkydo --version")
  end
end
