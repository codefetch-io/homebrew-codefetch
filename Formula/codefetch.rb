class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.6/codefetch-1.0.6-darwin-amd64.tar.gz"
      sha256 "adc80261862335d1508ad859acfdfda233e93fed5d7baab7fe17cf490b1e1776"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.6/codefetch-1.0.6-darwin-arm64.tar.gz"
      sha256 "81bb67291a741884b8e21d7b2f86bcd3100594ffaba6be443f94fe2d8adcdd11"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.6/codefetch-1.0.6-linux-amd64.tar.gz"
      sha256 "52896b8fe60a8171080b57e1903bb626939b99dfa0700175cb5917bf89b59dbc"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.6/codefetch-1.0.6-linux-arm64.tar.gz"
      sha256 "b0a5332a1b641768fd67094d441f4f23358dd4bc642339f0302e3ac45c2f2633"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
