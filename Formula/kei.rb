class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.5/kei-macos-aarch64.tar.gz"
      sha256 "846715e07612326bd82f11fe35e4a2bd401d3892cabc04d9d08b15782034bd77"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.5/kei-macos-x86_64.tar.gz"
      sha256 "fe632bb38dc91502015cd83132814fd8c3e8a703ce658c201a092b5239bddc23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.5/kei-linux-aarch64.tar.gz"
      sha256 "971fff4d874de353b30080f68e56c1d56d7e939c958d5a64cfd3eef8fa34aad1"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.5/kei-linux-x86_64.tar.gz"
      sha256 "a286215ba631adb5012a396c6d8903a570097c09ccc05312bf3405920d3f92c9"
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
