class Cli < Formula
  desc ""
  homepage ""
  url "https://github.com/bopmatic/cli/archive/refs/tags/v0.9.3.tar.gz"
  sha256 "cec4a045862b9ba544931d9bca52323ed6a2194b7e8e710b8fa69f89e2f4a129"
  license ""

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    ENV["GO111MODULE"] = "on"
    ENV["GOFLAGS"] = "-mod=vendor"
    system "go", "build", "-o", "bopmatic"
    bin.install "bopmatic"
  end

  test do
    system "bopmatic", "version"
  end
end
