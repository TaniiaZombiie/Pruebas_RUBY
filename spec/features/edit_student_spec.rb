require "rails_helper"

feature "Edit student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "11460260@gmail.com"
			fill_in "Password", with: "Heaven3165"
			fill_in "Password confirmation", with: "Heaven3165"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"

			fill_in "Nombre(s)", with: "Tania"
			fill_in "Apellidos", with: "Espinoza"
			fill_in "Número de control", with: "11460260"
			fill_in "Semestre", with: "09"

		click_on "Guardar"
		click_on "Editar"

			fill_in "Apellidos", with: "Espinoza"
		click_on "Guardar"
		sleep 5

			expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully updated."

	end
end
