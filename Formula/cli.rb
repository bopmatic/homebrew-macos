class Cli < Formula
  desc ""
  homepage ""
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "d99112d52b70c003410ff23f5473c41d66601c5ad9a3c76bc049f2f78293612f"
  license ""

  depends_on "go" => :build

  def install
    ENV.deparallelize
    system "make"
  end

  test do
    system "bopmatic", "version"
  end
end
