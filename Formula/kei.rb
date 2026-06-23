class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.2/kei-macos-aarch64.tar.gz"
      sha256 "90dbfb710065394ba10937b46c83c80bd9e9fde3ef094d730df7ceeb7e015130"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.2/kei-macos-x86_64.tar.gz"
      sha256 "9e6cb948055a1b70acbe0e1609854a26e46314c5e1d349fd61d4a84a86813ac0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.2/kei-linux-aarch64.tar.gz"
      sha256 "172d0fc9943d72a4fa942bda19cc13685c144145740a05db2c4ac388a11ccacc"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.2/kei-linux-x86_64.tar.gz"
      sha256 "fe8f422fcc7b0ef7aeac3922975dee3d6b266049f195ccc14e6c933ad16f40f4"
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
