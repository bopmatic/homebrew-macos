class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.18.3.tar.gz"
  sha256 "320e27683298051b6cbadf7e89cf88d5517e35b0da64aabd1eb003a10c7dd6da"
  license "AGPL-3.0-only"

  depends_on "make" => :build
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "BOPCLIVER=v0.18.3", "brewversion"
    system "make", "build"
    bin.install "bopmatic"
  end

  test do
    system "bopmatic", "version"
  end
end
