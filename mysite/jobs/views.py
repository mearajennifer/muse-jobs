from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.views import generic
from django.utils import timezone

from .models import Job, Company


class JobsView(generic.ListView):
    """
    Main landing page. Lists all jobs.
    """
    template_name = 'jobs/index.html'
    context_object_name = 'jobs_list'

    def get_queryset(self):
        """
        Return all jobs from database, ordered by job title.
        """
        return Job.objects.all().order_by('job_title')


class CompaniesView(generic.ListView):
    """
    Lists all companies that have jobs on the site.
    """
    template_name = 'jobs/companies.html'
    context_object_name = 'companies_list'

    def get_queryset(self):
        """
        Return all companies from database, ordered by company name.
        """
        return Company.objects.all().order_by('company_name')


class AboutView(generic.TemplateView):
    """
    No database association. Displays info about the site.
    """
    template_name = 'jobs/about.html'


class JobDetailView(generic.DetailView):
    """
    Displays all info associated with a specific job.
    """
    model = Job
    template_name = 'jobs/detail.html'

    def get_queryset(self):
        """
        Return all job objects from database.
        """
        return Job.objects.filter().all()


class CompanyDetailView(generic.DetailView):
    """
    Displays all info associated with a specific company.
    """
    model = Company
    template_name = 'jobs/company.html'

    def get_queryset(self):
        """
        Return all company objects from database.
        """
        return Company.objects.filter().all()
