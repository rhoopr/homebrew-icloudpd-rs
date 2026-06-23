class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.4/kei-macos-aarch64.tar.gz"
      sha256 "59cc179cd264627dbc54497107eaf0c3331dd074ff220d0a49409e1e6d23d4e0"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.4/kei-macos-x86_64.tar.gz"
      sha256 "0bcac2a95d8708163c2155561abbd518fe7d62f461f0fdfb1c7b3d2f051808a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.4/kei-linux-aarch64.tar.gz"
      sha256 "0bd1b6d13cd5a4f349a60fadcdb8f2e98a82fe5dea6595ac96e6fd428d9d761d"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.4/kei-linux-x86_64.tar.gz"
      sha256 "4a6b4e95ce8a9ba642d8fe1d74d04450401c2b12545b5abc430cf7be1f26dc39"
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
