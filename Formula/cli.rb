class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.22.1.tar.gz"
  sha256 "6780885c8c3752fba4c0f75677ba9f092e85bd6c77fbfa97fed1d0d65bc02621"
  license "AGPL-3.0-only"

  depends_on "make" => :build
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "BOPCLIVER=v0.22.1", "brewversion"
    system "make", "build"
    bin.install "bopmatic"
  end

  test do
    system "bopmatic", "version"
  end
end
