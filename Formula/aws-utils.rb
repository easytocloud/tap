# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class AwsUtils < Formula
  desc "Aws utilities"
  homepage "https://github.com/easytocloud/aws-utils"
  url "https://github.com/easytocloud/aws-utils/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "f797aa020d434f866121c0665cfa265159f6511dfda938b1957f405581adb238"
  license "MIT"

  def install
    bin.install "distribution/bin/ccclone"
bin.install "distribution/bin/cclist"
bin.install "distribution/bin/ccinit"
  end
end
