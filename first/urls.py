from django.urls import path, include
from . import views
from django.conf.urls.static import static
urlpatterns = [
    
   
   path('Roles/', views.createRole,name='role'),
   path('udelete/<str:pk>/', views.userDelete,name = "udelete"),
   path('list/',views.userlist, name = "userlist"),
   path('user/', views.createUser, name = "user"),
   path('logout/', views.logout,name = "logout"),
   path('dprivate/<int:pk>/', views.pdocumentDelete,name="private_delete"),
   path('private/', views.privateDocument,name = "private"),
   path('public/', views.publicDocument,name = "public"),
   path('history/',views.documentHistory,name = "history"),
   path('upload/', views.uploadfile,name = "upload"),
   path('login/', views.signIn,name = "login"),
   path('profile/', views.personalProfile,name = "profile"),
   path('Group/', views.createGroup,name = "group"),
   path('Grp/' , views.Groups,name="gmake"),
   path('search/', views.SearchDoc),
   path('password_reset/',views.ResetPass,name="password_reset"),
   path('groupwork/', views.Groupwork,name = "groupwork"),
   path('dashboard/', views.dashboard,name = "dashboard"),
   path('all/', views.AllDocument,name = "all"),
   path('rfg/', views.removefromgroup,name = "rfg"),
   path('VG/', views.ViewGrp,name = "VG"),
   path('Archive/<int:pk>/', views.ForceArchive, name = "Archived")
]
