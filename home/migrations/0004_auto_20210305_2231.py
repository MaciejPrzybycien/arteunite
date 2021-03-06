# Generated by Django 3.1.6 on 2021-03-05 21:31

from django.db import migrations, models
import wagtail.core.fields


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_homepage_filozofia'),
    ]

    operations = [
        migrations.AddField(
            model_name='homepage',
            name='spis',
            field=wagtail.core.fields.RichTextField(blank=True),
        ),
        migrations.AddField(
            model_name='homepage',
            name='spis_link',
            field=models.TextField(blank=True),
        ),
        migrations.AddField(
            model_name='homepage',
            name='spis_title',
            field=models.TextField(blank=True),
        ),
    ]