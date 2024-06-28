require_relative '../linear_search'

RSpec.describe '#linear_search' do
  it 'retorna o índice do elemento quando o elemento está presente' do
    arr = [2, 3, 4, 10, 40]
    x = 10
    expect(linear_search(arr, x)).to eq(3)
  end

  it 'retorna -1 quando o elemento não está presente na lista' do
    arr = [2, 3, 4, 10, 40]
    x = 5
    expect(linear_search(arr, x)).to eq(-1)
  end

  it 'retorna o índice do primeiro elemento encontrado quando há duplicatas' do
    arr = [2, 3, 4, 10, 40, 10]
    x = 10
    expect(linear_search(arr, x)).to eq(3)
  end

  it 'retorna -1 para uma lista vazia' do
    arr = []
    x = 10
    expect(linear_search(arr, x)).to eq(-1)
  end
end
