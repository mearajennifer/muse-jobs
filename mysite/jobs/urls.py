from django.urls import path

from . import views

app_name = 'jobs'
urlpatterns = [
    path('', views.JobsView.as_view(), name='jobs'),
    path('job/<int:pk>/', views.JobDetailView.as_view(), name='job-detail'),
    path('company/<int:pk>/', views.CompanyDetailView.as_view(),
         name='company-detail'),
]
