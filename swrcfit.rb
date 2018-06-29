class Swrcfit < Formula
  desc "Fitting of soil water retention curve"
  homepage "https://swrcfit.sourceforge.io/"
  # doi "10.5194/hessd-4-407-2007"
  url "https://github.com/sekika/swrcfit/archive/v3.0.tar.gz"
  sha256 "bee47347bad5db0ac72597b82d5fff20278e57d5792e431f6d987c52360d7021"
  revision 2
  head "https://github.com/sekika/swrcfit.git"

  depends_on "octave"
  depends_on "wget"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/swrcfit", "-v"
  end
end
