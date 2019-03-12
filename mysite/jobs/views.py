from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.views import generic
from django.utils import timezone

from .models import Jobs, Companies


class JobsView(generic.ListView):
    template_name = 'jobs/index.html'
    context_object_name = 'jobs_list'

    def get_queryset(self):
        """
        Return the last five published questions (not including those set to be
        published in the future).
        """
        return Jobs.objects.query.all()


class JobDetailView(generic.DetailView):
    model = Jobs
    template_name = 'jobs/detail.html'

    def get_queryset(self):
        """
        Excludes any questions that aren't published yet.
        """
        return Jobs.objects.filter(pub_date__lte=timezone.now())


class CompanyDetailView(generic.DetailView):
    model = Companies
    template_name = 'jobs/companies.html'
