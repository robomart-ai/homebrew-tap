class Robomart < Formula
  desc "Robomart Command - agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.0.1.tgz"
  sha256 "c0ab6021766b4f440dbf882d69708cd50cd7c063d070052be3e526c933221559"
  version "1.0.1"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.0.1", shell_output("#{bin}/robomart --version")
  end
end
