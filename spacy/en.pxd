from libcpp.vector cimport vector

from spacy.spacy cimport StringHash
from spacy.lexeme cimport Lexeme
from spacy.lexeme cimport Lexeme_addr

from spacy.spacy cimport Language
from spacy.tokens cimport Tokens


cdef class English(spacy.Language):
    cdef int find_split(self, unicode word, size_t length)

cdef English EN

cpdef Lexeme_addr lookup(unicode word) except 0
cpdef Tokens tokenize(unicode string)
cpdef unicode unhash(StringHash hash_value)