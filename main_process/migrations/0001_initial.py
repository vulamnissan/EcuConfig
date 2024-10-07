# Generated by Django 5.1.1 on 2024-09-23 06:38

import django.contrib.auth.models
import django.contrib.auth.validators
import django.db.models.deletion
import django.utils.timezone
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='Department',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('department_name', models.CharField(max_length=100, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='Ecu',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ecu_name', models.CharField(max_length=50, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='Event_infor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('event_name', models.CharField(max_length=255)),
                ('status', models.CharField(max_length=20)),
                ('gdr', models.CharField(max_length=255)),
                ('storage_period', models.CharField(max_length=255)),
                ('trim_mrd', models.CharField(max_length=255)),
                ('event_coordinator', models.CharField(max_length=255)),
                ('base_event', models.CharField(max_length=255)),
                ('spec_link', models.TextField()),
                ('mnemoic_link', models.TextField()),
                ('spec_cate_link', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Unit',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('unit_name', models.CharField(max_length=50, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='Custom_user',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username')),
                ('first_name', models.CharField(blank=True, max_length=150, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('knt', models.CharField(max_length=10)),
                ('name_jp', models.CharField(max_length=50)),
                ('position', models.CharField(max_length=20, null=True)),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
                'abstract': False,
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='Department_unit',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('department_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.department')),
                ('unit_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.unit')),
            ],
        ),
        migrations.CreateModel(
            name='Config',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Config_infor', models.JSONField()),
                ('ecu_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.ecu')),
                ('event_infor_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.event_infor')),
            ],
        ),
        migrations.CreateModel(
            name='Group_infor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(blank=True, max_length=50, null=True)),
                ('group_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.department_unit')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Manage_project',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('event_infor_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.event_infor')),
                ('group_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.group_infor')),
            ],
        ),
        migrations.CreateModel(
            name='Project_info',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('model_name', models.CharField(max_length=50)),
                ('fy_name', models.CharField(max_length=10)),
                ('plant_name', models.CharField(max_length=50)),
                ('des_name', models.CharField(max_length=255)),
                ('lot_name', models.CharField(max_length=50)),
            ],
            options={
                'constraints': [models.UniqueConstraint(fields=('model_name', 'fy_name', 'plant_name', 'des_name', 'lot_name'), name='p_i')],
            },
        ),
        migrations.CreateModel(
            name='Issue',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('can_name', models.CharField(max_length=100)),
                ('past_issue_error', models.CharField(max_length=255)),
                ('issue', models.CharField(max_length=255, null=True)),
                ('reason_mistake', models.TextField()),
                ('incorrect_value', models.CharField(max_length=255)),
                ('correct_value', models.CharField(max_length=255)),
                ('comment_des', models.TextField()),
                ('updated_date', models.CharField(max_length=255)),
                ('status', models.CharField(max_length=255)),
                ('condition_apply', models.TextField()),
                ('project_info_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.project_info')),
            ],
        ),
        migrations.AddField(
            model_name='event_infor',
            name='project_info_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_process.project_info'),
        ),
        migrations.AddConstraint(
            model_name='group_infor',
            constraint=models.UniqueConstraint(fields=('group_id', 'user_id'), name='g_i'),
        ),
        migrations.AddConstraint(
            model_name='manage_project',
            constraint=models.UniqueConstraint(fields=('event_infor_id', 'group_id'), name='m_p'),
        ),
        migrations.AddConstraint(
            model_name='issue',
            constraint=models.UniqueConstraint(fields=('project_info_id', 'issue'), name='i'),
        ),
        migrations.AddConstraint(
            model_name='event_infor',
            constraint=models.UniqueConstraint(fields=('project_info_id', 'event_name'), name='e_i'),
        ),
        migrations.AddConstraint(
            model_name='department_unit',
            constraint=models.UniqueConstraint(fields=('unit_id', 'department_id'), name='d_u'),
        ),
    ]
