Fabricator :user do
  email {"admin@tms.com"}
  password {"12345678"}
  password_confirmation {|attrs| attrs[:password]}
  name {"Instructor"}
  instructor {"true"}
end
