class Jpass < Formula
  desc "JPass is a CLI tool written in Swift that makes managing Jamf Pro's LAPS fast, secure, and scriptable. Effortlessly retrieve, set, or rotate local admin passwords — all from your terminal."
  homepage "https://github.com/manicmachine/jpass"
  url "https://github.com/manicmachine/jpass/releases/download/v1.2.0/jpass-v1.2.0.zip"
  sha256 "43444fef4827325686419e67ad4481aae605d24f3000a39fe216184059a4c4da"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on macos: :sonoma

  def install
    bin.install "jpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jpass --version")
  end
end
