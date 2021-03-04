# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.1.23-beta"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.1.23-beta/reward_Darwin_x86_64.tar.gz"
    sha256 "f6c23f706292c6a4f60f70bf9a75a522e0e3de8fc0250bdbe85788dbc2bc1542"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.1.23-beta/reward_Linux_x86_64.tar.gz"
    sha256 "5de687b9ee6be076f0db039324e536784d66cfce77a9f386059e6f3c26e4ff9f"
  end

  depends_on "docker" => :optional
  depends_on "docker-edge" => :optional
  depends_on "mutagen" => :optional

  def install
    bin.install "reward"
  end
end
