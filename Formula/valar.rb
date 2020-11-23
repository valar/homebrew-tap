# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Valar < Formula
  desc "Command line interface for valar"
  homepage "https://valar.dev"
  url "https://github.com/valar/cli/archive/v1.1.0.zip"
  sha256 "25dafb1492ca6691dbbdee05e99ef48f4f9292f64651e79bb8b4075d0c36be56"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/valar" => "valar"
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
