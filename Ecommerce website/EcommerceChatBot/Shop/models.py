from django.db import models
class Category(models.Model): #done
    CategoryID = models.AutoField(primary_key=True)
    ParentID = models.CharField(max_length=50)
    CategoryName = models.CharField(max_length=50)
    CategoryDescription = models.CharField(max_length=150)

class Sub_Category_Attributes(models.Model): #done
    AttributeID = models.AutoField(primary_key=True)
    SubCategoryID = models.ForeignKey(Category, on_delete=models.CASCADE)
    AttributeName = models.CharField(max_length=50)

class Supplier(models.Model): # done
    SupplierID = models.AutoField(primary_key=True)
    SupplierFirstName = models.CharField(max_length=50)
    SupplierLastName = models.CharField(max_length=50)
    SupplierAddress = models.CharField(max_length=150)
    SupplierPhone = models.IntegerField()
    SupplierCompanyName = models.CharField(max_length=50)

class Product(models.Model): # done
    ProductID = models.AutoField(primary_key=True)
    SupplierID = models.ForeignKey(Supplier, on_delete=models.CASCADE)
    ProductName = models.CharField(max_length=60)
    ProductDescription = models.CharField(max_length=150)
    ProductMinPrice = models.IntegerField()
    ProductMaxPrice = models.IntegerField()
    Product_image = models.ImageField(upload_to='images')

class Attributes_Data(models.Model): #done
    AttributeDataID = models.AutoField(primary_key=True)
    AttributeID = models.ForeignKey(Sub_Category_Attributes, on_delete=models.CASCADE)
    ProductID = models.ForeignKey(Product, on_delete=models.CASCADE)
    AttributeValue = models.CharField(max_length=150)

class Payment(models.Model): #done
    PaymentID = models.AutoField(primary_key=True)
    CartID = models.IntegerField()
    PaymentDate = models.DateField()
    AmountReceived = models.IntegerField()

class Customer(models.Model):  # done
    CustomerID = models.AutoField(primary_key=True)
    CustomerFirstName = models.CharField(max_length=50)
    CustomerLastName = models.CharField(max_length=50)
    CustomerEmailAddress = models.EmailField(max_length=50)
    CustomerPassword = models.CharField(max_length=18)
    CustomerAddress = models.CharField(max_length=50)
    CustomerPhone = models.IntegerField()
    CustomerCity = models.CharField(max_length=50)
    CustomerState = models.CharField(max_length=50)
    CustomerPostalCode = models.IntegerField()
    CustomerCountry = models.CharField(max_length=50)

class Order(models.Model): #done 
    OrderID = models.AutoField(primary_key=True)
    CustomerID = models.ForeignKey(Customer, on_delete=models.CASCADE)
    OrderDate = models.DateField()
    OrderStatus = models.CharField(max_length=50)
    OrderComment = models.CharField(max_length=150)

class Admin(models.Model): # done
    AdminID = models.AutoField(primary_key=True)
    AdminFirstName = models.CharField(max_length=50)
    AdminLastName = models.CharField(max_length=50)
    AdminPassword = models.CharField(max_length=16)
    AdminAddress = models.CharField(max_length=150)
    AdminPhone = models.IntegerField()


class Shopping_Cart(models.Model): #done
    ShoppingCartID = models.AutoField(primary_key=True)
    CustomerID = models.ForeignKey(Customer, on_delete=models.CASCADE)
    TotalPrice = models.IntegerField()


class Order_Details(models.Model): #done
    OrderDetailID = models.AutoField(primary_key=True)
    CartID = models.ForeignKey(Shopping_Cart, on_delete=models.CASCADE)
    OrderID = models.ForeignKey(Order, on_delete=models.CASCADE)
    ProductID = models.ForeignKey(Product, on_delete=models.CASCADE)
    OrderNum = models.IntegerField()
    Quantity = models.IntegerField()
    UnitPrice = models.IntegerField()
    Discount = models.IntegerField()
    DeliveryDate = models.DateField()

class Conversation(models.Model): # done
    ConversationID = models.AutoField(primary_key=True)
    CustomerID = models.ForeignKey(Customer, on_delete=models.CASCADE)
    Massage = models.CharField(max_length=100)
    IP = models.CharField(max_length=50)
    DateAndTime = models.DateField()

class Conversation_Reply(models.Model): # done
    ConversationReplyID = models.AutoField(primary_key=True)
    ConversationID = models.ForeignKey(Conversation, on_delete=models.CASCADE)
    ConversationReply = models.CharField(max_length=50)
    DateAndTime = models.DateField()

class Delivery_Boy(models.Model): # done
    DeliveryBoyID = models.AutoField(primary_key=True)
    DeliveryBoyFirstName = models.CharField(max_length=50)
    DeliveryBoyLastName = models.CharField(max_length=50)
    DeliveryBoyPassword = models.CharField(max_length=16)
    DeliveryBoyAddress = models.CharField(max_length=150)
    DeliveryBoyPhone = models.IntegerField()
    DeliveryBoyShift = models.CharField(max_length=50)
    DeliveryBoySalary = models.IntegerField()
