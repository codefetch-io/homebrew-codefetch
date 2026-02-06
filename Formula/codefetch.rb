class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.3/codefetch-1.0.3-darwin-amd64.tar.gz"
      sha256 "a227b3e034cd6cec39ce00b89bc3e9e85bc7c18cdc50a79e1edab9a7106d138b"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.3/codefetch-1.0.3-darwin-arm64.tar.gz"
      sha256 "11cdeff842ed5d5a5e4e15553d80665d01922e5bc90e9403001fc2ca8d593e6a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.3/codefetch-1.0.3-linux-amd64.tar.gz"
      sha256 "af46f8d7263d09b535d17be333a3b90073066b412633f838cec2e32dcc388e25"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.3/codefetch-1.0.3-linux-arm64.tar.gz"
      sha256 "30e32abf55c9c005ade410a506a6eb5bf7946f54ec35513f2c07cdb065db8ecb"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
