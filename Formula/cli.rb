class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.10.1.tar.gz"
  sha256 "e5d3c82f66e3265b08e2acedeb2bcded087b61f4cb53b880a9e8524ace6c76dc"
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
