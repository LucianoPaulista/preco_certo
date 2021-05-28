# frozen_string_literal: true

RSpec.describe "Employee" do
  describe "GET employees" do
    let(:employees) { Employee.all }

    it "verify length employees" do
      expect(employees.length).to eq(5)
    end

    it "get first employee" do
      expect(employees.first["id"]).to eq("1")
      expect(employees.first["name"]).to eq("Luciano Paulista")
      expect(employees.first["salary"]).to eq("1700,00")
      expect(employees.first["work_time"]).to eq("220")
    end
  end

  it "create employee" do
    employee = Employee.create(10, "José", "1500,00", 200)

    expect(employee.id).to eq(10)
    expect(employee.name).to eq("José")
    expect(employee.salary).to eq("1500,00")
    expect(employee.work_time).to eq(200)
  end

  it "calculate minute cost of employee 2" do
    cost = Employee.calculate_minute_cost("3")
    expect(cost).to eq(0.125)
  end
end
