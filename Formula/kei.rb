class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.11/kei-macos-aarch64.tar.gz"
      sha256 "9f43ffd24ba45c44bfa95dc1c3793d63ac00995d4c2a244f20824113ea5f75d2"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.11/kei-macos-x86_64.tar.gz"
      sha256 "4c4a8ab48a879cebe38e687c5f36db0cd8ec2db5ccedc1ddc8fc5e4036d12bdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.11/kei-linux-aarch64.tar.gz"
      sha256 "68d48d2fc330df1e809155e417167c9d0f586686d7b51b7af60903c011a49c65"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.11/kei-linux-x86_64.tar.gz"
      sha256 "51c24c643f5fdb44da1151d75873504083c8c282500e2848eeb8cd4694efb644"
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
