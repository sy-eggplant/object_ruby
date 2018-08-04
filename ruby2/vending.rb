class Vending
    attr_reader :products
    def initialize(products)
        @products = products
    end 
    def add(product)
        products.push(product)
    end

    def buy(prod_name, money)
        prod_price = -1
        products.each { |product|
            if product.name == prod_name then
                prod_price = product.price
            end
        }
        if prod_price != -1 and prod_price <= money  then
            change = money - prod_price
            return prod_name, change
        else
            return false
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
vending = Vending.new(products)
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