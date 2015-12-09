class Artoolkit2 < Formula
  desc "Library for building Augmented Reality (AR) applications"
  homepage "https://www.hitl.washington.edu/artoolkit/"
  url "http://downloads.sourceforge.net/artoolkit/ARToolKit-2.72.1.tgz"
  version "2.72.1"
  sha256 "1a49a67c6e196b0e9990e90255ce840287ac47b5a53371a68a6dd93a5425d259"

  def install
    xcodebuild "-sdk", "macosx", "-arch", "i386"
    
    lib.install "./lib/libAR.a"
    lib.install "./lib/libARMulti.a"
    lib.install "./lib/libARgsub.a"
    lib.install "./lib/libARgsubUtil.a"
    lib.install "./lib/libARgsub_lite.a"
    lib.install "./lib/libARvideo.a"

    include.install Dir["include/*"]
  end

end
