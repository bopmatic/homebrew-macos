class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.18.2.tar.gz"
  sha256 "a40349aa971d8d3139ab896da88ff282d9caf822ab5185f2de469510a048efca"
  license "AGPL-3.0-only"

  depends_on "make" => :build
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "BOPCLIVER=v0.18.2", "brewversion"
    system "make", "build"
    bin.install "bopmatic"
  end

  test do
    system "bopmatic", "version"
  end
end
