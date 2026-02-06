class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "ab4f2f736fa58a4d2d76904f86a19e992202ac9f9e4ac719f2e6231068a6fb73"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "1f8c5fe4dea5f947278285c7af59fea2d8b034db880519333a7f141ffcccb6d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "7f266783d39907e40240ba619fd5e5c7d1e33ed90729accbfee0b2b8782e9c94"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "f148bfe95863965257e727c60110b8300db210187a1408e7f59a1f440e12e9d4"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
