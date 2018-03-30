import sys
from pathlib import Path


def compare_trace_and_node(line, file):
    hprof_text_seek = open(str(file), 'r')
    object_variables = line.split()
    trace = -1
    thread = -1
    node = -1

    trace_string = ""
    node_string = ""

    # Get the trace, thread and node
    for word in object_variables:
        if "trace=" in word:
            trace = int(word[6:][:-1])
        elif "thread=" in word:
            thread = int(word[7:][:-1])
        elif "node=" in word:
            node = int(word[5:][:-1])

    assert trace != -1
    assert thread != -1
    assert node != -1

    # Get the text of the trace and nodes
    for line in hprof_text_seek:
        if ("Thread %d Node %d (" % (thread, node)) in line:
            node_string = line
        elif ("TRACE %d:" % trace) in line:
            trace_string = hprof_text_seek.__next__()

        # If both found, end searching
        if node_string != "" and trace_string != "":
            break

    assert trace_string != ""
    assert node_string != ""

    print("Comparing %s with %s" % (trace_string, node_string))


def begin_parsing(hprof_file_path):
    hprof_text = open(str(hprof_file_path), 'r')
    heap_dump_begin = False

    for line in hprof_text:
        # Check if we are checking the heap dump objects
        if "HEAP DUMP BEGIN" in line:
            heap_dump_begin = True
            continue
        elif "HEAP DUMP END" in line:
            break

        # Only compare items that have both traces and nodes.
        if heap_dump_begin:
            if "ROOT" in line:
                # No changes were done in Root
                continue
            elif "OBJ" in line or \
                    "ARR" in line or \
                    "CLS" in line:
                if "trace=" in line and "node=" in line:
                    compare_trace_and_node(line, hprof_file_path)
            else:
                # Objects may include addition information which can be skipped.
                # Example Constant pool are skipped:
                # CLS 50000169 (name=java.lang.Object, trace=300000, thread=0, node=0)
                #	constant pool entry 80	500000ef
                #	constant pool entry 17	50000169
                continue


if __name__ == '__main__':
    # Check parameters. File path should be passed.

    if len(sys.argv) == 2:
        # Check if files exists
        hprof_file = Path(sys.argv[1])

        if not hprof_file.is_file():
            print("File paths are incorrect")

        begin_parsing(hprof_file)
    else:
        print("File paths should be passed.")
