class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.8/kei-macos-aarch64.tar.gz"
      sha256 "0d64b25322e1ec02661dd66682d65895cdedc55c571c727b09f3a77c5f2fe78f"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.8/kei-macos-x86_64.tar.gz"
      sha256 "c427eb7a27ad16b6ef3b4e72da5276fe365e88eb15c21ab7e29ab270587deeae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.8/kei-linux-aarch64.tar.gz"
      sha256 "8bac498bdd7d22ad18cc06bbc51f5fba1b1dabfd187b0696cf98162f55a2d8af"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.8/kei-linux-x86_64.tar.gz"
      sha256 "4089ea7308df5ac39fa0ed26f17fa81e5689ef2d249ccccef8643cea1609b5ce"
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
