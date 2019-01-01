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
	
		case @item_number.to_i
			when 1
				@@total_amount+=30000*@item_quantity
				@item_amount=30000*@item_quantity
				puts "Your total amount for TV is: "+@item_amount.to_s
				chech_exist("ELECTRONICS","TV")
			when 2
				@@total_amount+=13000*@item_quantity
   				@item_amount=13000*@item_quantity
				puts "Your total amount for Mobiles is: "+@item_amount.to_s
				chech_exist("ELECTRONICS","Mobile")
			when 3
				@@total_amount+=10000*@item_quantity
				@item_amount=10000*@item_quantity
				puts "Your total amount for oven is: "+@item_amount.to_s
				chech_exist("ELECTRONICS","Oven")
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
	
		case @item_number.to_i
			when 1
				@@total_amount+=300*@item_quantity
				@item_amount=300*@item_quantity;
				puts "Your total amount for Teddy bear is: "+@item_amount.to_s
				chech_exist("TOYS","Teddy bear")
				
			when 2
				@@total_amount+=350*@item_quantity
   				@item_amount=350*@item_quantity
				puts "Your total amount for Car is: "+@item_amount.to_s
				chech_exist("TOYS","car")
			when 3
				@@total_amount+=200*@item_quantity
				@item_amount=200*@item_quantity
				puts "Your total amount for Doll is: "+@item_amount.to_s
				chech_exist("TOYS","Doll")
				
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
	
		case @item_number.to_i
			when 1
				@@total_amount+=45000*@item_quantity
				@item_amount=45000*@item_quantity;
				puts "Your total amount for SOFA bear is: "+@item_amount.to_s
					chech_exist("FARNITURES","Sofa")
			when 2
				@@total_amount+=9000*@item_quantity
   				@item_amount=9000*@item_quantity;
				puts "Your total amount for BED is: "+@item_amount.to_s
					chech_exist("FARNITURES","Bad")

			when 3
				@@total_amount+=15000*@item_quantity
				@item_amount=15000*@item_quantity;
				puts "Your total amount for DRESSING TABLE is: "+@item_amount.to_s
				chech_exist("FARNITURES","Dressing Table")

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
	
		case @item_number.to_i
			when 1
				@@total_amount+=1000*@item_quantity
				@item_amount=1000*@item_quantity;
				puts "Your total amount for JEANS bear is: "+@item_amount.to_s
					chech_exist("CLOTHING","Jeans")


			when 2
				@@total_amount+=500*@item_quantity
   				@item_amount=500*@item_quantity;
				puts "Your total amount for TOP is: "+@item_amount.to_s
					chech_exist("CLOTHING","Top")

			when 3
				@@total_amount+=1500*@item_quantity
				@item_amount=1500*@item_quantity;
				puts "Your total amount for DRESS is: "+@item_amount.to_s
				chech_exist("CLOTHING","Dress")
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

	def chech_exist(item_category,item_name)
		@flag = 0
		@@bill.each do |item|
			if item[:item_name]== item_name		
				item[:item_quantity]+=@item_quantity
				item[:item_amount]+=@item_amount
				@flag=1
				break
			end	
		end
		if @flag==0
			@@bill << { item_category: item_category, item_name: item_name, item_quantity: @item_quantity, item_amount:@item_amount}
		end
					
	end
	def bill()
		puts "\n \n ---------------------------------------------------------------------- \n CATEGORY\t PRODUCTS\tQUANTITY\tAMOUNT\n-----------------------------------------------------------------------"
		

		@@bill.each do |item|
			#printf " %s %-40s %-10s %-5s %s\n",i+1,@@bill[i][:i_category],@@bill[i][:item_name],@@bill[i][:item_quantity],@@bill[i][:item_amount]
			

			puts "#{item[:item_category]}\t\t#{item[:item_name]}\t\t#{item[:item_quantity]}\t\t#{item[:item_amount]}"

		end
		puts "Your Name: #{@@customer_name}Total amount of Bill is: "+@@total_amount.to_s
		exit


	end

end

a1 = Myproduct.new
a1.display_menu