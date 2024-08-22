# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class CodecommitUtils < Formula
  desc "Collection of command-line utilities to simplify working with aws codecommit r"
  homepage "https://github.com/easytocloud/codecommit-utils"
  url "https://github.com/easytocloud/codecommit-utils/archive/refs/tags/v0.6.4.tar.gz"
  sha256 "518230d69d96788baa9b39458f39e36ddc88f886f89d3ff63a9b890b37fa2752"
  license "MIT"

  def install
    bin.install "distribution/bin/ccclone"
bin.install "distribution/bin/cclist"
bin.install "distribution/bin/ccinit"
bash_completion.install "distribution/completions/ccclone-completion.bash"
zsh_completion.install "distribution/completions/_ccclone"
  end
end
