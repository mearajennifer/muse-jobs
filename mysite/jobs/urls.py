from django.urls import path

from . import views

app_name = 'jobs'
urlpatterns = [
    path('', views.IndexView.as_view(), name='jobs'),
    path('job/<int:pk>/', views.DetailView.as_view(), name='job-detail'),
    path('company/<int:pk>/', views.DetailView.as_view(),
         name='company-detail'),
]
