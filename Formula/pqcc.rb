class Pqcc < Formula
  desc "Governance dashboard for pqdx state files"
  homepage "https://piqued.cc"
  url "https://registry.npmjs.org/pqcc/-/pqcc-0.4.0.tgz"
  sha256 "a000e3bdd3289b4aca2549d04c89da2caa434a8661851ba283c9edaab742b176"
  license "SEE LICENSE IN LICENSE"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_predicate bin/"pqcc", :exist?
  end
end
