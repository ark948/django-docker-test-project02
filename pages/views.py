from django.shortcuts import render, HttpResponse
from django.views.generic import TemplateView

# Create your views here.

class HomePageView(TemplateView):
    template_name = "pages/home.html"