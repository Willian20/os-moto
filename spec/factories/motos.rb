# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :moto do
    nome "MyString"
    marca "MyString"
    cliente nil
    funcionario nil
  end
end
