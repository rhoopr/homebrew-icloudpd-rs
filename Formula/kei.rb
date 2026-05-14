class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.14.2/kei-macos-aarch64.tar.gz"
      sha256 "598df7b3a0f1b94032546692832254bb65b0b828bec777dac523cf5876cddf02"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.14.2/kei-macos-x86_64.tar.gz"
      sha256 "0559901f01154ce16ba3a5d848fb8423b6fb28166621f0d1a8c06937bdee9c3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.14.2/kei-linux-aarch64.tar.gz"
      sha256 "e60553b027cb0cfd354935995fa67bfa9ea2a2bc1dde8d41987ae5777ab88f3a"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.14.2/kei-linux-x86_64.tar.gz"
      sha256 "398729a6b0cf62d69c6a83c8cf204e6eac22b4170336277ef980b568effb24a3"
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
