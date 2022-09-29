class Cli < Formula
  desc "Bopmatic CLI"
  homepage "github.com/bopmatic/cli"
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.12.6.tar.gz"
  sha256 "156cf66e8fd3b1575a99f6475ca76d541b1bda7ecb65ab2911895c334e25f713"
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
