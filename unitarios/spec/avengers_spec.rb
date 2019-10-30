class AvangersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

describe AvangersHeadQuarter do
  it "deve adicionar um vingador" do
    hq = AvangersHeadQuarter.new

    hq.put("Spiderman")
    expect(hq.list).to eql ["Spiderman"]
  end

  it "deve adicionar uma lista de vingadores" do
    hq = AvangersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Iron")

    #include verifica se há registro na lista
    expect(hq.list).to include "Thor"

    res = hq.list.size > 0
    expect(hq.list.size).to be > 0
    expect(res).to be true
  end

  it "thor deve ser o primeiro da lista" do
    hq = AvangersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Iron")

    expect(hq.list).to start_with("Thor")
  end

  it "thor deve ser o primeiro da lista" do
    hq = AvangersHeadQuarter.new
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Iron")

    expect(hq.list).to end_with("Iron")
  end

  it "deve conter sobrenome" do
    avenger = 'Peter Parker'

    expect(avenger).to match(/Parker/)
    #expect(avenger).not_to match(/Parker/)
  end
end
