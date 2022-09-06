from django.db import models
from django import forms
from datetime import datetime
from django.forms import ModelForm, Textarea

class Userdata(models.Model):
    Username = models.CharField(max_length=50, primary_key = True)
    Email = models.EmailField(max_length=50)
    password = models.CharField(max_length=50)
    Avatar = models.ImageField(upload_to='Avatar')
    Role = models.ForeignKey('Roles', on_delete = models.CASCADE)
    class Meta:
        db_table = "User"
    def __str__(self):
        return self.Username    

class Works_for(models.Model):
    Group = models.ForeignKey('Group', on_delete = models.CASCADE)
    Ser_No = models.ForeignKey('Document', on_delete = models.CASCADE)
    class Meta:
        db_table = "Works_for"
        unique_together = (("Group", "Ser_No"),)

class Document(models.Model):
    SerialNo = models.AutoField(primary_key = True)
    File = models.FileField(upload_to='Document')
    Archived = models.BooleanField(default = False)
    User_name = models.ForeignKey('Userdata', on_delete = models.CASCADE)
    Upload_date = models.DateField(auto_now=False, auto_now_add=True) 
    Expiry_date = models.DateField()
    Document_type = models.CharField(max_length = 50)
    Index = models.TextField()
    class Meta:
        db_table = "Document"
    def __str__(self):
            return self.Index    

class Group(models.Model):
    Group_ID = models.AutoField(primary_key = True)
    Date_created = models.DateField(auto_now = False, auto_now_add = True)
    class Meta:
        db_table = "Group"
    def __str__(self):
            return str(self.Group_ID)    

class Notification(models.Model):
    Serial_No = models.AutoField(primary_key = True)
    Description = models.TextField()
    Date = models.DateField(auto_now=False, auto_now_add=True) 
    class Meta:
        db_table = "Notifications"

class Folder(models.Model):
    Folder_Id = models.AutoField(primary_key = True)
    F_Name = models.CharField(max_length=50)
    F_Cr_date = models.DateTimeField(max_length=50)
    Parent = models.ForeignKey('Folder', on_delete=models.CASCADE)
    class Meta:
        db_table = "Folder"


class Contains_in(models.Model):
    Doc = models.ForeignKey('Document', on_delete=models.CASCADE)
    Folder = models.ForeignKey('Folder', on_delete=models.CASCADE)
    class Meta:
        db_table = "Contains"
        unique_together = (("Doc", "Folder"),)

class Recieves(models.Model):
    Serial_num = models.ForeignKey('Notification', on_delete=models.CASCADE)
    User_Name = models.ForeignKey('Userdata', on_delete=models.CASCADE)
    class Meta:
        db_table = "Recieves"
        unique_together = (("Serial_num", "User_Name"),)

class Roles(models.Model):
    Position = models.CharField(max_length=50,primary_key = True)  
    class Meta:
        db_table = "Role" 
    def __str__(self):
        return self.Position 
        

class works_on(models.Model):
    User_Name = models.ForeignKey('Userdata', on_delete = models.CASCADE)
    Group = models.ForeignKey('Group', on_delete = models.CASCADE)  
    class Meta:
        db_table = "works" 
        unique_together = (("User_Name", "Group"),)

    def __str__(self):
        return str(self.Group)

#class OCRsrch(models.Model):
    