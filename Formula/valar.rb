class Valar < Formula
  desc "Command-line interface for Valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/refs/tags/v4.0.0.tar.gz"
  sha256 "9ec8b3e63d345ddb723337ec0b9c5bd8ee42c2c170dc0e132ef80e35f7b70384"
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
