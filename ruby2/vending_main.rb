require File.expand_path('../vending.rb', __FILE__)

vending = Vending.new()
vending.add(Product.new("aa", 10))

if vending.buy("aa",100) then
    prod_name, change = vending.buy("aa",100)
    p prod_name + "を購入しました。おつりは" + change.to_s + "円です。"
else
    p "買えませんでした。"
end

if vending.buy("bb",100) then
    prod_name, change = vending.buy("bb",100)
    p prod_name + "を購入しました。おつりは" + change.to_s + "円です。"
else
    p "買えませんでした。"
end

vending.add(Product.new("bb", 10))

if vending.buy("bb",100) then
    prod_name, change = vending.buy("bb",100)
    p prod_name + "を購入しました。おつりは" + change.to_s + "円です。"
else
    p "買えませんでした。"
end