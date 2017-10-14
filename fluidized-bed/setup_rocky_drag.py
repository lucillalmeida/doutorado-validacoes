from distutils.core import setup, Extension
from Cython.Distutils import build_ext

setup(
    cmdclass={"build_ext": build_ext},
    ext_modules=[Extension("rocky_drag", 
                           sources = ["rocky_drag_module.pyx", 
                                      "D:/aguirre/repositorio/ESSS/rocky20/source/c++/rocky20/fluent/udf/additional-models/rocky_drag.cpp"],
                           language = "c++")]
)
