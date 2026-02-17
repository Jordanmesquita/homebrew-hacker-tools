class HackerTools < Formula
  desc "Jordan's hacker toolbox"
  homepage "https://github.com/jordanmesquita/hacker-tools"
  url "file://$(pwd)/hacker-tools-1.0.0.tar.gz"
  sha256 "$(shasum -a 256 hacker-tools-1.0.0.tar.gz | cut -d' ' -f1)"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_match "01101000 01100101", shell_output("#{bin}/textbin hello")
  end
end
