# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :servico do
    data "MyString"
    valor "MyString"
    status "MyString"
    cliente nil
    funcionario nil
    moto nil
    material nil
  end
end
