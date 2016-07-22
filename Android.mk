# This project need C++ STL support, so add APP_STL variable in your Application.mk.
# Check https://developer.android.com/ndk/guides/cpp-support.html for more information.

LOCAL_PATH := $(call my-dir)

JBINDING_CPP_FILES := \
		jbinding-cpp/Debug.cpp \
		jbinding-cpp/JNITools.cpp \
		jbinding-cpp/JavaStaticInfo.cpp \
		jbinding-cpp/SevenZipJBinding.cpp \
		jbinding-cpp/UniversalArchiveOpenCallback.cpp \
		jbinding-cpp/UserTrace.cpp \
		jbinding-cpp/CodecTools.cpp \
		jbinding-cpp/JBindingTools.cpp \
		jbinding-cpp/JavaToCPP/JavaToCPPSevenZip.cpp \
		jbinding-cpp/JavaToCPP/JavaToCPPInArchiveImpl.cpp \
		jbinding-cpp/JavaToCPP/JavaToCPPOutArchiveImpl.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaArchiveExtractCallback.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaArchiveOpenCallback.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaArchiveOpenVolumeCallback.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaCryptoGetTextPassword.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaInStream.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaOutStream.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaProgress.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaSequentialInStream.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaSequentialOutStream.cpp \
		jbinding-cpp/CPPToJava/CPPToJavaArchiveUpdateCallback.cpp \

JBINDING_TEST_CPP_FILES := \
		test/CTests/JniToolsTest.cpp \
		test/CTests/JBindingTest.cpp \
		test/CTests/EnumTest.cpp \

SEVEN_ZIP_SOURCE_FILES := \
		p7zip/CPP/Common/CommandLineParser.cpp \
		p7zip/CPP/Common/CRC.cpp \
		p7zip/CPP/Common/IntToString.cpp \
		p7zip/CPP/Common/ListFileUtils.cpp \
		p7zip/CPP/Common/MyString.cpp \
		p7zip/CPP/Common/MyWindows.cpp \
		p7zip/CPP/Common/StringConvert.cpp \
		p7zip/CPP/Common/StringToInt.cpp \
		p7zip/CPP/Common/UTFConvert.cpp \
		p7zip/CPP/Common/MyVector.cpp \
		p7zip/CPP/Common/MyMap.cpp \
		p7zip/CPP/Common/MyXml.cpp \
		p7zip/CPP/Common/Wildcard.cpp \
		p7zip/CPP/Windows/FileDir.cpp \
		p7zip/CPP/Windows/FileFind.cpp \
		p7zip/CPP/Windows/FileIO.cpp \
		p7zip/CPP/Windows/FileName.cpp \
		p7zip/CPP/Windows/PropVariant.cpp \
		p7zip/CPP/Windows/PropVariantConv.cpp \
		p7zip/CPP/Windows/PropVariantUtils.cpp \
		p7zip/CPP/Windows/Synchronization.cpp \
		p7zip/CPP/Windows/System.cpp \
		p7zip/CPP/Windows/TimeUtils.cpp \
		p7zip/CPP/7zip/Common/CreateCoder.cpp \
		p7zip/CPP/7zip/Common/CWrappers.cpp \
		p7zip/CPP/7zip/Common/FilePathAutoRename.cpp \
		p7zip/CPP/7zip/Common/FileStreams.cpp \
		p7zip/CPP/7zip/Common/FilterCoder.cpp \
		p7zip/CPP/7zip/Common/InBuffer.cpp \
		p7zip/CPP/7zip/Common/InOutTempBuffer.cpp \
		p7zip/CPP/7zip/Common/LimitedStreams.cpp \
		p7zip/CPP/7zip/Common/MemBlocks.cpp \
		p7zip/CPP/7zip/Common/MethodId.cpp \
		p7zip/CPP/7zip/Common/MethodProps.cpp \
		p7zip/CPP/7zip/Common/OffsetStream.cpp \
		p7zip/CPP/7zip/Common/OutBuffer.cpp \
		p7zip/CPP/7zip/Common/OutMemStream.cpp \
		p7zip/CPP/7zip/Common/ProgressMt.cpp \
		p7zip/CPP/7zip/Common/ProgressUtils.cpp \
		p7zip/CPP/7zip/Common/PropId.cpp \
		p7zip/CPP/7zip/Common/StreamBinder.cpp \
		p7zip/CPP/7zip/Common/StreamObjects.cpp \
		p7zip/CPP/7zip/Common/StreamUtils.cpp \
		p7zip/CPP/7zip/Common/UniqBlocks.cpp \
		p7zip/CPP/7zip/Common/VirtThread.cpp \
		p7zip/CPP/7zip/UI/Common/LoadCodecs.cpp \
		p7zip/CPP/7zip/UI/Common/PropIDUtils.cpp \
		p7zip/CPP/7zip/UI/Console/ConsoleClose.cpp \
		p7zip/CPP/7zip/Archive/ZHandler.cpp \
		p7zip/CPP/7zip/Archive/Bz2Handler.cpp \
		p7zip/CPP/7zip/Archive/DeflateProps.cpp \
		p7zip/CPP/7zip/Archive/GzHandler.cpp \
		p7zip/CPP/7zip/Archive/FatHandler.cpp \
		p7zip/CPP/7zip/Archive/HandlerCont.cpp \
		p7zip/CPP/7zip/Archive/LzmaHandler.cpp \
		p7zip/CPP/7zip/Archive/NtfsHandler.cpp \
		p7zip/CPP/7zip/Archive/PpmdHandler.cpp \
		p7zip/CPP/7zip/Archive/SplitHandler.cpp \
		p7zip/CPP/7zip/Archive/XzHandler.cpp \
		p7zip/CPP/7zip/Archive/Common/CoderMixer2.cpp \
		p7zip/CPP/7zip/Archive/Common/CrossThreadProgress.cpp \
		p7zip/CPP/7zip/Archive/Common/DummyOutStream.cpp \
		p7zip/CPP/7zip/Archive/Common/FindSignature.cpp \
		p7zip/CPP/7zip/Archive/Common/HandlerOut.cpp \
		p7zip/CPP/7zip/Archive/Common/InStreamWithCRC.cpp \
		p7zip/CPP/7zip/Archive/Common/ItemNameUtils.cpp \
		p7zip/CPP/7zip/Archive/Common/MultiStream.cpp \
		p7zip/CPP/7zip/Archive/Common/OutStreamWithCRC.cpp \
		p7zip/CPP/7zip/Archive/Common/OutStreamWithSha1.cpp \
		p7zip/CPP/7zip/Archive/Common/ParseProperties.cpp \
		p7zip/CPP/7zip/Archive/7z/7zCompressionMode.cpp \
		p7zip/CPP/7zip/Archive/7z/7zDecode.cpp \
		p7zip/CPP/7zip/Archive/7z/7zEncode.cpp \
		p7zip/CPP/7zip/Archive/7z/7zExtract.cpp \
		p7zip/CPP/7zip/Archive/7z/7zFolderInStream.cpp \
		p7zip/CPP/7zip/Archive/7z/7zFolderOutStream.cpp \
		p7zip/CPP/7zip/Archive/7z/7zHandler.cpp \
		p7zip/CPP/7zip/Archive/7z/7zHandlerOut.cpp \
		p7zip/CPP/7zip/Archive/7z/7zHeader.cpp \
		p7zip/CPP/7zip/Archive/7z/7zIn.cpp \
		p7zip/CPP/7zip/Archive/7z/7zOut.cpp \
		p7zip/CPP/7zip/Archive/7z/7zProperties.cpp \
		p7zip/CPP/7zip/Archive/7z/7zSpecStream.cpp \
		p7zip/CPP/7zip/Archive/7z/7zUpdate.cpp \
		p7zip/CPP/7zip/Archive/7z/7zRegister.cpp \
		p7zip/CPP/7zip/Archive/Cab/CabBlockInStream.cpp \
		p7zip/CPP/7zip/Archive/Cab/CabHandler.cpp \
		p7zip/CPP/7zip/Archive/Cab/CabHeader.cpp \
		p7zip/CPP/7zip/Archive/Cab/CabIn.cpp \
		p7zip/CPP/7zip/Archive/Cab/CabRegister.cpp \
		p7zip/CPP/7zip/Archive/LzhHandler.cpp \
		p7zip/CPP/7zip/Compress/LzhDecoder.cpp \
		p7zip/CPP/7zip/Compress/LzmsDecoder.cpp \
		p7zip/CPP/7zip/Archive/Chm/ChmHandler.cpp \
		p7zip/CPP/7zip/Archive/Chm/ChmIn.cpp \
		p7zip/CPP/7zip/Archive/Udf/UdfHandler.cpp \
		p7zip/CPP/7zip/Archive/Udf/UdfIn.cpp \
		p7zip/CPP/7zip/Archive/Wim/WimHandler.cpp \
		p7zip/CPP/7zip/Archive/Wim/WimHandlerOut.cpp \
		p7zip/CPP/7zip/Archive/Wim/WimIn.cpp \
		p7zip/CPP/7zip/Archive/Wim/WimRegister.cpp \
		p7zip/CPP/7zip/Archive/ArHandler.cpp \
		p7zip/CPP/7zip/Archive/RpmHandler.cpp \
		p7zip/CPP/7zip/Archive/XarHandler.cpp \
		p7zip/CPP/7zip/Archive/ArjHandler.cpp \
		p7zip/CPP/7zip/Archive/CpioHandler.cpp \
		p7zip/CPP/7zip/Archive/Iso/IsoHandler.cpp \
		p7zip/CPP/7zip/Archive/Iso/IsoHeader.cpp \
		p7zip/CPP/7zip/Archive/Iso/IsoIn.cpp \
		p7zip/CPP/7zip/Archive/Iso/IsoRegister.cpp \
		p7zip/CPP/7zip/Archive/Nsis/NsisDecode.cpp \
		p7zip/CPP/7zip/Archive/Nsis/NsisHandler.cpp \
		p7zip/CPP/7zip/Archive/Nsis/NsisIn.cpp \
		p7zip/CPP/7zip/Archive/Nsis/NsisRegister.cpp \
		p7zip/CPP/7zip/Archive/Rar/RarHandler.cpp \
		p7zip/CPP/7zip/Archive/Rar/Rar5Handler.cpp \
		p7zip/CPP/7zip/Archive/Tar/TarHandler.cpp \
		p7zip/CPP/7zip/Archive/Tar/TarHandlerOut.cpp \
		p7zip/CPP/7zip/Archive/Tar/TarHeader.cpp \
		p7zip/CPP/7zip/Archive/Tar/TarIn.cpp \
		p7zip/CPP/7zip/Archive/Tar/TarOut.cpp \
		p7zip/CPP/7zip/Archive/Tar/TarRegister.cpp \
		p7zip/CPP/7zip/Archive/Tar/TarUpdate.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipAddCommon.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipHandler.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipHandlerOut.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipIn.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipItem.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipOut.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipUpdate.cpp \
		p7zip/CPP/7zip/Archive/Zip/ZipRegister.cpp \
		p7zip/CPP/7zip/Compress/Bcj2Coder.cpp \
		p7zip/CPP/7zip/Compress/Bcj2Register.cpp \
		p7zip/CPP/7zip/Compress/BcjCoder.cpp \
		p7zip/CPP/7zip/Compress/BcjRegister.cpp \
		p7zip/CPP/7zip/Compress/BitlDecoder.cpp \
		p7zip/CPP/7zip/Compress/BranchMisc.cpp \
		p7zip/CPP/7zip/Compress/BranchRegister.cpp \
		p7zip/CPP/7zip/Compress/ByteSwap.cpp \
		p7zip/CPP/7zip/Compress/BZip2Crc.cpp \
		p7zip/CPP/7zip/Compress/BZip2Decoder.cpp \
		p7zip/CPP/7zip/Compress/BZip2Encoder.cpp \
		p7zip/CPP/7zip/Compress/BZip2Register.cpp \
		p7zip/CPP/7zip/Compress/CopyCoder.cpp \
		p7zip/CPP/7zip/Compress/CopyRegister.cpp \
		p7zip/CPP/7zip/Compress/Deflate64Register.cpp \
		p7zip/CPP/7zip/Compress/DeflateDecoder.cpp \
		p7zip/CPP/7zip/Compress/DeflateEncoder.cpp \
		p7zip/CPP/7zip/Compress/DeflateRegister.cpp \
		p7zip/CPP/7zip/Compress/DeltaFilter.cpp \
		p7zip/CPP/7zip/Compress/Lzma2Decoder.cpp \
		p7zip/CPP/7zip/Compress/Lzma2Encoder.cpp \
		p7zip/CPP/7zip/Compress/Lzma2Register.cpp \
		p7zip/CPP/7zip/Compress/ImplodeDecoder.cpp \
		p7zip/CPP/7zip/Compress/ImplodeHuffmanDecoder.cpp \
		p7zip/CPP/7zip/Compress/LzmaDecoder.cpp \
		p7zip/CPP/7zip/Compress/LzmaEncoder.cpp \
		p7zip/CPP/7zip/Compress/LzmaRegister.cpp \
		p7zip/CPP/7zip/Compress/LzOutWindow.cpp \
		p7zip/CPP/7zip/Compress/LzxDecoder.cpp \
		p7zip/CPP/7zip/Compress/PpmdDecoder.cpp \
		p7zip/CPP/7zip/Compress/PpmdEncoder.cpp \
		p7zip/CPP/7zip/Compress/PpmdRegister.cpp \
		p7zip/CPP/7zip/Compress/PpmdZip.cpp \
		p7zip/CPP/7zip/Compress/QuantumDecoder.cpp \
		p7zip/CPP/7zip/Compress/Rar1Decoder.cpp \
		p7zip/CPP/7zip/Compress/Rar2Decoder.cpp \
		p7zip/CPP/7zip/Compress/Rar3Decoder.cpp \
		p7zip/CPP/7zip/Compress/Rar3Vm.cpp \
		p7zip/CPP/7zip/Compress/Rar5Decoder.cpp \
		p7zip/CPP/7zip/Compress/RarCodecsRegister.cpp \
		p7zip/CPP/7zip/Compress/ShrinkDecoder.cpp \
		p7zip/CPP/7zip/Compress/ZDecoder.cpp \
		p7zip/CPP/7zip/Compress/XpressDecoder.cpp \
		p7zip/CPP/7zip/Compress/ZlibDecoder.cpp \
		p7zip/CPP/7zip/Crypto/7zAes.cpp \
		p7zip/CPP/7zip/Crypto/7zAesRegister.cpp \
		p7zip/CPP/7zip/Crypto/HmacSha1.cpp \
		p7zip/CPP/7zip/Crypto/HmacSha256.cpp \
		p7zip/CPP/7zip/Crypto/MyAes.cpp \
		p7zip/CPP/7zip/Crypto/Pbkdf2HmacSha1.cpp \
		p7zip/CPP/7zip/Crypto/RandGen.cpp \
		p7zip/CPP/7zip/Crypto/Rar20Crypto.cpp \
		p7zip/CPP/7zip/Crypto/Rar5Aes.cpp \
		p7zip/CPP/7zip/Crypto/RarAes.cpp \
		p7zip/CPP/7zip/Crypto/WzAes.cpp \
		p7zip/CPP/7zip/Crypto/ZipCrypto.cpp \
		p7zip/CPP/7zip/Crypto/ZipStrong.cpp \
		p7zip/C/Bcj2.c \
		p7zip/C/Bcj2Enc.c \
		p7zip/C/Blake2s.c \
		p7zip/C/Bra.c \
		p7zip/C/Bra86.c \
		p7zip/C/BraIA64.c \
		p7zip/C/BwtSort.c \
		p7zip/C/CpuArch.c \
		p7zip/C/HuffEnc.c \
		p7zip/C/LzFind.c \
		p7zip/C/LzFindMt.c \
		p7zip/C/LzmaDec.c \
		p7zip/C/LzmaEnc.c \
		p7zip/C/Sort.c \
		p7zip/C/Sha1.c \
		p7zip/C/Threads.c \
		p7zip/C/Aes.c \
		p7zip/C/Alloc.c \
		p7zip/C/Sha256.c \
		p7zip/C/7zCrc.c \
		p7zip/C/7zCrcOpt.c \
		p7zip/C/7zStream.c \
		p7zip/C/Delta.c \
		p7zip/C/Lzma2Dec.c \
		p7zip/C/Lzma2Enc.c \
		p7zip/C/MtCoder.c \
		p7zip/C/Ppmd7.c \
		p7zip/C/Ppmd7Dec.c \
		p7zip/C/Ppmd7Enc.c \
		p7zip/C/Ppmd8.c \
		p7zip/C/Ppmd8Dec.c \
		p7zip/C/Ppmd8Enc.c \
		p7zip/C/Xz.c \
		p7zip/C/XzCrc64.c \
		p7zip/C/XzCrc64Opt.c \
		p7zip/C/XzDec.c \
		p7zip/C/XzEnc.c \
		p7zip/C/XzIn.c \

SEVEN_ZIP_PLATFORM_SOURCE_FILES := \
		p7zip/CPP/myWindows/wine_date_and_time.cpp \

include $(CLEAR_VARS)

LOCAL_MODULE := 7z

LOCAL_CFLAGS := \
		-DANDROID_NDK \
		-fexceptions \
		-DNDEBUG \
		-D_REENTRANT \
		-DENV_UNIX \
		-DBREAK_HANDLER \
		-DUNICODE \
		-D_UNICODE \
		-DUNIX_USE_WIN_FILE \

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH)/jbinding-cpp \
		$(LOCAL_PATH)/jbinding-cpp/javah \
		$(LOCAL_PATH)/jbinding-cpp/PlatformUnix \
		$(LOCAL_PATH)/p7zip/CPP \
		$(LOCAL_PATH)/p7zip/CPP/include_windows \
		$(LOCAL_PATH)/p7zip/CPP/myWindows \
		$(LOCAL_PATH)/p7zip/C \

LOCAL_SRC_FILES := \
		$(JBINDING_CPP_FILES) \
		$(SEVEN_ZIP_SOURCE_FILES) \
		$(SEVEN_ZIP_PLATFORM_SOURCE_FILES) \

ifeq ($(APP_OPTIM),debug)
	LOCAL_CFLAGS += \
			-DTRACE_OBJECTS_ON \
			-DUSE_MY_ASSERTS \
			-DNATIVE_JUNIT_TEST_SUPPORT \

	LOCAL_SRC_FILES += $(JBINDING_TEST_CPP_FILES)
endif

ifeq ($(APP_STL),c++_static)
	ifeq ($(TARGET_ARCH_ABI),armeabi)
		LOCAL_LDLIBS += -latomic
	endif
endif

include $(BUILD_SHARED_LIBRARY)
