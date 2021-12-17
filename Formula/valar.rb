class Valar < Formula
  desc "Command-line interface for Valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/v3.0.0.tar.gz"
  sha256 "b2808a5e2e382d51f7061fc7a5b64690409edc192ec3c42210609c1120830aa3"
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
