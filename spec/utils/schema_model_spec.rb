require 'spec_helper'

class SchemaModelSpec
  include SchemaModel

  schema :schema_model_spec,
    id: {
      type: Numeric
    },
    label_field: {
      type: String
    }
end

describe SchemaModelSpec do
  context 'with valid data' do
    let(:subject) do
      SchemaModelSpec.new(id: 1, label_field: '12345')
    end

    let(:json) do
      {
        'id' => 1,
        'labelField' => '12345'
      }
    end

    it { is_expected.to be_valid }
    it { expect(subject.errors).to be_empty }
    it { expect(subject.to_json).to eq json }
  end
end
