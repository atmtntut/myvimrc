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

    # remove old
    strCmd = (("cd %s; rm -rf %s_GITNOW %s_GITHEAD") % (dirpath, filename, filename))
    os.system(strCmd)

    # move current to XX_GITNOW
    strCmd = (("cd %s; rm -rf %s_GITNOW; mv -f %s %s_GITNOW") % (dirpath, filename, filename, filename))
    os.system(strCmd)

    # checkout and mv to XX_GITHEAD
    strCmd = (("cd %s; git checkout %s; mv -f %s %s_GITHEAD") % (dirpath, filename, filename, filename))
    os.system(strCmd)

    # move XX_GITNOW to XX
    strCmd = (("cd %s; mv -f %s_GITNOW %s") % (dirpath, filename, filename))
    os.system(strCmd)
if __name__ == '__main__':
    main()
