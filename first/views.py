from django.db.models.fields import DateField
from django.shortcuts import render, redirect
from django.contrib.auth.models import auth, User
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import authenticate,login,logout
from first.models import Roles,Userdata,Document,Group,works_on
from first.forms import RolesForm, UserForm ,DocumentForm, AvatarForm , GroupForm,SearchForm, GroupworkForm 
from django.contrib import messages
from django.conf import settings
from django.core.mail import send_mail
from django.contrib.auth.decorators import login_required
from django import forms
from datetime import date, datetime

def signIn(request):
    if request.method == 'POST':
        form = AuthenticationForm(request=request ,data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
             
            user =authenticate(username = username, password = password)
            
            if user is not None:
                login(request, user) 
                request.session['username']= username
                uname = request.session['username']
                u = Userdata.objects.get(Username = uname)
                r = Roles.objects.get(Position = 'Administrator')
                m= Roles.objects.get(Position = 'Manager')
                d  = Document.objects.filter(User_name = uname)
                for i in d:
                    now = date.today()
                    if i.Expiry_date < now:
                        i.Archived = True
                        i.save()
                return render(request,"Dashboard.html",{'user': u, 'r' : r,'m':m})
            else:
                messages.error(request,'Invalid username or password')    
        else:
           messages.error(request,'Invalid username or password')
    else:
        form = AuthenticationForm()
    return render(request,"login.html",{'form':form})  


@login_required(login_url="login")
def createRole(request):
    message = 0
    if request.method == "POST":
        form = RolesForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                message = "Role Created Successfully"
                return redirect()
                return redirect("dashboard")
            except:
                pass
    else:
        form = RolesForm()
    return render(request, "CreateRoles.html", {'form' : form, 'message' : message})

@login_required(login_url="login")
def createUser(request):
    message = 0
    if request.method == "POST":
        form = UserForm(request.POST, request.FILES)
        Username = request.POST['Username']
        Email = request.POST['Email']
        Password = request.POST['password']
        user  = User.objects.create_user(username = Username, email = Email, password = Password)
        if form.is_valid():
            try:
                
                form.save()
                message = "User Created Successfully"
                return redirect("dashboard")
            except:
                pass
    else:
        form = UserForm()
    return render(request, "createUser.html",{'form' : form, 'message' : message})

@login_required(login_url="login")
def uploadfile(request):
    message = 0
    if request.method == "POST":
        form = DocumentForm(request.POST, request.FILES)
        if form.is_valid():
            try:
                uname = request.session['username']
                print(uname)
                u = Userdata.objects.get(Username = uname)
                instance = form.save(commit = False)
                instance.User_name = u
                instance.save()
                message = "Document Uploaded Succesfully"
            except:
                pass
    else:
        form = DocumentForm()
    return render(request, "uploadfile.html",{'form' : form, 'message' : message})


@login_required(login_url="login")
def personalProfile(request):
    message = 0
    uname = request.session['username']
    print(uname)
    u = Userdata.objects.get(Username = uname)
    
    if request.method == "POST":
        form = AvatarForm(request.FILES)
        u.Avatar = request.FILES['Avatar']
        u.save()
        message = "Avatar Updated Succesfully"
        return redirect("profile")
    else:
        form = AvatarForm()    

    return render(request,"personal.html",{'profile' : u, 'form' : form, 'message' : message})

@login_required(login_url="login")
def documentHistory(request):
    uname =request.session['username']
    u = Document.objects.filter(User_name = uname)
    return render(request,"history.html",{'doc':u})

@login_required(login_url="login")
def publicDocument(request):
    u=Document.objects.filter(Document_type = 'public', Archived = False)
    return render(request,"public.html",{'doc':u})

@login_required(login_url="login")    
def privateDocument(request):
    uname =request.session['username']
    d = Document.objects.filter(User_name = uname,Document_type ='Private', Archived = False)
    return render(request,"private.html",{'doc':d})

@login_required(login_url="login")    
def createGroup(request):
    message = 0 
    if request.method == "SET":
            g = Group()
            g.save()
            
            message = "Group Created Successfully"
            form = GroupForm()

    if request.method == "POST":
        form = GroupForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                message = "Member added Successfully"
            except:
                pass
    else:
        form = GroupForm()
    return render(request, "CreateGroup.html", {'form' : form, 'message' : message})

@login_required(login_url="login")    
def Groups(request):
    g = Group()
    g.save()      
    message = "Group Created Successfully"
    return render(request, "Dashboard.html" ,{'message' : message})

def pdocumentDelete(request,pk):
    if request.method == "POST":
        u= Document.objects.get(pk=pk)
        u.delete()
        return redirect("private_delete")

@login_required(login_url="login")
def SearchDoc(request):
    uname= request.session['username']
    u = Userdata.objects.get(Username = uname)
    if request.method == "POST":
        form = SearchForm(request.POST)
        index = request.POST['Index']
        d = Document.objects.filter(Index__contains = index, Archived = False)
        return render(request, "Search.html",{'form' : form, 'doc' : d, 'u' : u})
        
    else:
        form = SearchForm()
    return render(request, "Search.html",{'form' : form} ) 
def ResetPass(request):
    if request.method == "POST":
        email = request.POST['email']
        u = Userdata.objects.get(Email = email)
        password = u.password
        send_mail('Your Password for DMS', 'Your password for the DMS is: ' + password + '. Sent by admin Rafat', 'kazi.meem@northsouth.edu', [email], fail_silently=False)
        message = 'Email Sent Sucessfully if you have an account!'
        return render(request, "password_reset_form.html", {'message': message})
    
    return render(request, "password_reset_form.html")

def logout(request):
    auth.logout(request)
    return redirect("login")

@login_required(login_url="login")
def userlist(request):
    u=Userdata.objects.all()
    return render(request,"userlist.html",{'doc':u})

def userDelete(request,pk):
     if request.method == "POST":
         u= Userdata.objects.get(pk=pk)
         s = User.objects.get(username = pk)
         u.delete()
         s.delete()
         return redirect("userlist")

@login_required(login_url="login")
def Groupwork(request):
    message = 0
    if request.method == "POST":
        form = GroupworkForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                message = "Group and document add Successfully"
            except:
                pass
    else:
        form = GroupworkForm()
    return render(request, "groupwork.html", {'form' : form, 'message' : message })

@login_required(login_url="login")
def dashboard(request):
    return render(request, "dashboard.html")    


def Groupwork(request):
    message = 0
    u = request.session['username']
    usern = Userdata.objects.get(Username = u)
    g = works_on.objects.filter(User_Name = usern)
    d = Document.objects.filter(User_name = usern)
    if request.method == "POST":
        
        form = GroupworkForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                message = "Document added Successfully"
                return render(request, "groupwork.html", {'form' : form, 'message' : message })
            except:
                pass
    else:
        form = GroupworkForm()
    return render(request, "groupwork.html", {'form' : form, 'message' : message })

@login_required(login_url="login")
def AllDocument(request):
    u=Document.objects.filter(Archived = False)
    return render(request,"all.html",{'doc':u})

def removefromgroup(request):
    message = 0
    if request.method == "POST":
        group = request.POST['Group']
        uname = request.POST['Username']
        Gr = Group.objects.get(Group_ID = group)
        usern = Userdata.objects.get(Username = uname)
        g = works_on.objects.get(User_Name = usern, Group = Gr)
        g.delete()
        message = "Member Deleted"
        return render(request, "removemember.html", {'message' : message })
    return render(request, "removemember.html", { 'message' : message })

def ViewGrp(request):
     u = request.session['username']
     w = works_on.objects.filter(User_Name = u)
     return render(request, "Viewgrps.html", {'w' : w})

def ForceArchive(request,pk):
    if request.method == "POST":
        d = Document.objects.get(SerialNo = pk)
        d.Archived = True
        d.save()
        return redirect("private")
