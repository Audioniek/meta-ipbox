#CXXFLAGS_append_sh4 += " -std=c++11 -fPIC -fno-strict-aliasing "

FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI_append += "\
	${@bb.utils.contains("MACHINE", "ipbox55|ipbox99|ipbox9900hd", "file://enigma2-ipbox-all.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ipbox55", "file://enigma2-ipbox-ipbox55.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ipbox99", "file://enigma2-ipbox-ipbox99.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "ipbox9900", "file://enigma2-ipbox-ipbox9900.patch", "", d)} \
	"

SRCREV_FORMAT = "enigma2"

