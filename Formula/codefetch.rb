class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "d176c60fc32be2c2f4ff0bf67df18d863bc2615cd688b46cf9330e84c719640c"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "142b3d32b39386556d91862994bb48a17fbb2f3571648e9eed58dae0f459b29b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "ef594051a6a50eefe7d1828eec345574e91c9f63317b0248fed1b5c1a505569c"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "48f858323db8ae90528c8271eb35efbd32f66ac80dec4deed29bac9f7cfb8307"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
