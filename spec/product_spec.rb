# frozen_string_literal: true

RSpec.describe "Product" do
  let(:products) { Product.products }

  it "create product" do
    product = Product.create(6, "Ford EcoSport", "UN")
    expect(product.id).to eq(6)
    expect(product.description).to eq("Ford EcoSport")
    expect(product.unity).to eq("UN")
  end

  it "get all products" do
    expect(products.length).to eq(5)
  end

  it "calculate manpower of product 1" do
    total_manpower = Product.calculemanpower("1")
    expect(total_manpower).to eq(8.49)
  end

  it "calculate manpower of product 2" do
    total_manpower = Product.calculemanpower("2")
    expect(total_manpower).to eq(8.51)
  end

  it "get first product" do
    product = products.first

    expect(product.id).to eq("1")
    expect(product.description).to eq("Chevrolet Onix")
    expect(product.unity).to eq("UN")
  end
end
