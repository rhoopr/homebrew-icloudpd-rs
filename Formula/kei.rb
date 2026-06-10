class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.8/kei-macos-aarch64.tar.gz"
      sha256 "55197ac7c1764af3cc0f51c8b7cac8b1a56e284840c5361923fa35344ed02c31"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.8/kei-macos-x86_64.tar.gz"
      sha256 "42343b7074f9a59c8fe13a5a4e73e7bf26fdc38d29a82551d021d9b2663ba2f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.8/kei-linux-aarch64.tar.gz"
      sha256 "aeb35d1f13e31edca1b8b54fdf1cf707e16a27c7e6a933c5c004099500f0806b"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.8/kei-linux-x86_64.tar.gz"
      sha256 "d50bee7b5862602c4080504d39aa201c0347089ab4c42bcea322b35368e367e3"
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
