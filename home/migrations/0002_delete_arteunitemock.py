# Generated by Django 3.1.6 on 2021-02-21 00:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0060_fix_workflow_unique_constraint'),
        ('wagtailforms', '0004_add_verbose_name_plural'),
        ('wagtailredirects', '0006_redirect_increase_max_length'),
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.DeleteModel(
            name='ArteuniteMock',
        ),
    ]
