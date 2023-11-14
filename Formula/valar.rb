class Valar < Formula
  desc "Command-line interface for Valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/v3.3.0.tar.gz"
  sha256 "eff79926f30df3fd01005876703babd27d47187825ef48c54ac661afbcd668cb"
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
