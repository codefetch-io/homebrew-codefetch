class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "9f54c6cde7b84d97661209c9bc920c4f8338ba8ded558c6432129834fbdbb963"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "67e63b55b8001cfbc6ae4801baec9599ac85970c5b3f0c742a794a6174498ab6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "173cff18b34f6164d24556cc26508129b462eae244ca76d51f1b6e4543dd491e"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "10577548f67c45045039089711ad480429eb56ef54de9329597ca5af133b8536"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
