class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.7/kei-macos-aarch64.tar.gz"
      sha256 "4c0d8865aa84a355496870463cdb8fe44eab00b9add1fcfdd97b19196c2bc0bf"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.7/kei-macos-x86_64.tar.gz"
      sha256 "af17e4b0f5b00c560912e247af5bc5e40aa32b79434004a46e2eebdd665c82bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.7/kei-linux-aarch64.tar.gz"
      sha256 "c152197de0af830bbab03abbecd6a790222e57ddc823bc896a434de263b4f26b"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.7/kei-linux-x86_64.tar.gz"
      sha256 "c3c571f57d17c02091b7340e34a1dfac332c1df9b63e56ee4861ba95c3008a4d"
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
