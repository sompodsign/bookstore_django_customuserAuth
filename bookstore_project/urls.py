
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    # django admin
    path('admin/', admin.site.urls),
    # User management
    path('accounts/', include('django.contrib.auth.urls')), # new
    # local apps
    path('', include('pages.urls')),
    path('accounts/', include('users.urls')),


]
