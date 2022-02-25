from faker import Faker
fake = Faker()

def factory_user():
    return {
        'email':fake.free_email(),
        'password': 'Treinamento1@#!'
    }