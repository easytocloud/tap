# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class SsoTools < Formula
  desc "Sso tools for use in aws ec2 instances"
  homepage "https://github.com/easytocloud/sso-tools"
  url "https://github.com/easytocloud/sso-tools/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "845e491dc92773ce941f10c1e65bd67f6f9b5eabd80da9bc1bce95a9594432b1"

  def install
    bin.install "distribution/bin/ssostart"
bin.install "distribution/bin/cclist"
bin.install "distribution/bin/ccclone"
bin.install "distribution/bin/generate-sso-config"
  end
end
