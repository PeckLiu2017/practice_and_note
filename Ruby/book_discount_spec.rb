require_relative 'book_discount'

describe 'book_discount_price' do
  it "buy one episode1" do
    # 第一集买 1 本，总价应为 100 元
    result = book_discount('episode1')
    expect(result).to  eq(100)
  end

  it "buy one episode1 and one episode2" do
    # 第一集买 1 本、第二集买 1 本，总价应为 190 元
    result = book_discount('episode1','episode2')
    expect(result).to  eq(190)
  end

  it "buy one episode1 and two episode2" do
    # 第一集买 1 本、第二集买 2 本，总价应为 290 元
    result = book_discount('episode1','episode2','episode2')
    expect(result).to  eq(290)
  end

end
