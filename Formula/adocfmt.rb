class Adocfmt < Formula
  desc "An opinionated AsciiDoc formatter"
  homepage "https://github.com/dheid/adocfmt"
  url "https://github.com/dheid/adocfmt/releases/download/v0.3.1/adocfmt.jar"
  version "0.3.1"
  sha256 "46aaef5e3a0b6ec72b9c970f0b1173f408a271a4d936a08618d12251a56d71f3"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "adocfmt.jar"
    bin.write_jar_script libexec/"adocfmt.jar", "adocfmt", java_version: "17"
  end

  test do
    system "#{bin}/adocfmt", "--help"
  end
end
