#!/usr/bin/python
#coding:utf8
import os, sys
def cmd(strCmd):
    """ same as os.system(), but print it firstly. """
    #print strCmd
    os.system(strCmd)
def main():
    filepath = ""
    if len(sys.argv) == 2:
        filepath = sys.argv[1]
    else:
        return
    #print(filepath)
    (dirpath, filename) = os.path.split(filepath)
    if dirpath == None or len(dirpath) == 0: dirpath = "./"
    #print(dirpath)
    #print(filename)

    SVNHEAD_path = "%s/%s_SVNHEAD" % (dirpath, filename)
    if os.path.isfile(SVNHEAD_path): os.remove(SVNHEAD_path)

    # export head version to XXX_SVNHEAD
    # svn export README.txt README.txt_SVNHEAD
    strCmd = (("cd %s; svn export -r HEAD %s %s_SVNHEAD") % (dirpath, filename, filename))
    os.system(strCmd)
if __name__ == '__main__':
    main()
