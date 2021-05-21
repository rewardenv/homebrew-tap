# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.2.0-beta"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.2.0-beta/reward_Darwin_x86_64.tar.gz"
    sha256 "98d258a44b5caab27ed56bbbb01e75ebda53a92f0476876ef45354ecfde2d28f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.2.0-beta/reward_Linux_x86_64.tar.gz"
    sha256 "d003312a19e784b2c7372023bf42e299b42de8d8b33bde852a8eadea5bb0c436"
  end

  depends_on "docker" => :optional
  depends_on "docker-edge" => :optional
  depends_on "mutagen" => :optional

  def install
    bin.install "reward"
  end
end
