class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://codefetch.io"
  version "1.0.0"
  url "https://dl.cloudsmith.io/public/hsops/codefetch/raw/names/codefetch-1.0.0.tar.gz"
  sha256 "7fd766e842170ac0aa7bfe56cd2f5e63a73af64a8a3c2ff777dc21dc6a157cc8"
  license "MIT"

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--help"
  end
end
