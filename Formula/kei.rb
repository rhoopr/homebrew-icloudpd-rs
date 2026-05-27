class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.20.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.3/kei-macos-aarch64.tar.gz"
      sha256 "fe4a7e1d2e152c20b34aeee7f71bc479f989553411b81abfaf24b844494c0c09"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.3/kei-macos-x86_64.tar.gz"
      sha256 "7ffd0ec662b152878dcfa24bd9357c54d7be0de96664a94e7e76edab5af19050"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.3/kei-linux-aarch64.tar.gz"
      sha256 "8fe2b1169b168e7f4c638c2a7d5c9ea9b33e242505c516e3c7ca0d80dad90c35"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.3/kei-linux-x86_64.tar.gz"
      sha256 "c99f17d6ab80b16dde4b5474be6996fac533b95dc0a00043ac4fa4c1c8cc7c68"
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
