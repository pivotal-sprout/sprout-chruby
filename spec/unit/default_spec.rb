# frozen_string_literal: true

require 'unit/spec_helper'

RSpec.describe 'sprout-chruby::default' do
  let(:runner) { ChefSpec::SoloRunner.new }

  before { runner.converge(described_recipe) }

  it 'installs rubies by default' do
    expect(runner).to include_recipe 'sprout-chruby::rubies'
  end

  it 'installs chruby by default' do
    expect(runner).to include_recipe 'sprout-chruby::chruby'
  end
end
