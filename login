username = admin
password = password
--DO NOT TOUCH ANY OF THIS CODE BELOW, OR YOU WILL WRECK THE LOGIN SYSTEM!
os.pullEvent = os.pullEventRaw
local t = term
local term = t
--^^ Make sure that i have the right one :)
t.setBackgroundColor(colors.lightGray)
t.clear()
t.setCursorPos(1,1)
t.setBackgroundColor(colors.gray)
t.setTextColor(colors.lightGray)
print("bOS Login")
t.setCursorPos(5,5)
t.setBackgroundColor(colors.lightGray)
t.setTextColor(colors.gray)
write("Username: ")
input = read()
if input == "username" then
	t.setTextColor(colors.green)
	t.setCursorPos(5,5)
	print("Username is Correct!")
	t.setCursorPos(5,6)
	t.setTextColor(colors.gray)
write("Password: ")
input = read("*")
if input == "password" then
	t.setTextColor(colors.green)
	t.setCursorPos(5,6)
	print("Password is Correct!")
	sleep(3)
	shell.run("main")
else
	t.setTextColor(colors.red)
	t.setCursorPos(5,6)
	print("Password is Incorrect!")
	sleep(3)
	os.reboot()
	end
else
	t.setCursorPos(5,5)
	t.setTextColor(colors.red)
	print("Username is Incorrect!")
	sleep(3)
	os.reboot()
end

