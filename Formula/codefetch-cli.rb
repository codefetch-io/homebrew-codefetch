class CodefetchCli < Formula
  desc "CodeFetch CLI"
  homepage "https://codefetch.io"
  version "1.1.0"
  url "https://dl.cloudsmith.io/public/hsops/codefetch/raw/files/codefetch.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--help"
  end
end
