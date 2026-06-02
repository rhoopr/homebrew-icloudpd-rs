class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.1/kei-macos-aarch64.tar.gz"
      sha256 "da236c57b01b2029d77b7fddbe0a6e2d7b3cd698a3b9903dcb8bbbe5aabf8159"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.1/kei-macos-x86_64.tar.gz"
      sha256 "f4ad98b63c88fc9116fca0f2e5de3ad53dd7423115f4e290bdf129e72afe9345"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.1/kei-linux-aarch64.tar.gz"
      sha256 "774d8358fc9185d9cbbb698347c9914951cc9490fe810c5f61eb568a37be6a0e"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.1/kei-linux-x86_64.tar.gz"
      sha256 "a4dcb09584a1b667f9a7ec44db13a7c9e843fdfc8ebc988a8775c6d7f6eeada6"
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
