class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.24.1.tar.gz"
  sha256 "46cd38969a0944593d41f24c759596f8655dc38150dd899964fe80ffbbe83f03"
  license "AGPL-3.0-only"

  depends_on "make" => :build
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "BOPCLIVER=v0.24.1", "brewversion"
    system "make", "build"
    bin.install "bopmatic"
  end

  test do
    system "bopmatic", "version"
  end
end
