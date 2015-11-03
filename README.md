## specifications: 

*    1.1.6. Users can view contact information for the administrators on the
contact page.

*    1.1.6.1 Users can directly submit comments to the administrators by way of a
contact form on the contact page.

*    ~~1.2.4 Administrators receive notifications per e-mail when a comment is
left by a user.~~

## Use Case

1. User navigates to the Contacts Page
   * Write a test to link BIO/CV, LOGBOOK, CONTACT, WORKS, PROJECT
2. User fills in contact form and clicks on submit
   * Create a form in CONTACT view 
	   * [ :email, :name, :content, :date ] 
3. Message is stored in db
   * rails generate model  
4. The application sends a notification to administrators via e-mail.
   * Action Mailer lib 
	 * rails generate mailer
