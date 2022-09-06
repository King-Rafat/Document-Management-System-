from django import forms
from django.forms.widgets import Widget
from first.models import Userdata, Document, Works_for, Group, Notification, Folder, Contains_in, Recieves, Roles,works_on

class RolesForm(forms.ModelForm):
    class Meta:
        model = Roles
        fields = ('Position',)
        widgets={
            'Position': forms.TextInput(attrs={'class': 'form-control','type':'text'}),
        }
        
class UserForm(forms.ModelForm):
    class Meta:
        model = Userdata
        fields ='__all__'

class DocumentForm(forms.ModelForm):
    class Meta:
        model =Document 
        fields =['Index','Expiry_date','Document_type','File',]
        widgets = {
        'Index': forms.TextInput(attrs={'class': 'form-control','placeholder':'Enter the index....', 'type':'text'}),
        'Expiry_date': forms.DateInput(format=('%d/%m/%Y'), attrs={'class':'form-control', 'placeholder':'Select a date', 'type':'date'}),
        'Document_type': forms.TextInput(attrs={'class':'form-control','placeholder':'Enter document type....', 'type':'text'}),
       
    }
    
class AvatarForm(forms.ModelForm):
    class Meta:
        model = Userdata
        fields = ['Avatar',]
class GroupForm(forms.ModelForm):
    class Meta:
        model = works_on
        fields = ['Group', 'User_Name',]

class SearchForm(forms.ModelForm):
    class Meta:
        model  = Document
        fields = ['Document_type', 'User_name']

class GroupworkForm(forms.ModelForm):
    class Meta:
        model = Works_for
        fields = ['Group', 'Ser_No',]