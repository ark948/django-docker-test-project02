"""
URL configuration for core project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from wagtail.admin import urls as wagtailadmin_urls
from wagtail import urls as wagtail_urls
from wagtail.documents import urls as wagtaildocs_urls
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),

    path("accounts/", include("allauth.urls")),

    path("", include("pages.urls")),

    # wagtail
    # path('wgt/cms/', include(wagtailadmin_urls)),
    # path('wgt/documents/', include(wagtaildocs_urls)),
    # path('wgt/pages/', include(wagtail_urls)),
    path(r'', include('puput.urls')),
    
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

# these two were replaced by allauth urls
# path("accounts/", include("django.contrib.auth.urls")),
# path("accounts/", include("accounts.urls")),