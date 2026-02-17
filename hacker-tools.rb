class HackerTools < Formula
  desc "Jordan's hacker toolbox: textbin + trans"
  homepage "https://github.com/Jordanmesquita/hacker-tools"
  url "https://github.com/Jordanmesquita/hacker-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_REAL_HASH"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_match "01101000 01100101", shell_output("#{bin}/textbin hello")
  end
end
