#!/usr/bin/python3
"""using REST API, for a given employee ID"""

import requests
import sys


if __name__ == "__main__":

    url = 'https://jsonplaceholder.typicode.com/'
    user = requests.get(url + 'users/{}'.format(sys.argv[1])).json()
    todos = requests.get(url + 'todos', params={'userId': sys.argv[1]}).json()

    name = (user.get('name'))

    total_task = len(todos)

    lists = []
    for todo in todos:
        if todo.get('completed'):
            lists.append(todo.get("title"))
    done_task = len(lists)
    string = "Employee {} is done with tasks({}/{}):"
    print(string.format(name, done_task, total_task))
    print("\n".join("\t {}".format(i) for i in lists))
