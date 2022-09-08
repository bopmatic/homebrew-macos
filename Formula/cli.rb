class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "515bf5fdce17a8e76d291023a53103573ff5e6fd3a34fd6fef9fef1505894d35"
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
