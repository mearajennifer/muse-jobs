from django.urls import path

from . import views

app_name = 'jobs'
urlpatterns = [
    path('', views.JobsView.as_view(), name='jobs'),
    path('companies/', views.CompaniesView.as_view(), name='companies'),
    path('job-<int:pk>/', views.JobDetailView.as_view(), name='job-detail'),
    path('company/<int:pk>/', views.CompanyDetailView.as_view(),
         name='company-detail'),
    path('about-us/', views.AboutView.as_view(), name='about-us')
]
