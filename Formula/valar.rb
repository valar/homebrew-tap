# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Valar < Formula
  desc "Command line interface for valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/releases/download/v1.0.1/valar_darwin_amd64"
  sha256 "6ed5655805ffa6df954db07056a5992a0d3a4bbae46a76c4bdb43c1524ed6b58"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    bin.install "valar_darwin_amd64" => "valar"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
