from django.db import models


class Company(models.Model):
    verbose_name_plural = "Companies"

    company_name = models.CharField(max_length=200)
    company_logo = models.CharField(max_length=100)
    company_desc = models.TextField(max_length=5000)

    def __str__(self):
        return self.company_name


class Job(models.Model):
    job_title = models.CharField(max_length=200)
    job_description = models.TextField(max_length=5000)
    job_city = models.CharField(max_length=100)
    job_state = models.CharField(max_length=2)
    job_link = models.CharField(max_length=500)
    company = models.ForeignKey(Company, on_delete=models.CASCADE)

    def __str__(self):
        return self.job_title
