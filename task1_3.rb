class Myproduct
		@@bill=[]
		@@total_amount=0
		@@customer_name=nil
		puts "Please enter Your Name:"
		@@customer_name=gets

	def display_menu()

		puts"PLEASE SELECT A CATEGORY:"
		puts"1.  ELECTRONICS \n2.  TOYS \n3.  FARNITURES \n4.  CLOTHING \n5.EXIT "
		@category_product = gets
		case @category_product.to_i
			when 1
   				electronics_product()
			when 2
				toys_product()
			when 3
   				farniture_product()
			when 4
   				clothing_products()
			when 5
   				bill()
   			else 
   				puts "INVALID!!! PLEASE TRY AGAIN"
   				display_menu()
			end
	end


	def electronics_product()
		puts "\n \n-----------------------\nELECTRONICS PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
		hsh = { "1. TV" => 30000, "2. Mobile" =>13000 , "3. Oven" => 10000}
			hsh.each do |key, value|
   		print key, "   ", value, "\n"
		end

		puts "please select a item number which you want to buy:"
		@item_number=gets.to_i
		puts "please enter  Quantity:"
		@item_quantity=gets.to_i
		@item_category="ELECTRONICS"
	
		case @item_number.to_i
			when 1
				@@total_amount+=30000*@item_quantity
				@item_amount=30000*@item_quantity
				puts "Your total amount for TV is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "TV", item_quantity: @item_quantity, item_amount:@item_amount}
			when 2
				@@total_amount+=13000*@item_quantity
   				@item_amount=13000*@item_quantity
				puts "Your total amount for Mobiles is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "Mobiles", item_quantity: @item_quantity, item_amount:@item_amount}
			when 3
				@@total_amount+=10000*@item_quantity
				@item_amount=10000*@item_quantity
				puts "Your total amount for oven is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "oven", item_quantity: @item_quantity, item_amount:@item_amount}
			else
				puts "INVALID!!! PLEASE TRY AGAIN"
				electronics_product()			
		end
		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			display_menu()
		else
			bill()

		end

	end

	def toys_product()
		puts "\n \n-----------------------\nTOYS PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
				hsh = { "1. TEDDY BEAR" => 300, "2. CAR" =>350 , "3. DOLL" => 200}
					hsh.each do |key, value|
		   		print key, "   ", value, "\n"
				end

		puts "please select a item number which you want to buy:"
		@item_number=gets.to_i
		puts "please enter  Quantity:"
		@item_quantity=gets.to_i
		@item_category="TOYS"
		case @item_number.to_i
			when 1
				@@total_amount+=300*@item_quantity
				@item_amount=300*@item_quantity;
				puts "Your total amount for Teddy bear is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "Teddy bear", item_quantity: @item_quantity, item_amount:@item_amount}
			when 2
				@@total_amount+=350*@item_quantity
   				@item_amount=350*@item_quantity
				puts "Your total amount for Car is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "Car", item_quantity: @item_quantity, item_amount:@item_amount}
			when 3
				@@total_amount+=200*@item_quantity
				@item_amount=200*@item_quantity
				puts "Your total amount for Doll is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "Doll", item_quantity: @item_quantity, item_amount:@item_amount}
			else
				puts "INVALID!!! PLEASE TRY AGAIN"
				toys_product()

			end

		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			display_menu()
		else
			bill()
		end
	end
	

	 def farniture_product()
		puts "\n \n-----------------------\nFARNITURE PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
		hsh = { "1. SOFA" => 45000, "2. BED" =>9000 , "3. DRESSING TABLE" => 15000}
			hsh.each do |key, value|
   		print key, "   ", value, "\n"
		end

		puts "please select a item number which you want to buy:"
		@item_number=gets.to_i
		puts "please enter  Quantity:"
		@item_quantity=gets.to_i
		@item_category="FARNITURES"
	
		case @item_number.to_i
			when 1
				@@total_amount+=45000*@item_quantity
				@item_amount=45000*@item_quantity;
				puts "Your total amount for SOFA is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "SOFA", item_quantity: @item_quantity, item_amount:@item_amount}
			when 2
				@@total_amount+=9000*@item_quantity
   				@item_amount=9000*@item_quantity;
				puts "Your total amount for BAD is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "BAD", item_quantity: @item_quantity, item_amount:@item_amount}

			when 3
				@@total_amount+=15000*@item_quantity
				@item_amount=15000*@item_quantity;
				puts "Your total amount for DRESSING TABLE is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "DRESSING TABLE", item_quantity: @item_quantity, item_amount:@item_amount}

			else
				puts "INVALID!!! PLEASE TRY AGAIN"
				farniture_product()
			end

		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			display_menu()
		else
			bill()
		end
	end
	
    def	clothing_products()
		puts "\n \n-----------------------\nCLOTHING PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
		hsh = { "1. JEANS" => 1000, "2. TOP" =>500 , "3. DRESS" => 1500}
			hsh.each do |key, value|
   		print key, "   ", value, "\n"
		end

		puts "please select a item number which you want to buy:"
		@item_number=gets.to_i
		puts "please enter  Quantity:"
		@item_quantity=gets.to_i
		@item_category="CLOTHING"
	
		case @item_number.to_i
			when 1
				@@total_amount+=1000*@item_quantity
				@item_amount=1000*@item_quantity;
				puts "Your total amount for JEANS bear is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "JEANS", item_quantity: @item_quantity, item_amount:@item_amount}

			when 2
				@@total_amount+=500*@item_quantity
   				@item_amount=500*@item_quantity;
				puts "Your total amount for TOP is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "TOP", item_quantity: @item_quantity, item_amount:@item_amount}
			when 3
				@@total_amount+=1500*@item_quantity
				@item_amount=1500*@item_quantity;
				puts "Your total amount for DRESS is: "+@item_amount.to_s
				@@bill << { item_category: @item_category, item_name: "DRESS", item_quantity: @item_quantity, item_amount:@item_amount}
			else
				puts "INVALID!!!please try again"
				@clothing_products

			end

		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			display_menu()
		else
			bill()
		end
	end

	
	def bill()

		bill_final=[]
		flag=false
		puts "\n \n ---------------------------------------------------------------------- \n CATEGORY\t PRODUCTS\tQUANTITY\tAMOUNT\n-----------------------------------------------------------------------"
		
		@@bill.each do |bil|
			bill_final.each do |fin_bil|
				if bil[:item_name]== fin_bil[:item_name]	
					fin_bil[:item_quantity]+=@item_quantity
					fin_bil[:item_amount]+=@item_amount
					flag=true
				end	
				break
			end
			if flag==false
				bill_final.push(bil)
				#bill_final << { item_category: bil[:item_category], item_name: bil[:item_name], item_quantity: bil[:item_quantity], item_amount:bil[:item_amount]}
			end
		end
		
		
		
		bill_final.each do |item|
			puts "#{item[:item_category]}\t\t#{item[:item_name]}\t\t#{item[:item_quantity]}\t\t#{item[:item_amount]}"
		end
		puts "Your Name: #{@@customer_name}Total amount of Bill is: "+@@total_amount.to_s
		exit
	end

end

a1 = Myproduct.new
a1.display_menu