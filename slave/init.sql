-- Create the tables
CREATE TABLE author (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_id INT,
    category_id INT,
    content TEXT NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES author(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE SET NULL
);

-- Insert realistic data into 'author'
INSERT INTO author (firstname, lastname, email, password) 
VALUES 
    ('John', 'Doe', 'john.doe@example.com', 'password1'),
    ('Jane', 'Smith', 'jane.smith@example.com', 'password2'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', 'password3'),
    ('Bob', 'Brown', 'bob.brown@example.com', 'password4'),
    ('Charlie', 'Williams', 'charlie.williams@example.com', 'password5'),
    ('David', 'Jones', 'david.jones@example.com', 'password6'),
    ('Emily', 'Taylor', 'emily.taylor@example.com', 'password7'),
    ('Fay', 'Anderson', 'fay.anderson@example.com', 'password8'),
    ('George', 'Martinez', 'george.martinez@example.com', 'password9'),
    ('Hannah', 'Davis', 'hannah.davis@example.com', 'password10');

-- Insert categories with more diversity
INSERT INTO category (name)
VALUES 
    ('Technology'),
    ('Science'),
    ('Health'),
    ('Education'),
    ('Entertainment'),
    ('Lifestyle'),
    ('Business'),
    ('Sports'),
    ('Travel'),
    ('Food');

-- Insert realistic data into 'article' with more diverse titles and content (One-by-one)
INSERT INTO article (title, author_id, category_id, content)
VALUES 
    ('The Future of Technology in Education', 1, 4, 'In this article, we explore how technology is revolutionizing education. From online learning platforms to AI-assisted tutoring, technology is enhancing accessibility, engagement, and personalized learning.'),
    ('The Science Behind Climate Change', 2, 2, 'Climate change is one of the most pressing issues of our time. This article delves into the scientific evidence, the causes of global warming, and the potential consequences for our planet.'),
    ('The Importance of Mental Health in the Workplace', 3, 6, 'Mental health has become a crucial aspect of workplace well-being. In this article, we examine the importance of creating supportive environments, addressing mental health issues, and promoting overall employee wellness.'),
    ('How AI is Transforming Healthcare', 4, 3, 'AI is making significant strides in the healthcare industry. From diagnosing diseases to personalizing treatment plans, AI has the potential to improve patient outcomes and reduce costs.'),
    ('The Rise of Renewable Energy in Business', 5, 7, 'As businesses strive to reduce their environmental impact, renewable energy has become a key factor in sustainability. This article discusses the adoption of solar, wind, and other green energy sources in business operations.'),
    ('Exploring the World of Virtual Reality Gaming', 6, 8, 'Virtual Reality (VR) has taken the gaming world by storm. This article provides an overview of VR technology and how it’s changing the way we experience video games, from immersive environments to interactive gameplay.'),
    ('How Travel Influences Personal Growth', 7, 9, 'Travel is often seen as a means of relaxation, but it also plays a significant role in personal growth. In this article, we examine how travel broadens perspectives, builds resilience, and fosters self-discovery.'),
    ('The Impact of Social Media on Food Trends', 8, 10, 'Social media platforms have a massive influence on food trends. From viral recipes to food challenges, this article explores how influencers and platforms like Instagram and TikTok shape the food industry.'),
    ('The Evolution of E-Commerce in the Last Decade', 9, 7, 'The world of e-commerce has evolved significantly over the past decade. In this article, we explore the key changes, the role of mobile shopping, and the future of online retail.'),
    ('The Impact of Digital Marketing on Small Businesses', 10, 7, 'Digital marketing has leveled the playing field for small businesses. In this article, we dive into how small businesses are leveraging social media, SEO, and online advertising to compete with larger brands.');

