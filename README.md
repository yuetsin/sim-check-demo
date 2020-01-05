# sim-check-demo
simple duplication check script based on [SIM](https://dickgrune.com/Programs/similarity_tester/). [LICENSE](https://github.com/yuetsin/sim-check-demo/blob/master/SIM_LICENSE.txt)

|  Environment | Python 3.5 | Python 3.6 | Python 3.7 |
|  :-:  | :-: | :-: | :-: |
| vs2017-win2016 | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=Windows&configuration=Windows%20Python35)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=Windows&configuration=Windows%20Python36)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=Windows&configuration=Windows%20Python37)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) |
| ubuntu-16.04 | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=Linux&configuration=Linux%20Python35)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=Linux&configuration=Linux%20Python36)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=Linux&configuration=Linux%20Python37)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) |
| macOS-10.13 | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=macOS&configuration=macOS%20Python35)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=macOS&configuration=macOS%20Python36)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) | [![Build Status](https://dev.azure.com/msbiglawgood/sim-check/_apis/build/status/yuetsin.sim-check-demo?branchName=master&jobName=macOS&configuration=macOS%20Python37)](https://dev.azure.com/msbiglawgood/sim-check/_build/latest?definitionId=2&branchName=master) |

## usage

`./duplicate_check.py <language> <path_a> <path_b>`

* get prettier tables display by `pip install prettytable`

* supported languages
  * C
  * C++
  * Java
  * Lisp
  * Modula-2
  * Miranda
  * Pascal
  * General Text

* supported platform
  * Windows (`win32`)
  * macOS (`darwin`)
  * Linux (`linux`)

## example

![Image A](https://github.com/yuetsin/sim-check-demo/blob/master/img_a.png?raw=true)

![Image B](https://github.com/yuetsin/sim-check-demo/blob/master/img_b.png?raw=true)
