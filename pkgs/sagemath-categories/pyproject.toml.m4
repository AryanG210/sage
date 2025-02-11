include(`sage_spkg_versions_toml.m4')dnl' -*- conf-toml -*-
[build-system]
# Minimum requirements for the build system to execute.
requires = [
    SPKG_INSTALL_REQUIRES_setuptools_wheel
    SPKG_INSTALL_REQUIRES_wheel
    SPKG_INSTALL_REQUIRES_sage_setup
    SPKG_INSTALL_REQUIRES_sagemath_environment
    SPKG_INSTALL_REQUIRES_sagemath_objects
    SPKG_INSTALL_REQUIRES_cython
    SPKG_INSTALL_REQUIRES_gmpy2
    SPKG_INSTALL_REQUIRES_cysignals
]
build-backend = "setuptools.build_meta"

[project]
name = "sagemath-categories"
description = "Sage: Open Source Mathematics Software: Sage categories and basic rings"
dependencies = [
    SPKG_INSTALL_REQUIRES_sagemath_objects
]
dynamic = ["version"]
include(`pyproject_toml_metadata.m4')dnl'

[project.optional-dependencies]
test = [
    SPKG_INSTALL_REQUIRES_sagemath_repl
]

[project.readme]
file = "README.rst"
content-type = "text/x-rst"

[tool.setuptools]
include-package-data = false

[tool.setuptools.dynamic]
version = {file = ["VERSION.txt"]}
