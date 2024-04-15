
from recursive_diff import recursive_diff
import json
import argparse
import shlex
import subprocess
from subprocess import Popen, PIPE

parser = argparse.ArgumentParser(description='')
parser.add_argument('derivation_1', help='', default='.#')
parser.add_argument('derivation_2', help='', default='.#')
parser.add_argument('common_path', help='', default=None)
args = parser.parse_args()

def get_config(config: str, common_path: str = None):
    config = config.strip()
    if common_path is not None and len(common_path) > 0:
        common_path = common_path.strip()
        config += ('.' if common_path[0] != '.' else "") + common_path
    try:
        res = subprocess.check_output(['nix', 'eval', '--json', config], stderr=PIPE, encoding="utf-8")
    except subprocess.CalledProcessError as e:
        print(e)
        print(f"called process stdout: {e.stdout}")
        print(f"called process stderror: {e.stderr}")
        raise e

    return json.loads(res)

lhs = get_config(args.derivation_1, args.common_path)
rhs = get_config(args.derivation_2, args.common_path)

for diff in recursive_diff(lhs, rhs, abs_tol=.1):
    print(diff)