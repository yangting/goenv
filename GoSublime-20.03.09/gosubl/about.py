import re
import sublime

TAG = '20.03.09-1'
ANN = 'a'+TAG
VERSION = 'r'+TAG
VERSION_PAT = re.compile(r'\d{2}[.]\d{2}[.]\d{2}-\d+', re.IGNORECASE)
DEFAULT_GO_VERSION = 'go?'
GO_VERSION_OUTPUT_PAT = re.compile(r'go\s+version\s+(\S+(?:\s+[+]\w+|\s+\([^)]+)?)', re.IGNORECASE)
GO_VERSION_NORM_PAT = re.compile(r'[^\w.+-]+', re.IGNORECASE)
PLATFORM = '%s-%s' % (sublime.platform(), sublime.arch())
MARGO_EXE_PREFIX = 'gosublime.margo_'
MARGO_EXE_SUFFIX = '.exe'
MARGO_EXE = MARGO_EXE_PREFIX+VERSION+'_'+DEFAULT_GO_VERSION+MARGO_EXE_SUFFIX
MARGO_EXE_PAT = re.compile(r'^gosublime\.margo.*\.exe$', re.IGNORECASE)
