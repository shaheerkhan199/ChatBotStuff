# from django.db import models
# class Category(models.Model):
#     CategoryID = models.AutoField(primary_key=True)
#     ParentID = models.CharField(max_length=60)
#     CategoryName = models.CharField(max_length=50)
#     CategoryDescription = models.CharField(max_length=50)

# class Sub_Category_Attributes(models.Model):
#     SubCategoryID = models.AutoField(primary_key=True)
#     AttributeID = models.CharField(max_length=50)
#     AttributeName = models.CharField(max_length=50)


# class Attributes_Data(models.Model):
#     AttributeDataID = models.AutoField(Primary_key=True)
#     AttributeID = models.CharField(max_length=50)
#     ProductID = models.ForeignKey(Sub_Category_Attributes, on_delete=models.CASCADE)
#     AttributeValue = models.IntegerField()

# class Product(models.Model):
#     ProductID = models.AutoField(Primary_key=True)
#     ProductName = models.CharField(max_length=60)
#     ProductDescription = models.CharField(max_length=50)
#     ProductPrice = models.IntegerField()
#     Product_image = models.ImageField(upload_to='images')

# class Supplier(models.Model):
#     SupplierID = models.AutoField(primary_key=True)
#     SupplierFirstName = models.CharField(max_length=50)
#     SupplierLastName = models.CharField(max_length=50)
#     SupplierAddress = models.CharField(max_length=50)
#     SupplierPhone = models.IntegerField()
#     SupplierCompanyName = models.CharField(max_length=50)

# class Payment(models.Model):
#     PaymentID = models.AutoField(primary_key=True)
#     CartID = models.IntegerField()
#     PaymentDate = models.DateField()
#     AmountReceived = models.IntegerField()

# class Customer(models.Model):
#     CustomerID = models.AutoField(primary_key=True)
#     CustomerFirstName = models.CharField(max_length=50)
#     CustomerLastName = models.CharField(max_length=50)
#     CustomerEmailAddress = models.EmailField(max_length=50)
#     CustomerPhone = models.IntegerField()
#     CustomerCity = models.CharField(max_length=50)
#     CustomerPassword = models.IntegerField()
#     CustomerState = models.CharField(max_length=50)
#     CustomerPostalCode = models.IntegerField()
#     CustomerCountry = models.CharField(max_length=50)

# class Conversation(models.Model):
#     ConversationID = models.AutoField(primary_key=True)
#     CustomerID = models.ForeignKey(Customer, on_delete=models.CASCADE)
#     Massage = models.CharField(max_length=60)
#     IP = models.IntegerField()
#     DateAndTime = models.DateField()

# class Order(models.Model):
#     OrderID = models.AutoField(primary_key=True)
#     CustomerID = models.ForeignKey(Customer, on_delete=models.CASCADE)
#     OrderDate = models.DateField()
#     OrderStatus = models.CharField(max_length=50)
#     OrderComment = models.CharField(max_length=50)

# class Admin(models.Model):
#     AdminID = models.AutoField(primary_key=True)
#     AdminFirstName = models.CharField(max_length=50)
#     AdminLastName = models.CharField(max_length=50)
#     AdminPassword = models.IntegerField()
#     AdminAddress = models.CharField(max_length=50)
#     AdminPhone = models.IntegerField()
    
# class Order_Details(models.Model):
#     OrderDetailID = models.AutoField(primary_key=True)
#     CartID = models.IntegerField()
#     OrderID = models.ForeignKey(Order, on_delete=models.CASCADE)
#     ProductID = models.ForeignKey(Product, on_delete=models.CASCADE)
#     OrderName = models.CharField(max_length=50)
#     Quantity = models.IntegerField()
#     UnitPrice = models.IntegerField()
#     Discount = models.IntegerField()
#     DeliveryDate = models.DateField()

# class Conversation_Reply(models.Model):
#     ConversationReplyID = models.AutoField(primary_key=True)
#     ConversationID = models.ForeignKey(Conversation, on_delete=models.CASCADE)
#     ConversationRaply = models.CharField(max_length=50)
#     DateAndTime = models.DateField()

# class Shopping_Cart(models.Model):
#     ShoppingCartID = models.AutoField(primary_key=True)
#     CustomerID = models.ForeignKey(Customer, on_delete=models.CASCADE)
#     TotalPrice = models.IntegerField()

# class Delivery_Boy(models.Model):
#     DeliveryBoyID = models.AutoField(primary_key=True)
#     DeliveryBoyFirstName = models.CharField(max_length=50)
#     DeliveryBoyLastName = models.CharField(max_length=50)
#     DeliveryBoyPassword = models.IntegerField()
#     DeliveryBoyAddress = models.CharField(max_length=50)
#     DeliveryBoyPhone = models.IntegerField()
#     DeliveryBoyShift = models.CharField(max_length=50)
#     DeliveryBoySalary = models.IntegerField()
