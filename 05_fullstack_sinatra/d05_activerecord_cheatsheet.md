## 5.5 ActiveRecord Relationships
* ActiveRecord establishes relationships between tables in the model files
* Basic ActiveRecord relationships:
  1. belongs_to - one to one relationship
  2. has_many - one to many relationship
  3. has_many through: - one to many relationship through a join table

![belongs_to](http://edgeguides.rubyonrails.org/images/belongs_to.png)

![has_many](http://edgeguides.rubyonrails.org/images/has_many.png)

![has_many_through](http://edgeguides.rubyonrails.org/images/has_many_through.png)

## More complex relationships
When you want to be more explicit in naming properties you would have to use some of the following ActiveRecord declarations:
  1. class_name: - when you use a different name for a model you need to tell ActiveRecord what model to use
  2. foreign_key: - when you use a different name for a model id in your table you need to tell ActiveRecord what value in your table to use instead
  3. source: - when you go through a table and use a different name for a model id you need to tell ActiveRecord what value in the table to use instead

##Documentation
ActiveRecord Documentation is very easy to read and understand! If you have any questions about ActiveRecord look at the documentation. If you need any help let me know! ~Adriana

Documentation: http://edgeguides.rubyonrails.org/association_basics.html
