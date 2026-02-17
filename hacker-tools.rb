class HackerTools < Formula
  desc "Jordan's hacker toolbox: textbin + simple-trans"
  homepage "https://github.com/Jordanmesquita/hacker-tools"
  url "https://github.com/Jordanmesquita/hacker-tools/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4e0cc106c5d5755f7e43a5e844b75bf22f5d4a914249cbf5aa29e296be6894d5"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_match "hello", shell_output("#{bin}/simple-trans Hola")
  end
end
