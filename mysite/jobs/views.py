from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.views import generic
from django.utils import timezone

from .models import Job, Company


class JobsView(generic.ListView):
    template_name = 'jobs/index.html'
    context_object_name = 'jobs_list'

    def get_queryset(self):
        """
        Return the last five published questions (not including those set to be
        published in the future).
        """
        return Job.objects.all().order_by('job_title')


class CompaniesView(generic.ListView):
    template_name = 'jobs/companies.html'
    context_object_name = 'companies_list'

    def get_queryset(self):
        """
        Return the last five published questions (not including those set to be
        published in the future).
        """
        return Company.objects.all().order_by('company_name')


class AboutView(generic.TemplateView):
    template_name = 'jobs/about.html'


class JobDetailView(generic.DetailView):
    model = Job
    template_name = 'jobs/detail.html'

    def get_queryset(self):
        """
        Excludes any questions that aren't published yet.
        """
        return Job.objects.filter().all()


class CompanyDetailView(generic.DetailView):
    model = Company
    template_name = 'jobs/company.html'

    def get_queryset(self):
        """
        Excludes any questions that aren't published yet.
        """
        return Company.objects.filter().all()
