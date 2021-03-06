require "test/support/helper/spec/shared_examples/cask_dsl_base"
require "test/support/helper/spec/shared_examples/cask_staged"

describe Hbc::DSL::UninstallPreflight, :cask do
  let(:cask) { Hbc::CaskLoader.load(cask_path("basic-cask")) }
  let(:dsl) { Hbc::DSL::UninstallPreflight.new(cask, FakeSystemCommand) }

  it_behaves_like Hbc::DSL::Base

  it_behaves_like Hbc::Staged do
    let(:staged) { dsl }
  end
end
