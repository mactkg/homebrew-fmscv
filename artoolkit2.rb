class Artoolkit2 < Formula
  desc "Library for building Augmented Reality (AR) applications"
  homepage "https://www.hitl.washington.edu/artoolkit/"
  url "http://downloads.sourceforge.net/artoolkit/ARToolKit-2.72.1.tgz"
  version "2.72.1"
  sha256 "1a49a67c6e196b0e9990e90255ce840287ac47b5a53371a68a6dd93a5425d259"

  def patches
    [
      'https://gist.githubusercontent.com/mactkg/72c887f93930525a12bb/raw/188b69cc1d1afb758a70a6e725276102c0371c86/arLabeling-large-video.patch'
    ]
  end

  def install
    xcodebuild "-arch", "i386", "-sdk", "macosx", "MACOSX_DEPLOYMENT_TARGET=#{MacOS.version}", "SDKROOT="
    
    lib.install "./lib/libAR.a"
    lib.install "./lib/libARMulti.a"
    lib.install "./lib/libARgsub.a"
    lib.install "./lib/libARgsubUtil.a"
    lib.install "./lib/libARgsub_lite.a"
    lib.install "./lib/libARvideo.a"

    include.install Dir["include/*"]
  end
end
