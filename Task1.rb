class A

		@@i_category=[]
		@@i_name=[]
		@@i_quantity=[]
		@@i_amount=[]
		@@amount=0
		@@name=nil
		puts "Please enter Your Name:"
		@@name=gets

	def ini()
		

		puts"PLEASE SELECT A CATEGORY:"
		puts"1.  ELECTRONICS \n2.  TOYS \n3.  FARNITURES \n4.  CLOTHING \n5.EXIT "
		@cat = gets
		case @cat.to_i
			when 1
   				elec()
			when 2
				toys()
			when 3
   				farn()
			when 4
   				cloth()
			when 5
   				bill()
   			else 
   				puts "INVALID!!! PLEASE TRY AGAIN"
   				ini()
			end
	end


	def elec()
		puts "\n \n-----------------------\nELECTRONICS PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
		hsh = { "1. TV" => 30000, "2. Mobile" =>13000 , "3. Oven" => 10000}
			hsh.each do |key, value|
   		print key, "   ", value, "\n"
		end

		puts "please select a item number which you want to buy:"
		@ino=gets.to_i
		puts "please enter  Quantity:"
		@iqnt=gets.to_i
	
		case @ino.to_i
			when 1
				@@amount+=30000*@iqnt
				@amt=30000*@iqnt
				puts "Your total amount for TV is: "+@amt.to_s
				@@i_name.push'TV'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "ELECTRONICS"

				
				
			when 2
				@@amount+=13000*@iqnt
   				@amt=13000*@iqnt
				puts "Your total amount for Mobiles is: "+@amt.to_s
				@@i_name.push "Mobile"
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "ELECTRONICS"
				
			when 3
				@@amount+=10000*@iqnt
				@amt=10000*@iqnt
				puts "Your total amount for oven is: "+@amt.to_s
				@@i_name.push "Oven"
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "ELECTRONICS"
			else
				puts "INVALID!!! PLEASE TRY AGAIN"
				elec()			
		end
		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			ini()
		else
			bill()

		end

	end

	def toys()
		puts "\n \n-----------------------\nTOYS PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
				hsh = { "1. TEDDY BEAR" => 300, "2. CAR" =>350 , "3. DOLL" => 200}
					hsh.each do |key, value|
		   		print key, "   ", value, "\n"
				end

		puts "please select a item number which you want to buy:"
		@ino=gets.to_i
		puts "please enter  Quantity:"
		@iqnt=gets.to_i
	
		case @ino.to_i
			when 1
				@@amount+=300*@iqnt
				@amt=300*@iqnt;
				puts "Your total amount for Teddy bear is: "+@amt.to_s
				@@i_name.push'Teddy bear'
				@@i_quantity.push @iqnt
				@@i_amount .push @amt
				@@i_category.push "TOYS"

			when 2
				@@amount+=350*@iqnt
   				@amt=350*@iqnt
				puts "Your total amount for Car is: "+@amt.to_s
				@@i_name.push'car'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "TOYS"

			when 3
				@@amount+=200*@iqnt
				@amt=200*@iqnt
				puts "Your total amount for Doll is: "+@amt.to_s
				@@i_name.push'doll'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "TOYS"

			else
				puts "INVALID!!! PLEASE TRY AGAIN"
				toys()

			end

		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			ini()
		else
			bill()
		end
	end
	

	 def farn()
		puts "\n \n-----------------------\nFARNITURE PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
		hsh = { "1. SOFA" => 45000, "2. BED" =>9000 , "3. DRESSING TABLE" => 15000}
			hsh.each do |key, value|
   		print key, "   ", value, "\n"
		end

		puts "please select a item number which you want to buy:"
		@ino=gets.to_i
		puts "please enter  Quantity:"
		@iqnt=gets.to_i
	
		case @ino.to_i
			when 1
				@@amount+=45000*@iqnt
				@amt=45000*@iqnt;
				puts "Your total amount for SOFA bear is: "+@amt.to_s
				@@i_name.push'Sofa'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "FARNITURES"

			when 2
				@@amount+=9000*@iqnt
   				@amt=9000*@iqnt;
				puts "Your total amount for BED is: "+@amt.to_s
				@@i_name.push'BED'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "FARNITURES"

			when 3
				@@amount+=15000*@iqnt
				@amt=15000*@iqnt;
				puts "Your total amount for DRESS TABLE is: "+@amt.to_s
				@@i_name.push'Dressing Table'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "FARNITURES"

			else
				puts "INVALID!!! PLEASE TRY AGAIN"
				farn()
			end

		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			ini()
		else
			bill()
		end
	end
	
    def	cloth()
		puts "\n \n-----------------------\nCLOTHING PRODUCTS\n-----------------------\nITEM   PRICE\n\n"
		hsh = { "1. JEANS" => 1000, "2. TOP" =>500 , "3. DRESS" => 1500}
			hsh.each do |key, value|
   		print key, "   ", value, "\n"
		end

		puts "please select a item number which you want to buy:"
		@ino=gets.to_i
		puts "please enter  Quantity:"
		@iqnt=gets.to_i
	
		case @ino.to_i
			when 1
				@@amount+=1000*@iqnt
				@amt=1000*@iqnt;
				puts "Your total amount for JEANS bear is: "+@amt.to_s
				@@i_name.push'Jeans'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "CLOTHING"


			when 2
				@@amount+=500*@iqnt
   				@amt=500*@iqnt;
				puts "Your total amount for TOP is: "+@amt.to_s
				@@i_name.push'Top'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "CLOTHING"


			when 3
				@@amount+=1500*@iqnt
				@amt=1500*@iqnt;
				puts "Your total amount for DRESS is: "+@amt.to_s
				@@i_name.push'Dress'
				@@i_quantity.push @iqnt
				@@i_amount.push @amt
				@@i_category.push "CLOTHING"
			else
				puts "INVALID!!!please try again"
				@cloth

			end

		puts "You want to buy a more items? \n1. continue\n2. Exit"
		@des=gets.to_i
		if @des==1
			ini()
		else
			bill()
		end
	end

	def bill()
		puts "\n \n ---------------------------------------------------------------------- \n CATEGORY\t PRODUCTS\tQUANTITY\tAMOUNT\n-----------------------------------------------------------------------"
		for i in 0..@@i_name.length
			puts "#{@@i_category.at(i)}\t\t"+"#{@@i_name.at(i)}\t\t"+"#{@@i_quantity.at(i)}\t\t"+"#{@@i_amount.at(i)}"
		end
		puts "Your Name: #{@@name}Total amount of Bill is: "+@@amount.to_s
		exit

	end

end

a1 = A.new
a1.ini