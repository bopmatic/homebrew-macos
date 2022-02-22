class Cli < Formula
  desc ""
  homepage ""
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.9.2.tar.gz"
  sha256 "6e3eaf30c5db4bbdd3a9151636697aa49b8758c0427d5447efbe1170c614421a"
  license ""

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "bopmatic", "version"
  end
end
