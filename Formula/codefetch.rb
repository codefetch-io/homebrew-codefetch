class Codefetch < Formula
  desc "A single-source of truth for scripts and config files that can be shared and run anywhere"
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "954a12df49d56b5df3113e75e6620ce15b4f0a3443448bd0b15aaa3efe47e6f8"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "fc1570925e75e5deae6c5272bf3fc2ccaae7ec40cd5d6a77eac9488b12dc6216"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "1403c25b15425b8fad39aaa7c5a8f3bc2dd6135c804da517a022db0277912122"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "41c1edb31f63f0a7fb4d515bfd6927df3b1a0008bcee4c2c5b7cfe482ee03971"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "version"
  end
end
