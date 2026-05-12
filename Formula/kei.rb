class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.14.0/kei-macos-aarch64.tar.gz"
      sha256 "b2e72bf750afeadbc414ee8297c1a9c553ba92a6bc8502cb00630ea7772f6220"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.14.0/kei-macos-x86_64.tar.gz"
      sha256 "223942d7c9df930f01f42f7770702a8006a6413f35c217e3f9265f44f5f6fe0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.14.0/kei-linux-aarch64.tar.gz"
      sha256 "ccc11acf1957bf03a8f9a53121e7fa805a3159f7c8a612d653da598c9a6e4adf"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.14.0/kei-linux-x86_64.tar.gz"
      sha256 "00283e968537fdded9986fbf5d8a03d16dbcbeb69a4995e979cb7b250ee139b0"
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
