class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.0/kei-macos-aarch64.tar.gz"
      sha256 "26c2a39c129273b966ab4139533576c857c4dbb7ba79582db3c68fefd51cde5f"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.0/kei-macos-x86_64.tar.gz"
      sha256 "27d72e81cbc79eaa80de83e56055cc0fd01e643ae9f420593d7e7622755ffee3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.0/kei-linux-aarch64.tar.gz"
      sha256 "8c22505869f29f51c5dbb39c37156216f68ee10d64e5b75f44c7960b4c055808"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.0/kei-linux-x86_64.tar.gz"
      sha256 "396f610b53abe847136e78fbca4bfd683694bd1c36d2a4272f39c5b067858f31"
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
