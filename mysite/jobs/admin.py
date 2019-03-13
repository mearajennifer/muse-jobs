from django.contrib import admin
from .models import Job, Company

admin.site.site_url = 'http://localhost:5000/jobs/'
admin.site.register(Job)
admin.site.register(Company, verbose_name_plural="Companies")
