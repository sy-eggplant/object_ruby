class Vending
    attr_reader :products
    def initialize(products)
        @products = products
    end 

    def buy(prod_name, money)
        prod_price = 0
        products.each { |product|
            if product.name == prod_name then
                prod_price = product.price
            end
        }
        if prod_price == 0 then
            return false
        else
            if prod_price > money then
                return false
            else 
                change = money - prod_price
                return prod_name, change
            end
        end
    end
end

class Product
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end 
end

products = []
products.push(Product.new("aa", 10))
products.push(Product.new("bb", 20))

vending = Vending.new(products)
if vending.buy("aa",100) then
    prod_name, change = vending.buy("aa",100)
    p prod_name + "を購入しました。おつりは" + change.to_s + "円です。"
else
    p "買えませんでした。"
end

if vending.buy("bb",1) then
    prod_name, change = vending.buy("bb",1)
    p prod_name + "を購入しました。おつりは" + change.to_s + "円です。"
else
    p "買えませんでした。"
end

