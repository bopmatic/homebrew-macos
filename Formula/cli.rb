class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.18.4.tar.gz"
  sha256 "dbeea80dc4a470d6daf8073e43ae9c154c18bdb6731574a9118b38f470d388ea"
  license "AGPL-3.0-only"

  depends_on "make" => :build
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "make", "BOPCLIVER=v0.18.4", "brewversion"
    system "make", "build"
    bin.install "bopmatic"
  end

  test do
    system "bopmatic", "version"
  end
end
