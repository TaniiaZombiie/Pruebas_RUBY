require 'rails_helper'

describe Student do
	describe "#full_name" do
		it "returns complete name" do
			student=Student.create!(
				first_name: "Tania",
				last_name: "Espinoza",
				birthdate: "06/01/1993",
		    	control_number:"11460260",
		    	semester: "09" )

		    expect(student.name).to eq "Tania Espinoza"
		end
	end

	describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Espinoza", birthdate: "06/01/1993", control_number:"11460260", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Tania", birthdate: "06/01/1993", control_number:"11460260", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Tania", last_name: "Espinoza", control_number:"11460260", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end

	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Tania", last_name: "Espinoza", birthdate: "06/01/1993", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Tania", last_name: "Espinoza", birthdate: "06/01/1993", control_number:"11460260")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end

  	end
16

  		it "returns complete name" do
			student=Student.create!(
				first_name: "Roberto",
				last_name: "Avalos",
				birthdate: "19/01/1993",
		    	control_number:"11460204",
		    	semester: "09" )

		    expect(student.name).to eq "Roberto Avalos"
		end

			describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Avalos", birthdate: "19/01/1993", control_number:"11460204", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Roberto", birthdate: "19/01/1993", control_number:"11460204", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Roberto", last_name: "Avalos", control_number:"11460204", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end

	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Roberto", last_name: "Avalos", birthdate: "19/01/1993", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Roberto", last_name: "Avalos", birthdate: "19/01/1993", control_number:"11460204")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end

  	end

end

