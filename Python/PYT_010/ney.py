import sys
import threading
from boofuzz import *

def main():
    # Create a session and specify the target
    session = Session(
        target=Target(
            connection=SocketConnection("localhost", 8080, proto='tcp')
        )
    )

    # Define the structure of the protocol
    s_initialize("request")
    s_string("GET", name="method")
    s_delim(" ", name="space1")
    s_string("/", name="path")
    s_delim(" ", name="space2")
    s_string("HTTP/1.1", name="protocol")
    s_static("\r\n\r\n", name="end")

    # Start the fuzzing process in a separate thread
    thread = threading.Thread(target=run_fuzzer, args=(session,))
    thread.start()

def run_fuzzer(session):
    session.connect(s_get("request"))
   
