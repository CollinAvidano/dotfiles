set history save on
set history size unlimited

set debuginfod enabled on
set output-radix 16
set mi-async 1
set pagination off
set non-stop on
python
import sys
#I SHOULD HAVE HAD IT TAKE PATH OF THIS SCRIPT SO IT doesnt RELY ON USER AHHH
sys.path.insert(0, '/home/collin/.gdb_printers')
from gdb_pretty_print.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
from eigen_pretty_print.printers import register_eigen_printers
register_eigen_printers (None)
end
#set print pretty on
