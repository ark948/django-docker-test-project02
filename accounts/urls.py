from django.urls import path, include
from accounts.views import SignupPageView

app_name="accounts"
urlpatterns = [
    path("signup/", SignupPageView.as_view(), name="signup"),
]