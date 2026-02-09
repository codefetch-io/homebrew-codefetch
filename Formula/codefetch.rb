class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.4/codefetch-1.0.4-darwin-amd64.tar.gz"
      sha256 "5b9e8b9b20a13f6c296425a719722311997d9ebc2b4fdeb81ea7505a9256bbe2"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.4/codefetch-1.0.4-darwin-arm64.tar.gz"
      sha256 "b063b00c33de5ac16cc9af702ac6f2d8c1a014e2888e1599cb459ff4383ecfd7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.4/codefetch-1.0.4-linux-amd64.tar.gz"
      sha256 "c4e37a73a9eea44fe9465a27c1a347f10eea8735e67595c8b38bb1dac3176db8"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.4/codefetch-1.0.4-linux-arm64.tar.gz"
      sha256 "60a8cf3c19956f2ca637f5514430972053e15d59edd53dffb24f827bf4674e85"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
