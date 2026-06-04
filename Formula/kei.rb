class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.4/kei-macos-aarch64.tar.gz"
      sha256 "23409414b4bd5cc384d4e8698fa5d72000a6b76456d49df1eac3ff28806eafd7"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.4/kei-macos-x86_64.tar.gz"
      sha256 "1912f61440b5a7bf0196931ab5ebd4bff144a90a2d2d022d13e2f4b9cbc32cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.4/kei-linux-aarch64.tar.gz"
      sha256 "d5eead46d168b866563f5887da22f33607773dbc10d4ae1707773ebfd54b3bbd"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.4/kei-linux-x86_64.tar.gz"
      sha256 "86c7a073d853f49d94921665d2fc6787af2cbde76e6430893e137b0a83ef03c4"
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
