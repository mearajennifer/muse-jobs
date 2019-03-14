from django.db import models


class Company(models.Model):
    """Model for company objects."""

    company_name = models.CharField(max_length=200)
    company_logo = models.CharField(max_length=100)
    company_desc = models.TextField(max_length=5000)
    facebook = models.CharField(max_length=100, default="")
    linkedin = models.CharField(max_length=100, default="")
    facebook = models.CharField(max_length=100, default="")
    twitter = models.CharField(max_length=100, default="")
    youtube = models.CharField(max_length=100, default="")

    class Meta:
        verbose_name_plural = "Companies"

    def __str__(self):
        return self.company_name


class Job(models.Model):
    """Model for Job objects. FK to Company table."""

    job_title = models.CharField(max_length=200)
    job_description = models.TextField(max_length=5000)
    job_city = models.CharField(max_length=100)
    job_state = models.CharField(max_length=2)
    job_link = models.CharField(max_length=500)
    company = models.ForeignKey(Company, on_delete=models.CASCADE)

    def __str__(self):
        return self.job_title
