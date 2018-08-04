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
            p "その商品はありません。"
        else
            if prod_price > money then
                p "金額が不足しています。"
            else 
                change = money - prod_price
                p prod_name + "を購入しました。おつりは" + change.to_s + "円です。"
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
vending.buy("aa",100)
vending.buy("bb",100)
vending.buy("bb",1)
vending.buy("cc",100)