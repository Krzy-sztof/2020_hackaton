# Generated by Django 3.1.3 on 2020-11-07 16:26

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Offer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('price', models.FloatField()),
                ('volume', models.FloatField()),
                ('type', models.CharField(default=1, max_length=250)),
                ('calorificValue', models.FloatField()),
                ('sellOrBuy', models.IntegerField(choices=[(1, 'buy'), (2, 'sell')], default=1)),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Message',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('from1', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='message_from_set', to=settings.AUTH_USER_MODEL)),
                ('offer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='App1.offer')),
                ('to', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='message_to_set', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='DeniedAnswer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.CharField(max_length=256, null=True)),
                ('from1', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='deniedanswer_from_set', to=settings.AUTH_USER_MODEL)),
                ('offer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='App1.offer')),
                ('to', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='deniedanswer_to_set', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Answer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.CharField(max_length=256, null=True)),
                ('place', models.CharField(max_length=256, null=True)),
                ('time', models.CharField(max_length=256, null=True)),
                ('from1', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='answer_from_set', to=settings.AUTH_USER_MODEL)),
                ('offer', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='second_book', to='App1.offer')),
                ('to', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='answer_to_set', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Address',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('latitute', models.FloatField()),
                ('longitute', models.FloatField()),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
