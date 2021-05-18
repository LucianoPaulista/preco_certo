# frozen_string_literal: true

require "preco_certo/data_parse"

RSpec.describe "Data Parse" do
  let!(:data_parsed) { DataParse.new("preco_certo/storage/costs.csv").parse! }

  it "return headers data parsed" do
    expect(data_parsed.headers).to eq(["id_despesa", "descricao", "valor"])
  end

  it "return first data parsed" do
    expect(data_parsed[0]["id_despesa"]).to eq("1")
  end
end
