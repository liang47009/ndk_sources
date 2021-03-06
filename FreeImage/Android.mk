LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := freeimage
LOCAL_CFLAGS	:= -I${LOCAL_PATH}/FreeImage/Source
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/LibJPEG
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/FreeImage
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/ZLib
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/DeprecationManager
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/Metadata
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/LibRawLite
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/LibRawLite/libraw
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/OpenEXR/IlmThread
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/FreeImageToolkit
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/LibOpenJPEG
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/LibPNG
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/OpenEXR/Imath
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/LibRawLite\internal
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/OpenEXR
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/OpenEXR/Iex
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/LibTIFF4
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/OpenEXR/Half
LOCAL_CFLAGS	+= -I${LOCAL_PATH}/FreeImage/Source/OpenEXR/IlmImf

LOCAL_EXPORT_C_INCLUDES := ${LOCAL_PATH}/FreeImage/Source \
			${LOCAL_PATH}/FreeImage/Source/LibJPEG \
			${LOCAL_PATH}/FreeImage/Source/LibOpenJPEG \
			${LOCAL_PATH}/FreeImage/Source/LibPNG \
			${LOCAL_PATH}/FreeImage/Source/LibRawLite \
			${LOCAL_PATH}/FreeImage/Source/LibTIFF4 \
			${LOCAL_PATH}/FreeImage/Source/OpenEXR \
			${LOCAL_PATH}/FreeImage/Source/ZLib 

LOCAL_SRC_FILES :=   FreeImage/Source/DeprecationManager/Deprecated.cpp \
  FreeImage/Source/DeprecationManager/DeprecationMgr.cpp \
  FreeImage/Source/FreeImage/BitmapAccess.cpp \
  FreeImage/Source/FreeImage/CacheFile.cpp \
  FreeImage/Source/FreeImage/ColorLookup.cpp \
  FreeImage/Source/FreeImage/Conversion.cpp \
  FreeImage/Source/FreeImage/Conversion16_555.cpp \
  FreeImage/Source/FreeImage/Conversion16_565.cpp \
  FreeImage/Source/FreeImage/Conversion24.cpp \
  FreeImage/Source/FreeImage/Conversion32.cpp \
  FreeImage/Source/FreeImage/ConversionFloat.cpp \
  FreeImage/Source/FreeImage/ConversionRGB16.cpp \
  FreeImage/Source/FreeImage/Conversion4.cpp \
  FreeImage/Source/FreeImage/Conversion8.cpp \
  FreeImage/Source/FreeImage/ConversionRGBF.cpp \
  FreeImage/Source/FreeImage/ConversionType.cpp \
  FreeImage/Source/FreeImage/ConversionUINT16.cpp \
  FreeImage/Source/FreeImage/FreeImage.cpp \
  FreeImage/Source/FreeImage/FreeImageIO.cpp \
  FreeImage/Source/FreeImage/GetType.cpp \
  FreeImage/Source/FreeImage/Halftoning.cpp \
  FreeImage/Source/FreeImage/J2KHelper.cpp \
  FreeImage/Source/FreeImage/MemoryIO.cpp \
  FreeImage/Source/FreeImage/MNGHelper.cpp \
  FreeImage/Source/FreeImage/MultiPage.cpp \
  FreeImage/Source/FreeImage/NNQuantizer.cpp \
  FreeImage/Source/FreeImage/PSDParser.cpp \
  FreeImage/Source/FreeImage/PixelAccess.cpp \
  FreeImage/Source/FreeImage/Plugin.cpp \
  FreeImage/Source/FreeImage/PluginBMP.cpp \
  FreeImage/Source/FreeImage/PluginCUT.cpp \
  FreeImage/Source/FreeImage/PluginDDS.cpp \
  FreeImage/Source/FreeImage/PluginEXR.cpp \
  FreeImage/Source/FreeImage/PluginG3.cpp \
  FreeImage/Source/FreeImage/PluginGIF.cpp \
  FreeImage/Source/FreeImage/PluginHDR.cpp \
  FreeImage/Source/FreeImage/PluginICO.cpp \
  FreeImage/Source/FreeImage/PluginIFF.cpp \
  FreeImage/Source/FreeImage/PluginJ2K.cpp \
  FreeImage/Source/FreeImage/PluginJNG.cpp \
  FreeImage/Source/FreeImage/PluginJP2.cpp \
  FreeImage/Source/FreeImage/PluginJPEG.cpp \
  FreeImage/Source/FreeImage/PluginKOALA.cpp \
  FreeImage/Source/FreeImage/PluginMNG.cpp \
  FreeImage/Source/FreeImage/PluginPCD.cpp \
  FreeImage/Source/FreeImage/PluginPCX.cpp \
  FreeImage/Source/FreeImage/PluginPFM.cpp \
  FreeImage/Source/FreeImage/PluginPICT.cpp \
  FreeImage/Source/FreeImage/PluginPNG.cpp \
  FreeImage/Source/FreeImage/PluginPNM.cpp \
  FreeImage/Source/FreeImage/PluginPSD.cpp \
  FreeImage/Source/FreeImage/PluginRAS.cpp \
  FreeImage/Source/FreeImage/PluginRAW.cpp \
  FreeImage/Source/FreeImage/PluginSGI.cpp \
  FreeImage/Source/FreeImage/PluginTARGA.cpp \
  FreeImage/Source/FreeImage/PluginTIFF.cpp \
  FreeImage/Source/FreeImage/PluginWBMP.cpp \
  FreeImage/Source/FreeImage/PluginXBM.cpp \
  FreeImage/Source/FreeImage/PluginXPM.cpp \
  FreeImage/Source/FreeImage/TIFFLogLuv.cpp \
  FreeImage/Source/FreeImage/ToneMapping.cpp \
  FreeImage/Source/FreeImage/WuQuantizer.cpp \
  FreeImage/Source/FreeImage/ZLibInterface.cpp \
  FreeImage/Source/FreeImage/tmoColorConvert.cpp \
  FreeImage/Source/FreeImage/tmoDrago03.cpp \
  FreeImage/Source/FreeImage/tmoFattal02.cpp \
  FreeImage/Source/FreeImage/tmoReinhard05.cpp \
  FreeImage/Source/FreeImageToolkit/BSplineRotate.cpp \
  FreeImage/Source/FreeImageToolkit/Background.cpp \
  FreeImage/Source/FreeImageToolkit/Channels.cpp \
  FreeImage/Source/FreeImageToolkit/ClassicRotate.cpp \
  FreeImage/Source/FreeImageToolkit/Colors.cpp \
  FreeImage/Source/FreeImageToolkit/CopyPaste.cpp \
  FreeImage/Source/FreeImageToolkit/Display.cpp \
  FreeImage/Source/FreeImageToolkit/Flip.cpp \
  FreeImage/Source/FreeImageToolkit/JPEGTransform.cpp \
  FreeImage/Source/FreeImageToolkit/MultigridPoissonSolver.cpp \
  FreeImage/Source/FreeImageToolkit/Rescale.cpp \
  FreeImage/Source/FreeImageToolkit/Resize.cpp \
  FreeImage/Source/LibJPEG/jaricom.c \
  FreeImage/Source/LibJPEG/jcapimin.c \
  FreeImage/Source/LibJPEG/jcapistd.c \
  FreeImage/Source/LibJPEG/jcarith.c \
  FreeImage/Source/LibJPEG/jccoefct.c \
  FreeImage/Source/LibJPEG/jccolor.c \
  FreeImage/Source/LibJPEG/jcdctmgr.c \
  FreeImage/Source/LibJPEG/jchuff.c \
  FreeImage/Source/LibJPEG/jcinit.c \
  FreeImage/Source/LibJPEG/jcmainct.c \
  FreeImage/Source/LibJPEG/jcmarker.c \
  FreeImage/Source/LibJPEG/jcmaster.c \
  FreeImage/Source/LibJPEG/jcomapi.c \
  FreeImage/Source/LibJPEG/jcparam.c \
  FreeImage/Source/LibJPEG/jcprepct.c \
  FreeImage/Source/LibJPEG/jcsample.c \
  FreeImage/Source/LibJPEG/jctrans.c \
  FreeImage/Source/LibJPEG/jdapimin.c \
  FreeImage/Source/LibJPEG/jdapistd.c \
  FreeImage/Source/LibJPEG/jdarith.c \
  FreeImage/Source/LibJPEG/jdatadst.c \
  FreeImage/Source/LibJPEG/jdatasrc.c \
  FreeImage/Source/LibJPEG/jdcoefct.c \
  FreeImage/Source/LibJPEG/jdcolor.c \
  FreeImage/Source/LibJPEG/jddctmgr.c \
  FreeImage/Source/LibJPEG/jdhuff.c \
  FreeImage/Source/LibJPEG/jdinput.c \
  FreeImage/Source/LibJPEG/jdmainct.c \
  FreeImage/Source/LibJPEG/jdmarker.c \
  FreeImage/Source/LibJPEG/jdmaster.c \
  FreeImage/Source/LibJPEG/jdmerge.c \
  FreeImage/Source/LibJPEG/jdpostct.c \
  FreeImage/Source/LibJPEG/jdsample.c \
  FreeImage/Source/LibJPEG/jdtrans.c \
  FreeImage/Source/LibJPEG/jerror.c \
  FreeImage/Source/LibJPEG/jfdctflt.c \
  FreeImage/Source/LibJPEG/jfdctfst.c \
  FreeImage/Source/LibJPEG/jfdctint.c \
  FreeImage/Source/LibJPEG/jidctflt.c \
  FreeImage/Source/LibJPEG/jidctfst.c \
  FreeImage/Source/LibJPEG/jidctint.c \
  FreeImage/Source/LibJPEG/jmemmgr.c \
  FreeImage/Source/LibJPEG/jmemnobs.c \
  FreeImage/Source/LibJPEG/jquant1.c \
  FreeImage/Source/LibJPEG/jquant2.c \
  FreeImage/Source/LibJPEG/jutils.c \
  FreeImage/Source/LibJPEG/transupp.c \
  FreeImage/Source/LibOpenJPEG/bio.c \
  FreeImage/Source/LibOpenJPEG/cidx_manager.c \
  FreeImage/Source/LibOpenJPEG/cio.c \
  FreeImage/Source/LibOpenJPEG/dwt.c \
  FreeImage/Source/LibOpenJPEG/event.c \
  FreeImage/Source/LibOpenJPEG/image.c \
  FreeImage/Source/LibOpenJPEG/j2k.c \
  FreeImage/Source/LibOpenJPEG/j2k_lib.c \
  FreeImage/Source/LibOpenJPEG/jp2.c \
  FreeImage/Source/LibOpenJPEG/jpt.c \
  FreeImage/Source/LibOpenJPEG/mct.c \
  FreeImage/Source/LibOpenJPEG/mqc.c \
  FreeImage/Source/LibOpenJPEG/openjpeg.c \
  FreeImage/Source/LibOpenJPEG/phix_manager.c \
  FreeImage/Source/LibOpenJPEG/pi.c \
  FreeImage/Source/LibOpenJPEG/ppix_manager.c \
  FreeImage/Source/LibOpenJPEG/raw.c \
  FreeImage/Source/LibOpenJPEG/t1.c \
  FreeImage/Source/LibOpenJPEG/t2.c \
  FreeImage/Source/LibOpenJPEG/tcd.c \
  FreeImage/Source/LibOpenJPEG/tgt.c \
  FreeImage/Source/LibOpenJPEG/thix_manager.c \
  FreeImage/Source/LibOpenJPEG/tpix_manager.c \
  FreeImage/Source/LibPNG/png.c \
  FreeImage/Source/LibPNG/pngerror.c \
  FreeImage/Source/LibPNG/pnggccrd.c \
  FreeImage/Source/LibPNG/pngget.c \
  FreeImage/Source/LibPNG/pngmem.c \
  FreeImage/Source/LibPNG/pngpread.c \
  FreeImage/Source/LibPNG/pngread.c \
  FreeImage/Source/LibPNG/pngrio.c \
  FreeImage/Source/LibPNG/pngrtran.c \
  FreeImage/Source/LibPNG/pngrutil.c \
  FreeImage/Source/LibPNG/pngset.c \
  FreeImage/Source/LibPNG/pngtrans.c \
  FreeImage/Source/LibPNG/pngvcrd.c \
  FreeImage/Source/LibPNG/pngwio.c \
  FreeImage/Source/LibPNG/pngwrite.c \
  FreeImage/Source/LibPNG/pngwtran.c \
  FreeImage/Source/LibPNG/pngwutil.c \
  FreeImage/Source/LibRawLite/internal/dcraw_common.cpp \
  FreeImage/Source/LibRawLite/internal/dcraw_fileio.cpp \
  FreeImage/Source/LibRawLite/internal/demosaic_packs.cpp \
  FreeImage/Source/LibRawLite/src/libraw_c_api.cpp \
  FreeImage/Source/LibRawLite/src/libraw_cxx.cpp \
  FreeImage/Source/LibRawLite/src/libraw_datastream.cpp \
  FreeImage/Source/LibTIFF4/tif_aux.c \
  FreeImage/Source/LibTIFF4/tif_close.c \
  FreeImage/Source/LibTIFF4/tif_codec.c \
  FreeImage/Source/LibTIFF4/tif_color.c \
  FreeImage/Source/LibTIFF4/tif_compress.c \
  FreeImage/Source/LibTIFF4/tif_dir.c \
  FreeImage/Source/LibTIFF4/tif_dirinfo.c \
  FreeImage/Source/LibTIFF4/tif_dirread.c \
  FreeImage/Source/LibTIFF4/tif_dirwrite.c \
  FreeImage/Source/LibTIFF4/tif_dumpmode.c \
  FreeImage/Source/LibTIFF4/tif_error.c \
  FreeImage/Source/LibTIFF4/tif_extension.c \
  FreeImage/Source/LibTIFF4/tif_fax3.c \
  FreeImage/Source/LibTIFF4/tif_fax3sm.c \
  FreeImage/Source/LibTIFF4/tif_flush.c \
  FreeImage/Source/LibTIFF4/tif_getimage.c \
  FreeImage/Source/LibTIFF4/tif_jpeg.c \
  FreeImage/Source/LibTIFF4/tif_jpeg_12.c \
  FreeImage/Source/LibTIFF4/tif_luv.c \
  FreeImage/Source/LibTIFF4/tif_lzma.c \
  FreeImage/Source/LibTIFF4/tif_lzw.c \
  FreeImage/Source/LibTIFF4/tif_next.c \
  FreeImage/Source/LibTIFF4/tif_ojpeg.c \
  FreeImage/Source/LibTIFF4/tif_open.c \
  FreeImage/Source/LibTIFF4/tif_packbits.c \
  FreeImage/Source/LibTIFF4/tif_pixarlog.c \
  FreeImage/Source/LibTIFF4/tif_predict.c \
  FreeImage/Source/LibTIFF4/tif_print.c \
  FreeImage/Source/LibTIFF4/tif_read.c \
  FreeImage/Source/LibTIFF4/tif_strip.c \
  FreeImage/Source/LibTIFF4/tif_swab.c \
  FreeImage/Source/LibTIFF4/tif_thunder.c \
  FreeImage/Source/LibTIFF4/tif_tile.c \
  FreeImage/Source/LibTIFF4/tif_version.c \
  FreeImage/Source/LibTIFF4/tif_warning.c \
  FreeImage/Source/LibTIFF4/tif_write.c \
  FreeImage/Source/LibTIFF4/tif_zip.c \
  FreeImage/Source/Metadata/Exif.cpp \
  FreeImage/Source/Metadata/FIRational.cpp \
  FreeImage/Source/Metadata/FreeImageTag.cpp \
  FreeImage/Source/Metadata/IPTC.cpp \
  FreeImage/Source/Metadata/TagConversion.cpp \
  FreeImage/Source/Metadata/TagLib.cpp \
  FreeImage/Source/Metadata/XTIFF.cpp \
  FreeImage/Source/OpenEXR/Half/half.cpp \
  FreeImage/Source/OpenEXR/Iex/IexBaseExc.cpp \
  FreeImage/Source/OpenEXR/Iex/IexThrowErrnoExc.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfAcesFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfB44Compressor.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfBoxAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfCRgbaFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfChannelList.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfChannelListAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfChromaticities.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfChromaticitiesAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfCompressionAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfCompressor.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfConvert.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfDoubleAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfEnvmap.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfEnvmapAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfFloatAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfFrameBuffer.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfFramesPerSecond.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfHeader.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfHuf.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfIO.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfInputFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfIntAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfKeyCode.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfKeyCodeAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfLineOrderAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfLut.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfMatrixAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfMisc.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfMultiView.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfOpaqueAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfOutputFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfPizCompressor.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfPreviewImage.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfPreviewImageAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfPxr24Compressor.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfRational.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfRationalAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfRgbaFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfRgbaYca.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfRleCompressor.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfScanLineInputFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfStandardAttributes.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfStdIO.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfStringAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfStringVectorAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTestFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfThreading.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTileDescriptionAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTileOffsets.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTiledInputFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTiledMisc.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTiledOutputFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTiledRgbaFile.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTimeCode.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfTimeCodeAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfVecAttribute.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfVersion.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfWav.cpp \
  FreeImage/Source/OpenEXR/IlmImf/ImfZipCompressor.cpp \
  FreeImage/Source/OpenEXR/IlmThread/IlmThread.cpp \
  FreeImage/Source/OpenEXR/IlmThread/IlmThreadMutex.cpp \
  FreeImage/Source/OpenEXR/IlmThread/IlmThreadPool.cpp \
  FreeImage/Source/OpenEXR/IlmThread/IlmThreadSemaphore.cpp \
  FreeImage/Source/OpenEXR/Imath/ImathBox.cpp \
  FreeImage/Source/OpenEXR/Imath/ImathColorAlgo.cpp \
  FreeImage/Source/OpenEXR/Imath/ImathFun.cpp \
  FreeImage/Source/OpenEXR/Imath/ImathMatrixAlgo.cpp \
  FreeImage/Source/OpenEXR/Imath/ImathRandom.cpp \
  FreeImage/Source/OpenEXR/Imath/ImathShear.cpp \
  FreeImage/Source/OpenEXR/Imath/ImathVec.cpp \
  FreeImage/Source/ZLib/adler32.c \
  FreeImage/Source/ZLib/compress.c \
  FreeImage/Source/ZLib/crc32.c \
  FreeImage/Source/ZLib/deflate.c \
  FreeImage/Source/ZLib/gzclose.c \
  FreeImage/Source/ZLib/gzlib.c \
  FreeImage/Source/ZLib/gzread.c \
  FreeImage/Source/ZLib/gzwrite.c \
  FreeImage/Source/ZLib/infback.c \
  FreeImage/Source/ZLib/inffast.c \
  FreeImage/Source/ZLib/inflate.c \
  FreeImage/Source/ZLib/inftrees.c \
  FreeImage/Source/ZLib/trees.c \
  FreeImage/Source/ZLib/uncompr.c \
  FreeImage/Source/ZLib/zutil.c \
# FreeImage/Source/LibJPEG/ansi2knr.c \

include $(BUILD_STATIC_LIBRARY)