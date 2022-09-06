# Generated by Django 3.1.7 on 2021-05-10 19:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Group',
            fields=[
                ('Group_ID', models.AutoField(primary_key=True, serialize=False)),
                ('Date_created', models.DateField(auto_now_add=True)),
            ],
            options={
                'db_table': 'Group',
            },
        ),
        migrations.CreateModel(
            name='Notification',
            fields=[
                ('Serial_No', models.AutoField(primary_key=True, serialize=False)),
                ('Description', models.TextField()),
                ('Date', models.DateField(auto_now_add=True)),
            ],
            options={
                'db_table': 'Notifications',
            },
        ),
        migrations.CreateModel(
            name='Roles',
            fields=[
                ('Position', models.CharField(max_length=50, primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'Role',
            },
        ),
        migrations.CreateModel(
            name='Userdata',
            fields=[
                ('Username', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('Email', models.EmailField(max_length=50)),
                ('password', models.CharField(max_length=50)),
                ('Avatar', models.ImageField(upload_to='Avatar')),
                ('Role', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.roles')),
            ],
            options={
                'db_table': 'User',
            },
        ),
        migrations.CreateModel(
            name='Folder',
            fields=[
                ('Folder_Id', models.AutoField(primary_key=True, serialize=False)),
                ('F_Name', models.CharField(max_length=50)),
                ('F_Cr_date', models.DateTimeField(max_length=50)),
                ('Parent', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.folder')),
            ],
            options={
                'db_table': 'Folder',
            },
        ),
        migrations.CreateModel(
            name='Document',
            fields=[
                ('SerialNo', models.AutoField(primary_key=True, serialize=False)),
                ('File', models.FileField(upload_to='')),
                ('Archived', models.BooleanField(default=False)),
                ('Upload_date', models.DateField(auto_now_add=True)),
                ('Expiry_date', models.DateField()),
                ('Document_type', models.CharField(max_length=50)),
                ('Index', models.TextField()),
                ('User_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.userdata')),
            ],
            options={
                'db_table': 'Document',
            },
        ),
        migrations.CreateModel(
            name='works_on',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Group', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.group')),
                ('User_Name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.userdata')),
            ],
            options={
                'db_table': 'works',
                'unique_together': {('User_Name', 'Group')},
            },
        ),
        migrations.CreateModel(
            name='Works_for',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Group', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.group')),
                ('Ser_No', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.document')),
            ],
            options={
                'db_table': 'Works_for',
                'unique_together': {('Group', 'Ser_No')},
            },
        ),
        migrations.CreateModel(
            name='Recieves',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Serial_num', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.notification')),
                ('User_Name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.userdata')),
            ],
            options={
                'db_table': 'Recieves',
                'unique_together': {('Serial_num', 'User_Name')},
            },
        ),
        migrations.CreateModel(
            name='Contains_in',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Doc', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.document')),
                ('Folder', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='first.folder')),
            ],
            options={
                'db_table': 'Contains',
                'unique_together': {('Doc', 'Folder')},
            },
        ),
    ]
