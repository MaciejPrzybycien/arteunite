# Generated by Django 3.1.6 on 2021-03-07 13:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_auto_20210305_2231'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='homepage',
            name='spis',
        ),
        migrations.RemoveField(
            model_name='homepage',
            name='spis_link',
        ),
        migrations.RemoveField(
            model_name='homepage',
            name='spis_title',
        ),
        migrations.AddField(
            model_name='homepage',
            name='filozofia_link',
            field=models.TextField(blank=True),
        ),
        migrations.AddField(
            model_name='homepage',
            name='filozofia_title',
            field=models.TextField(blank=True),
        ),
    ]
