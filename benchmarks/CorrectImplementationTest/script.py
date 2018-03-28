import sys
from pathlib import Path


def begin_parsing(old_hprof_file_path, new_hprof_file_path):
    old_hprof  = open(old_hprof_file_path, 'r')
    new_hprof = open(new_hprof_file_path, 'r')


    return 1


if __name__ == '__main__':
    # Check parameters. 2 file paths should be passed. first parameter will be normal hprof, second the new hprof

    if len(sys.argv) == 3:
        # Check if files exists
        old_hprof = Path(sys.argv[1])
        new_hprof = Path(sys.argv[2])

        if not (old_hprof.is_file() and new_hprof.is_file()):
            print("File paths are incorrect")

        begin_parsing(old_hprof, new_hprof)
    else:
        print("Two file paths need to be passed.")
