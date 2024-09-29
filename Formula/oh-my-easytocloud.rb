# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class OhMyEasytocloud < Formula
  desc "Upgrade oh-my-zsh agnoster theme with aws_env in prompt"
  homepage "https://github.com/easytocloud/oh-my-easytocloud"
  url "https://github.com/easytocloud/oh-my-easytocloud/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "0073cea37cb1bbeb1315e3764c3a31e5f18dcd58a2b6ec7f82cfbd1015f91893"
  license "MIT"

  def install
    cd "easytocloud-#{version}" do
  # Install the plugin directory to ~/.oh-my-zsh/custom/plugins
  plugin_dir = File.expand_path("~/.oh-my-zsh/custom/plugins/easytocloud")
  mkdir_p plugin_dir
  cp_r "plugins/easytocloud/.", plugin_dir

  # Install the theme file to ~/.oh-my-zsh/custom/themes
  theme_dir = File.expand_path("~/.oh-my-zsh/custom/themes")
  mkdir_p theme_dir
  cp "themes/easytocloud.zsh-theme", theme_dir
end
  end
end
