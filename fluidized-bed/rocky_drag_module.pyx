# -*- coding: utf-8 -*-
"""
Created on Fri May 29 14:27:36 2015

@author: aguirre
"""

import sys
from libcpp cimport bool

cdef extern from "D:/aguirre/repositorio/ESSS/rocky20/source/c++/rocky20/fluent/udf/additional-models/rocky_drag.hpp":
    double SchillerNaumann1933(double, bool)
    double Dallavalle1948(double)
    double HaiderLevenspiel1989(double, double)
    double Ganser1993(double, double, double, double, double)
    double WenYu1966(double, double)
    double Ergun1958(double, double, double)
    double GuidaspowBezburuahDing1992(double, double, double)
    double HuilinGuidaspow2003(double, double, double)
    double DiFelice1994(double, double)

def SchillerNaumann1933_cpp(Re, modified = True):
    return SchillerNaumann1933(Re, modified)

def Dallavalle1948_cpp(Re):
    return Dallavalle1948(Re)
    
def HaiderLevenspiel1989_cpp(Re, phi = 1.0):
    return HaiderLevenspiel1989(Re, phi)

def Ganser1993_cpp(Re, phi = 1.0, d_v = 1.0, d_n = 1.0, D = sys.float_info.max):
    return Ganser1993(Re, phi, d_v, d_n, D)

def WenYu1966_cpp(Re, alpha_f = 1.0):
    return WenYu1966(Re, alpha_f)

def Ergun1958_cpp(Re, alpha_f, phi = 1.0):
    return Ergun1958(Re, alpha_f, phi)

def GuidaspowBezburuahDing1992_cpp(Re, alpha_f, phi = 1.0):
    return GuidaspowBezburuahDing1992(Re, alpha_f, phi)

def HuilinGuidaspow2003_cpp(Re, alpha_f, phi = 1.0):
    return HuilinGuidaspow2003(Re, alpha_f, phi)
 
def DiFelice1994_cpp(Re, alpha_f = 1.0):
    return DiFelice1994(Re, alpha_f)
  