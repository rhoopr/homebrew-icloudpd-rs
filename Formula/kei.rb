class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.7/kei-macos-aarch64.tar.gz"
      sha256 "19156adb8da63f08c989eacda777aa4d0bbec3b29716190e50bfd8ae35d1dfce"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.7/kei-macos-x86_64.tar.gz"
      sha256 "45ed5badca919da45d9ab386b76b6ff9ace70619f6b682e339f8a4295cb4e5c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.7/kei-linux-aarch64.tar.gz"
      sha256 "540691e555095cec9b37a4449d80e5e1d4240b52a0a666350c37adbc2a69e4cd"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.7/kei-linux-x86_64.tar.gz"
      sha256 "50af5305bce60a0cb8971e578d3d3127223b27fbfffe370f2ce6ab58da002579"
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
