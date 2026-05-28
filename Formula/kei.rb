class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.20.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.4/kei-macos-aarch64.tar.gz"
      sha256 "32524bc3d409c793cc1869a60799581bf05ad048ecffb365e3aefb6b297583ea"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.4/kei-macos-x86_64.tar.gz"
      sha256 "cf48b054d26f29c71c3e3cb58f3dc5fe98db45c7bfc887b5ea9e52b22da40558"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.4/kei-linux-aarch64.tar.gz"
      sha256 "f1505c2666a4c26e1238564ea887dcbf488ac06f5f147361e5a876254f4a300f"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.4/kei-linux-x86_64.tar.gz"
      sha256 "2e10fe490407fd460b09d0d96b922874ad4ac63e884b5d4b4ef03371aa4c7ed5"
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
