# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.1.3-beta"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rewardenv/reward/releases/download/v0.1.3-beta/reward_Darwin_x86_64.tar.gz"
    sha256 "5fc8975e6997d834016f2e6aed4111756452d5532bb347b3a7c33134e06c9c85"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.1.3-beta/reward_Linux_x86_64.tar.gz"
    sha256 "aa2e6a8221dd6f5aae6817b66f35fc4cf72b476b3870e39897e9eb2360266e3f"
  end

  depends_on "docker" => :optional
  depends_on "docker-edge" => :optional
  depends_on "mutagen" => :optional

  def install
    bin.install "reward"
  end
end
