class Saprobe < Formula
  desc "Audio decoding cli"
  homepage "https://github.com/mycophonic/saprobe"
  license "Apache-2.0"
  head "https://github.com/mycophonic/saprobe.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/saprobe"
  end

  test do
    system bin/"saprobe", "--version"
  end
end
