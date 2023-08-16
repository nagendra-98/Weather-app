from tkinter import *
from tkinter import ttk
import requests
city_name = "hyderabad"
data = requests.get("https://api.openweathermap.org/data/2.5/weather?q=+city_name+&appid=10867a6527f34a18293a8e2d91ffd08c").json()
print(data)
win = Tk()
win.title('Weatherapp')
win.config(bg = 'blue')
win.geometry("500x560")
name_label = Label(win, text = "Weatherapp.new", font = ("Time New Roman", 45, "bold"))
name_label.place(x = 25, y = 50, height = 50, width = 450)
list_name = ["Andhra Pradesh","Arunachal Pradesh ","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttar Pradesh","Uttarakhand","West Bengal","Andaman and Nicobar Islands","Chandigarh","Dadra and Nagar Haveli","Daman and Diu","Lakshadweep","National Capital Territory of Delhi","Puducherry"]
com = ttk.Combobox(win, text = "Weatherapp.new", font = ("Time New Roman", 20, "bold"))
com.place(x = 25, y = 120, height = 50, width = 450)
done_button = Button(win, text = "Weatherapp.new", font = ("Time New Roman", 20, "bold"))
done_button.place(y = 190, height = 50, width = 100, x = 200)
w_label = Label(win, text = "Weather Climate", font = ("Time New Roman", 20))
w_label.place(x = 25, y = 250, height = 50, width = 210)
w_label1 = Label(win, text = "t",font=("Times New Roman", 20))
w_label1.place = (x = 250, y = 260, height =50, width = 210)
wb_label = Label(win, text = "Weather Description", font = ("Time New Roman", 17))
wb_label.place(x = 25, y = 320, height = 50, width = 200)
temp_label = Label(win, text = "Temperature", font = ("Time New Roman", 20))
temp_label.place(x = 25, y = 400, height = 50, width = 200)
temp_label1 = Label(win, text ="", font = ("Time New Roman", 20))
temp_label1.place(x = 250, y = 400, height = 50, width = 200)
pre_label = Label(win, text = "Pressure", font = ("Time New Roman", 20))
pre_label.place(x = 25, y = 460, height = 50, width = 200)
win.mainloop()

