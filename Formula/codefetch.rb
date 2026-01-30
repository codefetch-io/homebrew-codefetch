class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/hsops/codefetch"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-darwin-amd64.tar.gz"
      sha256 "c5ad0a46c6a37b0749bfff2f1c471e679b7356ec52e611c7066e639ea6e03ccb"
    else
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-darwin-arm64.tar.gz"
      sha256 "66102840746667c901f4eb232654901d36ea84bd29c564225663eda9d4693cf9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-linux-amd64.tar.gz"
      sha256 "644a6c39dd4cc8b9d4741ebd3957cab423ad9840bc6c2295903d4bd3489a8448"
    else
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-linux-arm64.tar.gz"
      sha256 "7505f63e4701a5d78d0256b954b75a981de68a9dd6dda258411faa383440de0d"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
