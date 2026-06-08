class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.6/kei-macos-aarch64.tar.gz"
      sha256 "f4e0b3ebf6c513c414e1cfc617c696cc4a4ac678723fb0a50fdf19eba591281d"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.6/kei-macos-x86_64.tar.gz"
      sha256 "9594e8a8ce36386b0c5558ebb75599062c1b1006dd1cb82305330a972d614504"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.6/kei-linux-aarch64.tar.gz"
      sha256 "c3f4671f5b11aa9b814ae9cc67b6f46545430c56b83ff9bde30f03cdef5d77c2"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.6/kei-linux-x86_64.tar.gz"
      sha256 "a54f48003de9d657fe981a65e45c491140998e75991ada9e99b688b66acf742d"
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
