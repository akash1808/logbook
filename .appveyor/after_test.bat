IF DEFINED CYBUILD (
	%WITH_COMPILER% python setup.py bdist_wheel
	IF "%APPVEYOR_REPO_TAG%"=="true" (
		twine upload -u %PYPI_USERNAME% -p %PYPI_PASSWORD% dist\*.whl
	)
)