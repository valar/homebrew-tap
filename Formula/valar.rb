class Valar < Formula
  desc "Command-line interface for Valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/refs/tags/v4.1.0.tar.gz"
  sha256 "0497c2f0da337141c72189e584161ff5d69804b2b6926bf8165f5a6ecdeb0bb1"
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
