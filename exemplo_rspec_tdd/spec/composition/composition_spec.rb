require_relative './helper.rb'

RSpec.configure do |config|  # or I can set this on spec_helper.rb if I need my module throughout my app
  config.include Helper
end

describe 'Gabriel Coelho' do
  it { is_expected.to start_with('Gabriel').and end_with('Coelho') }
  it { expect(fruits).to eq('banana').or eq('maçã').or eq('uva') }

# def fruits # This is a arbitrary helper
#   ['banana', 'maçã', 'uva'].sample
# end

end
