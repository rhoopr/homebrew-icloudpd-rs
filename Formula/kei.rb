class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.23.1/kei-macos-aarch64.tar.gz"
      sha256 "14c061f8c8c2d418711c540d1f1d7b5175950e98cdd162aa599c5fca82a3a4fa"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.23.1/kei-macos-x86_64.tar.gz"
      sha256 "794a32cef7197a2dae75eb43e150a7435ace768abe3585f8da252994251dc817"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.23.1/kei-linux-aarch64.tar.gz"
      sha256 "e620477a4e42f4702c6f50d0f5d0beded0c12cc47638982d85fcaffe2bccbfc6"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.23.1/kei-linux-x86_64.tar.gz"
      sha256 "2a07680e97a29e7ebc111c55ca8654e938a9ea2e2ac21777bd482a1285a15ae6"
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
