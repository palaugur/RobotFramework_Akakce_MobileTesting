from faker import Faker

fake = Faker()


def generate_name():
    name = fake.first_name()
    return name


def generate_surname():
    surname = fake.last_name()
    return surname


def generate_email():
    email = fake.email()
    return email


def generate_password():
    password = fake.password()
    return password
