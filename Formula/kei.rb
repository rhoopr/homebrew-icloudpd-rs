class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.3/kei-macos-aarch64.tar.gz"
      sha256 "8e17c5100725e1346e14abca97c2844792dc14dddbca639741911f3995f60b07"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.3/kei-macos-x86_64.tar.gz"
      sha256 "9b98eff96b36cc9e933f488ffc06e9745cbe13b96bfb85ec2067cfd57bbcc9a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.3/kei-linux-aarch64.tar.gz"
      sha256 "6276bd69823fac48cc4a4094ed6ac3553da8928978e416823ef92e3c0f9c4596"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.3/kei-linux-x86_64.tar.gz"
      sha256 "004e3ef3f7e06de8905fce1d5b8f582c8a9d2f8a1473606fd4edb73f89e2e689"
    end
  end

  def install
    bin.install "kei"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kei --version")
    assert_match "kei", shell_output("#{bin}/kei --help")
  end
end
