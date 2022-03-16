require_relative './interactive_init'

to = "jane@example.com"
from = "john@example.com"
subject = "Hello"
body = "Hello, World!"

Controls::Send.(to: to, from: from, subject: subject, body: body)
