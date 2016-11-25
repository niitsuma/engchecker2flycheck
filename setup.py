from setuptools import setup
from setuptools import find_packages

setup(name='engchecker2flycheck',
      version='0.0.2',
      description='english grammar cheker interfece to emacs flycheck',
      author='Hirotaka Niitsuma',
      author_email='hirotaka.niitsuma@gmail.com',
      url='https://github.com/niitsuma/engchecker2flycheck',
      download_url='https://github.com/niitsuma/engchecker2flycheck/archive/master.zip',
      license='GNU Affero General Public License, version 3 - http://www.gnu.org/licenses/agpl-3.0.html',
      install_requires=[],#'urllib','xml','sys','json','requests','re','httplib','linkgrammar'],
      packages=find_packages(),
      test_suite = 'test',
      scripts = ['scripts/afterthedeadlinechkfile','scripts/linkgrammarengchkfile','scripts/textgearschkfile']
      )
