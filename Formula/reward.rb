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
    sha256 "f63e82eb14216534811a0fff5953a584285ec20d9ce22c2c58a77b6fca702b1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.2.0-beta/reward_Linux_x86_64.tar.gz"
    sha256 "e2f501d3f6cb33242c68e28f3be576dbf361e303a8890677d236f34d7bf67c5b"
  end

  depends_on "docker" => :optional
  depends_on "docker-edge" => :optional
  depends_on "mutagen" => :optional

  def install
    bin.install "reward"
  end
end
