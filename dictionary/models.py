# from django.db import models

# # Create your models here.
# from django.db import models

# # Create your models here.
# class Error_dim(models.Model):
#     Error_name=models.CharField(max_length=100)
#     # def __str__(self):
#     #     return self.Error_name

# class Specerror_dim(models.Model):
#     Spec_error=models.CharField(max_length=50)

# class Lot_dim(models.Model):
#     Lot_name=models.CharField(max_length=20)

# class Can_dim(models.Model):
#     Can_name=models.CharField(max_length=50)

# class Model_dim(models.Model):
#     Model_name=models.CharField(max_length=10)

# class Category_dim(models.Model):
#     Category_name=models.CharField(max_length=10)

# class Lot_Can_info(models.Model):
#     Lot_ID=models.ForeignKey(Lot_dim,on_delete=models.CASCADE)
#     Can_ID=models.ForeignKey(Can_dim,on_delete=models.CASCADE)

# class Spec_info(models.Model):
#     Spec_error_ID=models.ForeignKey(Specerror_dim,on_delete=models.CASCADE)
#     Spec_correct=models.CharField(max_length=50)
#     update_at=models.CharField(max_length=50)

# class Error_info(models.Model):
#     Error_case_ID=models.ForeignKey(Error_dim,on_delete=models.CASCADE)
#     Error_portfolio=models.TextField()
#     Error_reason=models.TextField()
#     Spec_ID=models.ForeignKey(Spec_info,on_delete=models.CASCADE)

# class Model_lc(models.Model):
#     Error_info_ID=models.ForeignKey(Error_info,on_delete=models.CASCADE)
#     Model_ID=models.ForeignKey(Model_dim,on_delete=models.CASCADE)
#     Lot_Can_ID=models.ForeignKey(Lot_Can_info,on_delete=models.CASCADE)

# class Cate_model(models.Model):
#     Category_ID=models.ForeignKey(Category_dim,on_delete=models.CASCADE)
#     Model_lc_ID=models.ForeignKey(Model_lc,on_delete=models.CASCADE)