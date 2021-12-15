class Valar < Formula
  desc "Command line interface for Valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/v2.0.1.zip"
  version "2.0.1"
  sha256 "70e82ffbef33182dd8c49556b172ab09e69d403ced791b99f378c4f4f60a66ed"
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
