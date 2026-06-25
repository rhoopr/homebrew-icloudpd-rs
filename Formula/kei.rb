class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.6/kei-macos-aarch64.tar.gz"
      sha256 "e840d894bcd7e21a75ecb980d0faa41f8f84dd68d4f62874f435d2cfcc25c18a"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.6/kei-macos-x86_64.tar.gz"
      sha256 "2303bae698f433950f082c69018eae3872fda2f64ed7ca4f9a91c40396f1637c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.6/kei-linux-aarch64.tar.gz"
      sha256 "d966076b8c2b841f979d80f1a9cbad76113fa5361f5ba0dc5dc3ab9324a85fbb"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.6/kei-linux-x86_64.tar.gz"
      sha256 "f3a56f73eab2aff865b40315e4e7c14bdbe89bcbcf0fc774415fb6fa5af75f80"
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
