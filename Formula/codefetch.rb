class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.2.0/codefetch-1.2.0-darwin-amd64.tar.gz"
      sha256 "0f03a14443ffe4173dc22a2b8d2ee817c2ae1f8ef13e5c86ee9df95a743ee342"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.2.0/codefetch-1.2.0-darwin-arm64.tar.gz"
      sha256 "1d78062be55896a6ce489424b085c46dcdbcff9f70b8116fffefa5ab4a6c52e8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.2.0/codefetch-1.2.0-linux-amd64.tar.gz"
      sha256 "3626debe9aed85d8fe11912fa3f00aba3c4bc30f0851b7ea4a25d0cd23614d8c"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.2.0/codefetch-1.2.0-linux-arm64.tar.gz"
      sha256 "7a33dfe2eed7c5b17af82da2b7fd7cde74efb7e247fa1bd8eda75aa9bb655b1f"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
