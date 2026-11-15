class Sporeprint < Formula
  desc "Audio fingerprinting tool using Chromaprint"
  homepage "https://github.com/mycophonic/sporeprint"
  license "Apache-2.0"
  head "https://github.com/mycophonic/sporeprint.git", branch: "main"

  depends_on "cmake" => :build
  depends_on "go" => :build

  test do
    system bin/"sporeprint", "--version"
  end

  def install
    system "make", "build"
    bin.install "bin/sporeprint"
  end
end