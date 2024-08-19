# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class AwsProfileOrganizer < Formula
  desc "Organize your aws profile"
  homepage "https://github.com/easytocloud/aws-profile-organizer"
  url "https://github.com/easytocloud/aws-profile-organizer/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "c56f55b5d95f6a2e876e108e7e068c628e3b3dec8c92cb8ce047cbc3a75dab28"
  license "MIT"

  depends_on "easytocloud/tap/zsh_functions"

  def install
    bin.install "distribution/bin/aws-profile-organizer-setup"
bin.install "distribution/bin/aws-profile-organizer-rc"
bin.install "distribution/bin/aws-profile-organizer-set-defaults"

zsh_function.install Dir["distribution/functions/*"]
bash_completion.install "completions/aws-profile-organizer-completion.bash"
zsh_completion.install "completions/aws-profile-organizer-completion.zsh"

# Create a wrapper script to source the functions and completions
(bin/"aws-profile-organizer").write <<~EOS
  #!/bin/bash
  if [ -n "$BASH_VERSION" ]; then
    source "#{zsh_function}/awsenv"
    source "#{zsh_function}/awsprofile"
    source "#{bash_completion}/aws-profile-organizer-completion.bash"
  elif [ -n "$ZSH_VERSION" ]; then
    source "#{zsh_function}/awsenv"
    source "#{zsh_function}/awsprofile"
    source "#{zsh_completion}/aws-profile-organizer-completion.zsh"
    autoload -U compinit && compinit
  else
    echo "Unsupported shell. Please use Bash or Zsh."
  fi
EOS

chmod 0755, bin/"aws-profile-organizer"
  end

  test do
    assert_match "Usage: awsenv", shell_output("bash -c 'source #{bin}/aws-profile-organizer && awsenv --help'")
assert_match "Usage: awsprofile", shell_output("bash -c 'source #{bin}/aws-profile-organizer && awsprofile --help'")
  end
end
