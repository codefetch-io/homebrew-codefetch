class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "450d8a6ee6cb02fc94f7bb4568cf8e68ad3e601e810e1ef5354db61d295a7fd9"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "8f309c804b9cbf267f54f4aa132e86bb3aa13ca0f9afc5eb76140f870d0d8887"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "1fad11e28aaae3b70d1177dd4a4f3b4dbca2018ef12bccc09b80f0750cea57a2"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "9960de114b3f8d26029e153f6e5938a006fc2a2537808e668da6abe208a9796e"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
