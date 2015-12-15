require "rails_helper"

feature "Create student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "11460260@gmail.com"
			fill_in "Password", with: "Heaven3165"
			fill_in "Password confirmation", with: "Heaven3165"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"

			fill_in "Nombre(s)", with: "Tania Isabel"
			fill_in "Apellidos", with: "Espinoza Aguilar"
			fill_in "Número de control", with: "11460260"
			fill_in "Semestre", with: "09"
		click_on "Guardar"
		sleep 5
				expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully created."

	end


		scenario "unsuccessfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "11460260@gmail.com"
			fill_in "Password", with: "Heaven3165"
			fill_in "Password confirmation", with: "Heaven3165"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		click_on "Guardar"
		sleep 5
			expect(current_path).to eq "/students"
			expect(page).to have_content "First name can't be blank"
    		expect(page).to have_content "Last name can't be blank"
    		expect(page).to have_content "Control number can't be blank"
    		expect(page).to have_content "Semester can't be blank"

	end

	scenario "First name" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "11460260@gmail.com"
			fill_in "Password", with: "Heaven3165"
			fill_in "Password confirmation", with: "Heaven3165"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"

			fill_in "Nombre(s)", with: "Irvin Eduardo"
			fill_in "Apellidos", with: "Rosas Padilla"
			fill_in "Número de control", with: "11460212"
			fill_in "Semestre", with: "TEA"

			click_on "Guardar"

			expect(current_path).to eq "/students/new"
		sleep 5
	end
end
