class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "1fcce913619c3d8f7c631cf93594708b68c595ad984bae98a64f0a60aad8d188"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "121bb4a24830c2c45aa0505a4be58e476510ad25d8b72ce455cfe7b04fb8685f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "1ceaea76cd0fc646ea87fe0ce2f8eeb3a97f1991533b993bded2311080156fc1"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "74b0eeca96b7bec28e94529839bcc62b6aa79f30de7cd543d3c003b04596864f"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
