class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.12.5.tar.gz"
  sha256 "b56cdb3c5d19fd724f0979f421be6190dc307a2dc49f861ac93367964fa4200d"
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
