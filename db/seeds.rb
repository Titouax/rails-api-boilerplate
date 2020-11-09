Post.delete_all
Post.reset_pk_sequence

Category.delete_all
Category.reset_pk_sequence

User.delete_all
User.reset_pk_sequence

admin = User.create(
    username: 'admin', 
    email: 'admin@test.fr',
    password: '12345678', 
    role: 'admin'
)

10.times do 
    cat = Category.create(name: Faker::Educator.subject)
    if cat.persisted? 
        puts "============= Catégorie #{cat.name} has been create" 
    else 
        puts cat.errors.messages
    end
end

10.times do 
    user = User.create(
        username: Faker::Name.first_name, 
        email: Faker::Internet.email,
        password: '12345678'
    ) 
    if user.persisted? 
        puts "============= User #{user.username} with #{user.email} has been create" 
    else 
        puts user.errors.messages
    end
    
    rand(1..5).times do 
        post = Post.create(
            title: Faker::Educator.course_name,
            content: Faker::Lorem.paragraphs(number: 1),
            user_id: user.id, 
            category_id: Category.take.id
        )
        if post.persisted? 
            puts "============= Post #{post.title} has been create"
        else  
            puts post.errors.messages
        end
    end
end