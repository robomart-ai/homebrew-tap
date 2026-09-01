class Robomart < Formula
  desc "Robomart Command - agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.1.0.tgz"
  sha256 "11fe9e67527da00ffe9b36c68b96542ec2e442ac8460b43228ec67ccfe355f31"
  version "1.1.0"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/robomart --version")
  end
end
