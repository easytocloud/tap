# typed: false
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Akskrotate < Formula
  desc "Rotate your aws access key / secret key with confidence"
  homepage "https://github.com/easytocloud/akskrotate"
  url "https://github.com/easytocloud/akskrotate/archive/v0.2.0.tar.gz"
  sha256 "564d562dfc8f00cb92cd81ca5e804f1537972137413524b56f6d18bb180c5f5a"
  license "MIT"

  depends_on "bash" => :build

  def install
    bin.install "distribution/bin/akskrotate" => "akskrotate"
  end

  test do
    assert_match("Please set AWS_PROFILE before calling akskrotate", shell_output("akskrotate 2>&1", 1))
  end
end
