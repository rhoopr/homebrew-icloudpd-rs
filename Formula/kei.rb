class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.3/kei-macos-aarch64.tar.gz"
      sha256 "303cf03eaefcded37ed2cf263cdd849ba11f9540d8c9b1ff5a36bc0e809921d4"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.3/kei-macos-x86_64.tar.gz"
      sha256 "11148631aea614114d96c40fa1a43b793093b01c3abf170d7bc688ceafb915fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.3/kei-linux-aarch64.tar.gz"
      sha256 "44eb99678e8c530d1dd5ae0c3db7f382dc42dcb6061a31683b7d8cdb25b45ed8"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.3/kei-linux-x86_64.tar.gz"
      sha256 "3325745a2a249898254292d60dc439ce8247fff24f6c196ecbef0c52c7aa8ad6"
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
