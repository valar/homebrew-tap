class Valar < Formula
  desc "Command-line interface for Valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/v3.0.1.tar.gz"
  sha256 "6acb0ddc7570d90c8d51940aa66dd7bfce3d279278c4af6204f93736b1589d4b"
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
