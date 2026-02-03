class IcloudpdRs < Formula
  desc "Fast, reliable iCloud Photos downloader written in Rust"
  homepage "https://github.com/rhoopr/icloudpd-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-macos-aarch64.tar.gz"
      sha256 "PLACEHOLDER_AARCH64"
    else
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-linux-aarch64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AARCH64"
    else
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64"
    end
  end

  def install
    bin.install "icloudpd-rs"
  end

  test do
    assert_match "icloudpd-rs", shell_output("#{bin}/icloudpd-rs --version")
  end
end
