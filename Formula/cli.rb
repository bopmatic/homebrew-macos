class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.12.2.tar.gz"
  sha256 "4fdf1fa8e5e33ed6f30fe58b9b99d957134aeef4ba29a262982ce61ec2b13a25"
  license "AGPL-3.0-only"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", "-o", "bopmatic"
    bin.install "bopmatic"
  end

  test do
    system "bopmatic", "version"
  end
end
