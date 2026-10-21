class Valar < Formula
  desc "Command-line interface for Valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/refs/tags/v4.5.1.tar.gz"
  sha256 "7827d23ff026d5cf75aebbd079a6d5929181f5b721a0a629575048bf581ff992"
  license "Apache-2.0"
  head "https://github.com/valar/cli.git"

  depends_on "go" => :build
  depends_on "make" => :build

  def install
    system "make"
    bin.install "bin/valar" => "valar"
  end

  test do
    system "${bin}/valar", "version"
  end
end
