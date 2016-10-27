<?xml version="1.0"?><doc>
<members>
<member name="T:AForge.Video.FFMPEG.VideoFileReader" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="20">
<summary>
Class for reading video files utilizing FFmpeg library.
</summary>

<remarks><para>The class allows to read video files using <a href="http://www.ffmpeg.org/">FFmpeg</a> library.</para>

<para><note>Make sure you have <b>FFmpeg</b> binaries (DLLs) in the output folder of your application in order
to use this class successfully. <b>FFmpeg</b> binaries can be found in Externals folder provided with AForge.NET
framework's distribution.</note></para>

<para>Sample usage:</para>
<code>
// create instance of video reader
VideoFileReader reader = new VideoFileReader( );
// open video file
reader.Open( "test.avi" );
// check some of its attributes
Console.WriteLine( "width:  " + reader.Width );
Console.WriteLine( "height: " + reader.Height );
Console.WriteLine( "fps:    " + reader.FrameRate );
Console.WriteLine( "codec:  " + reader.CodecName );
// read 100 video frames out of it
for ( int i = 0; i &lt; 100; i++ )
{
    Bitmap videoFrame = reader.ReadVideoFrame( );
    // process the frame somehow
    // ...

    // dispose the frame when it is no longer required
    videoFrame.Dispose( );
}
reader.Close( );
</code>
</remarks>

</member>
<member name="P:AForge.Video.FFMPEG.VideoFileReader.Width" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="59">
<summary>
Frame width of the opened video file.
</summary>

<exception cref="T:System.IO.IOException">Thrown if no video file was open.</exception>

</member>
<member name="P:AForge.Video.FFMPEG.VideoFileReader.Height" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="74">
<summary>
Frame height of the opened video file.
</summary>

<exception cref="T:System.IO.IOException">Thrown if no video file was open.</exception>

</member>
<member name="P:AForge.Video.FFMPEG.VideoFileReader.FrameRate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="89">
<summary>
Frame rate of the opened video file.
</summary>

<exception cref="T:System.IO.IOException">Thrown if no video file was open.</exception>

</member>
<member name="P:AForge.Video.FFMPEG.VideoFileReader.FrameCount" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="104">
<summary>
Number of video frames in the opened video file.
</summary>

<remarks><para><note><b>Warning</b>: some video file formats may report different value
from the actual number of video frames in the file (subject to fix/investigate).</note></para>
</remarks>

<exception cref="T:System.IO.IOException">Thrown if no video file was open.</exception>

</member>
<member name="P:AForge.Video.FFMPEG.VideoFileReader.CodecName" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="123">
<summary>
Name of codec used for encoding the opened video file.
</summary>

<exception cref="T:System.IO.IOException">Thrown if no video file was open.</exception>

</member>
<member name="P:AForge.Video.FFMPEG.VideoFileReader.IsOpen" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="138">
<summary>
The property specifies if a video file is opened or not by this instance of the class.
</summary>
</member>
<member name="M:AForge.Video.FFMPEG.VideoFileReader.Finalize" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="151">
<summary>
Object's finalizer.
</summary>

</member>
<member name="M:AForge.Video.FFMPEG.VideoFileReader.#ctor" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="162">
<summary>
Initializes a new instance of the <see cref="T:AForge.Video.FFMPEG.VideoFileReader"/> class.
</summary>

</member>
<member name="M:AForge.Video.FFMPEG.VideoFileReader.Dispose" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="168">
<summary>
Disposes the object and frees its resources.
</summary>

</member>
<member name="M:AForge.Video.FFMPEG.VideoFileReader.Open(System.String)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="178">
<summary>
Open video file with the specified name.
</summary>

<param name="fileName">Video file name to open.</param>

<exception cref="T:System.IO.IOException">Cannot open video file with the specified name.</exception>
<exception cref="T:AForge.Video.VideoException">A error occurred while opening the video file. See exception message.</exception>

</member>
<member name="M:AForge.Video.FFMPEG.VideoFileReader.ReadVideoFrame" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="189">
<summary>
Read next video frame of the currently opened video file.
</summary>

<returns>Returns next video frame of the opened file or <see langword="null"/> if end of
file was reached. The returned video frame has 24 bpp color format.</returns>

<exception cref="T:System.IO.IOException">Thrown if no video file was open.</exception>
<exception cref="T:AForge.Video.VideoException">A error occurred while reading next video frame. See exception message.</exception>

</member>
<member name="M:AForge.Video.FFMPEG.VideoFileReader.Close" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\sources\video.ffmpeg\videofilereader.h" line="201">
<summary>
Close currently opened video file if any.
</summary>

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.tm'. -->
<member name="M:libffmpeg.avutil_version" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="24">
@file
external API header

@file
external API header

 @mainpage

 @section libav_intro Introduction

 This document describe the usage of the different libraries
 provided by FFmpeg.

 @li @ref libavc "libavcodec" encoding/decoding library
 @li @subpage libavfilter graph based frame editing library
 @li @ref libavf "libavformat" I/O and muxing/demuxing library
 @li @ref lavd "libavdevice" special devices muxing/demuxing library
 @li @ref lavu "libavutil" common utility library
 @li @subpage libpostproc post processing library
 @li @subpage libswscale  color conversion and scaling library


 @defgroup lavu Common utility functions

 @brief
 libavutil contains the code shared across all the other FFmpeg
 libraries

 @note In order to use the functions provided by avutil you must include
 the specific header.

 @{

 @defgroup lavu_crypto Crypto and Hashing

 @{
 @}

 @defgroup lavu_math Maths
 @{

 @}

 @defgroup lavu_string String Manipulation

 @{

 @}

 @defgroup lavu_mem Memory Management

 @{

 @}

 @defgroup lavu_data Data Structures
 @{

 @}

 @defgroup lavu_audio Audio related

 @{

 @}

 @defgroup lavu_error Error Codes

 @{

 @}

 @defgroup lavu_misc Other

 @{

 @defgroup lavu_internal Internal

 Not exported functions, for internal usage only

 @{

 @}

 @defgroup preproc_misc Preprocessor String Macros

 String manipulation macros

 @{

@}

 @defgroup version_utils Library Version Macros

 Useful to check and match library version in order to maintain
 backward compatibility.

 @{

 @}

 @defgroup lavu_ver Version and Build diagnostics

 Macros and function useful to check at compiletime and at runtime
 which version of libavutil is in use.

 @{

 @}

 @defgroup depr_guards Deprecation guards
 Those FF_API_* defines are not part of public API.
 They may change, break or disappear at any time.

 They are used mostly internally to mark code that will be removed
 on the next major version.

 @{

@}

@addtogroup lavu_ver
@{

Return the LIBAVUTIL_VERSION_INT constant.

</member>
<member name="M:libffmpeg.avutil_configuration" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="212">
Return the libavutil build-time configuration.

</member>
<member name="M:libffmpeg.avutil_license" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="217">
Return the libavutil license.

</member>
<member name="T:libffmpeg.AVMediaType" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="222">
@}

@addtogroup lavu_media Media Type
@brief Media Type

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="241">
Return a string describing the media_type enum, NULL if media_type
is unknown.

</member>
<member name="T:libffmpeg.AVPictureType" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="247">
 @defgroup lavu_const Constants
 @{

 @defgroup lavu_enc Encoding specific

 @note those definition should move to avcodec
 @{

 @}
 @defgroup lavu_time Timestamp specific

 FFmpeg internal timebase and timestamp definitions

 @{

 @brief Undefined timestamp value

 Usually reported by demuxer that work on containers that do not provide
 either pts or dts.

Internal time base represented as integer

Internal time base represented as fractional value

 @}
 @}
 @defgroup lavu_picture Image related

 AVPicture types, pixel formats and basic image planes manipulation.

 @{

</member>
<member name="T:libffmpeg.AVPictureType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="315">
 Return a single letter to describe the given picture type
 pict_type.

 @param[in] pict_type the picture type @return a single character
 representing the picture type, '?' if pict_type is unknown

</member>
<member name="M:libffmpeg._cgetws_s(System.Char*,System.UInt32,System.UInt32*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="324">
@}

@file
common internal and external API header

</member>
<member name="F:libffmpeg.ff_log2_tab" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\attributes.h" line="21">
@file
Macro definitions for various function/variable attributes

Disable warnings about deprecated features
This is useful for sections of code kept for backward compatibility and
scheduled for removal.

Mark a variable as used and prevent the compiler from optimizing it
away.  This is useful for variables accessed only from inline
assembler without the compiler being aware.

</member>
<member name="M:libffmpeg.av_clip_c(System.Int32,System.Int32,System.Int32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="21">
@file
common internal and external API header

Clip a signed integer value into the amin-amax range.
@param a value to clip
@param amin minimum value of the clip range
@param amax maximum value of the clip range
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_uint8_c(System.Int32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="119">
Clip a signed integer value into the 0-255 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_int8_c(System.Int32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="130">
Clip a signed integer value into the -128,127 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_uint16_c(System.Int32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="141">
Clip a signed integer value into the 0-65535 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_int16_c(System.Int32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="152">
Clip a signed integer value into the -32768,32767 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clipl_int32_c(System.Int64)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="163">
Clip a signed 64-bit integer value into the -2147483648,2147483647 range.
@param a value to clip
@return clipped value

</member>
<member name="M:libffmpeg.av_clip_uintp2_c(System.Int32,System.Int32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="174">
Clip a signed integer to an unsigned power of two range.
@param  a value to clip
@param  p bit position to clip at
@return clipped value

</member>
<member name="M:libffmpeg.av_clipf_c(System.Single,System.Single,System.Single)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="186">
Clip a float value into the amin-amax range.
@param a value to clip
@param amin minimum value of the clip range
@param amax maximum value of the clip range
@return clipped value

</member>
<member name="M:libffmpeg.av_ceil_log2_c(System.Int32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="200">
Compute ceil(log2(x)).
 * @param x value used to compute ceil(log2(x))
 * @return computed ceiling of log2(x)

</member>
<member name="M:libffmpeg.av_popcount_c(System.UInt32)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="209">
Count number of bits set to one in x
@param x value to count bits of
@return the number of bits set to one in x

</member>
<member name="M:libffmpeg.av_popcount64_c(System.UInt64)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="223">
Count number of bits set to one in x
@param x value to count bits of
@return the number of bits set to one in x

</member>
<member name="M:libffmpeg.av_strerror(System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\common.h" line="236">
 Convert a UTF-8 character (up to 4 bytes) to its 32-bit UCS-4 encoded form.

 @param val      Output value, must be an lvalue of type uint32_t.
 @param GET_BYTE Expression reading one byte from the input.
                 Evaluated up to 7 times (4 for the currently
                 assigned Unicode range).  With a memory buffer
                 input, this could be *ptr++.
 @param ERROR    Expression to be evaluated on invalid input,
                 typically a goto statement.

 Convert a UTF-16 character (2 or 4 bytes) to its 32-bit UCS-4 encoded form.

 @param val       Output value, must be an lvalue of type uint32_t.
 @param GET_16BIT Expression returning two bytes of UTF-16 data converted
                  to native byte order.  Evaluated one or two times.
 @param ERROR     Expression to be evaluated on invalid input,
                  typically a goto statement.

@def PUT_UTF8(val, tmp, PUT_BYTE)
Convert a 32-bit Unicode character to its UTF-8 encoded form (up to 4 bytes long).
@param val is an input-only argument and should be of type uint32_t. It holds
a UCS-4 encoded Unicode character that is to be converted to UTF-8. If
val is given as a function it is executed only once.
@param tmp is a temporary variable and should be of type uint8_t. It
represents an intermediate value during conversion that is to be
output by PUT_BYTE.
@param PUT_BYTE writes the converted UTF-8 bytes to any proper destination.
It could be a function or a statement, and uses tmp as the input byte.
For example, PUT_BYTE could be "*output++ = tmp;" PUT_BYTE will be
executed up to 4 times for values in the valid UTF-8 range and up to
7 times in the general case, depending on the length of the converted
Unicode character.

@def PUT_UTF16(val, tmp, PUT_16BIT)
Convert a 32-bit Unicode character to its UTF-16 encoded form (2 or 4 bytes).
@param val is an input-only argument and should be of type uint32_t. It holds
a UCS-4 encoded Unicode character that is to be converted to UTF-16. If
val is given as a function it is executed only once.
@param tmp is a temporary variable and should be of type uint16_t. It
represents an intermediate value during conversion that is to be
output by PUT_16BIT.
@param PUT_16BIT writes the converted UTF-16 data to any proper destination
in desired endianness. It could be a function or a statement, and uses tmp
as the input byte.  For example, PUT_BYTE could be "*output++ = tmp;"
PUT_BYTE will be executed 1 or 2 times depending on input character.

@file
memory handling functions

@file
error code definitions

 @addtogroup lavu_error

 @{

This is semantically identical to AVERROR_BUG
it has been introduced in Libav after our AVERROR_BUG and with a modified value.

 Put a description of the AVERROR code errnum in errbuf.
 In case of failure the global variable errno is set to indicate the
 error. Even in case of failure av_strerror() will print a generic
 error message indicating the errnum provided to errbuf.

 @param errnum      error code to describe
 @param errbuf      buffer to which description is written
 @param errbuf_size the size in bytes of errbuf
 @return 0 on success, a negative value if a description for errnum
 cannot be found

</member>
<member name="M:libffmpeg.av_malloc(System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\error.h" line="82">
@}

@addtogroup lavu_mem
@{

Allocate a block of size bytes with alignment suitable for all
memory accesses (including vectors if available on the CPU).
@param size Size in bytes for the memory block to be allocated.
@return Pointer to the allocated block, NULL if the block cannot
be allocated.
@see av_mallocz()

</member>
<member name="M:libffmpeg.av_realloc(System.Void*,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="82">
Allocate or reallocate a block of memory.
If ptr is NULL and size &gt; 0, allocate a new block. If
size is zero, free the memory block pointed to by ptr.
@param ptr Pointer to a memory block already allocated with
av_malloc(z)() or av_realloc() or NULL.
@param size Size in bytes for the memory block to be allocated or
reallocated.
@return Pointer to a newly reallocated block or NULL if the block
cannot be reallocated or the function is used to free the memory block.
@see av_fast_realloc()

</member>
<member name="M:libffmpeg.av_realloc_f(System.Void*,System.UInt32,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="96">
Allocate or reallocate a block of memory.
This function does the same thing as av_realloc, except:
- It takes two arguments and checks the result of the multiplication for
  integer overflow.
- It frees the input block in case of failure, thus avoiding the memory
  leak with the classic "buf = realloc(buf); if (!buf) return -1;".

</member>
<member name="M:libffmpeg.av_free(System.Void*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="106">
Free a memory block which has been allocated with av_malloc(z)() or
av_realloc().
@param ptr Pointer to the memory block which should be freed.
@note ptr = NULL is explicitly allowed.
@note It is recommended that you use av_freep() instead.
@see av_freep()

</member>
<member name="M:libffmpeg.av_mallocz(System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="116">
Allocate a block of size bytes with alignment suitable for all
memory accesses (including vectors if available on the CPU) and
zero all the bytes of the block.
@param size Size in bytes for the memory block to be allocated.
@return Pointer to the allocated block, NULL if it cannot be allocated.
@see av_malloc()

</member>
<member name="M:libffmpeg.av_calloc(System.UInt32,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="126">
Allocate a block of nmemb * size bytes with alignment suitable for all
memory accesses (including vectors if available on the CPU) and
zero all the bytes of the block.
The allocation will fail if nmemb * size is greater than or equal
to INT_MAX.
@param nmemb
@param size
@return Pointer to the allocated block, NULL if it cannot be allocated.

</member>
<member name="M:libffmpeg.av_strdup(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="138">
Duplicate the string s.
@param s string to be duplicated
@return Pointer to a newly allocated string containing a
copy of s or NULL if the string cannot be allocated.

</member>
<member name="M:libffmpeg.av_freep(System.Void*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="146">
Free a memory block which has been allocated with av_malloc(z)() or
av_realloc() and set the pointer pointing to it to NULL.
@param ptr Pointer to the pointer to the memory block which should
be freed.
@see av_free()

</member>
<member name="M:libffmpeg.av_dynarray_add(System.Void*,System.Int32*,System.Void*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="155">
 Add an element to a dynamic array.

 @param tab_ptr Pointer to the array.
 @param nb_ptr  Pointer to the number of elements in the array.
 @param elem    Element to be added.

</member>
<member name="M:libffmpeg.av_size_mult(System.UInt32,System.UInt32,System.UInt32*)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="164">
Multiply two size_t values checking for overflow.
@return  0 if success, AVERROR(EINVAL) if overflow.

</member>
<member name="M:libffmpeg.av_max_alloc(System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mem.h" line="179">
Set the maximum size that may me allocated in one block.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVRational'. -->
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_cmp_q(libffmpeg.AVRational,libffmpeg.AVRational)'. -->
<member name="M:libffmpeg.av_q2d(libffmpeg.AVRational)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="64">
Convert rational to double.
@param a rational to convert
@return (double) a

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_reduce(System.Int32*,System.Int32*,System.Int64,System.Int64,System.Int64)'. -->
<member name="M:libffmpeg.av_mul_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="85">
Multiply two rationals.
@param b first rational
@param c second rational
@return b*c

</member>
<member name="M:libffmpeg.av_div_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="93">
Divide one rational by another.
@param b first rational
@param c second rational
@return b/c

</member>
<member name="M:libffmpeg.av_add_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="101">
Add two rationals.
@param b first rational
@param c second rational
@return b+c

</member>
<member name="M:libffmpeg.av_sub_q(libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="109">
Subtract one rational from another.
@param b first rational
@param c second rational
@return b-c

</member>
<member name="M:libffmpeg.av_d2q(System.Double,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="117">
 Convert a double precision floating point number to a rational.
 inf is expressed as {1,0} or {-1,0} depending on the sign.

 @param d double to convert
 @param max the maximum allowed numerator and denominator
 @return (AVRational) d

</member>
<member name="M:libffmpeg.av_nearer_q(libffmpeg.AVRational,libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="127">
@return 1 if q1 is nearer to q than q2, -1 if q2 is nearer
than q1, 0 if they have the same distance.

</member>
<member name="M:libffmpeg.av_find_nearest_q_idx(libffmpeg.AVRational,libffmpeg.AVRational!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="133">
Find the nearest value in q_list to q.
@param q_list an array of rationals terminated by {0, 0}
@return the index of the nearest value found in the array

</member>
<member name="T:libffmpeg.AVRounding" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\rational.h" line="140">
@}

@addtogroup lavu_math
@{

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_gcd(System.Int64,System.Int64)'. -->
<member name="M:libffmpeg.av_rescale(System.Int64,System.Int64,System.Int64)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mathematics.h" line="81">
Rescale a 64-bit integer with rounding to nearest.
A simple a*b/c isn't possible as it can overflow.

</member>
<member name="T:libffmpeg.AVRounding" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mathematics.h" line="87">
Rescale a 64-bit integer with specified rounding.
A simple a*b/c isn't possible as it can overflow.

</member>
<member name="M:libffmpeg.av_rescale_q(System.Int64,libffmpeg.AVRational,libffmpeg.AVRational)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mathematics.h" line="93">
Rescale a 64-bit integer by 2 rational numbers.

</member>
<member name="M:libffmpeg.av_compare_ts(System.Int64,libffmpeg.AVRational,System.Int64,libffmpeg.AVRational)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mathematics.h" line="98">
Compare 2 timestamps each in its own timebases.
The result of the function is undefined if one of the timestamps
is outside the int64_t range when represented in the others timebase.
@return -1 if ts_a is before ts_b, 1 if ts_a is after ts_b or 0 if they represent the same position

</member>
<member name="M:libffmpeg.av_compare_mod(System.UInt64,System.UInt64,System.UInt64)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mathematics.h" line="106">
 Compare 2 integers modulo mod.
 That is we compare integers a and b for which only the least
 significant log2(mod) bits are known.

 @param mod must be a power of 2
 @return a negative value if a is smaller than b
         a positive value if a is greater than b
         0                if a equals          b

</member>
<member name="T:libffmpeg.AVExtFloat" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\mathematics.h" line="118">
@}

</member>
<member name="T:libffmpeg.AVClass" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="28">
Describe the class of an AVClass context structure. That is an
arbitrary struct of which the first field is a pointer to an
AVClass struct (e.g. AVCodecContext, AVFormatContext etc.).

</member>
<member name="F:libffmpeg.AVClass.class_name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="34">
The name of the class; usually it is the same name as the
context structure type to which the AVClass is associated.

</member>
<member name="F:libffmpeg.AVClass.item_name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="40">
A pointer to a function which returns the name of a context
instance ctx associated with the class.

</member>
<member name="T:libffmpeg.AVOption" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="46">
 a pointer to the first option specified in the class if any or NULL

 @see av_set_default_options()

</member>
<member name="F:libffmpeg.AVClass.version" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="53">
LIBAVUTIL_VERSION with which this structure was created.
This is used to allow fields to be added without requiring major
version bumps everywhere.

</member>
<member name="F:libffmpeg.AVClass.log_level_offset_offset" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="61">
Offset in the structure where log_level_offset is stored.
0 means there is no such variable

</member>
<member name="F:libffmpeg.AVClass.parent_log_context_offset" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="67">
Offset in the structure where a pointer to the parent context for loging is stored.
for example a decoder that uses eval.c could pass its AVCodecContext to eval as such
parent context. And a av_log() implementation could then display the parent context
can be NULL of course

</member>
<member name="F:libffmpeg.AVClass.child_next" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="75">
Return next AVOptions-enabled child or NULL

</member>
<member name="T:libffmpeg.AVClass" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="80">
 Return an AVClass corresponding to next potential
 AVOptions-enabled child.

 The difference between child_next and this is that
 child_next iterates over _already existing_ objects, while
 child_class_next iterates over _all possible_ children.

</member>
<member name="M:libffmpeg.av_log(System.Void*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="95">
Something went really wrong and we will crash now.

Something went wrong and recovery is not possible.
For example, no header was found for a format which depends
on headers or an illegal combination of parameters is used.

Something went wrong and cannot losslessly be recovered.
However, not all future data is affected.

Something somehow does not look correct. This may or may not
lead to problems. An example would be the use of '-vstrict -2'.

Stuff which is only useful for libav* developers.

 Send the specified message to the log if the level is less than or equal
 to the current av_log_level. By default, all logging messages are sent to
 stderr. This behavior can be altered by setting a different av_vlog callback
 function.

 @param avcl A pointer to an arbitrary struct of which the first field is a
 pointer to an AVClass struct.
 @param level The importance level of the message, lower values signifying
 higher importance.
 @param fmt The format string (printf-compatible) that specifies how
 subsequent arguments are converted to output.
 @see av_vlog

</member>
<member name="M:libffmpeg.av_log_format_line(System.Void*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.Int32*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="150">
Format a line of log the same way as the default callback.
@param line          buffer to receive the formated line
@param line_size     size of the buffer
@param print_prefix  used to store whether the prefix must be printed;
                     must point to a persistent integer initially set to 1

</member>
<member name="M:libffmpeg.av_log_set_flags(System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\log.h" line="160">
av_dlog macros
Useful to print debug messages that shouldn't get compiled in normally.

Skip repeated messages, this requires the user app to use av_log() instead of
(f)printf as the 2 would otherwise interfere and lead to
"Last message repeated x times" messages below (f)printf messages with some
bad luck.
Also to receive the last, "last repeated" line if any, the user app must
call av_log(NULL, AV_LOG_QUIET, "%s", ""); at the end

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.PixelFormat'. -->
<member name="M:libffmpeg.av_x_if_null(System.Void!System.Runtime.CompilerServices.IsConst*,System.Void!System.Runtime.CompilerServices.IsConst*)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="336">
Return x default pointer in case p is NULL.

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\avutil.h" line="344">
@}
@}

all in native-endian format

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="44">
Return the name of sample_fmt, or NULL if sample_fmt is not
recognized.

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="50">
Return a sample format corresponding to name, or AV_SAMPLE_FMT_NONE
on error.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVSampleFormat'. -->
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="64">
 Generate a string corresponding to the sample format with
 sample_fmt, or a header if sample_fmt is negative.

 @param buf the buffer where to write the string
 @param buf_size the size of buf
 @param sample_fmt the number of the sample format to print the
 corresponding info string, or a negative value to print the
 corresponding header.
 @return the pointer to the filled buffer or NULL if sample_fmt is
 unknown or in case of other errors

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="79">
@deprecated Use av_get_bytes_per_sample() instead.

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="86">
 Return number of bytes per sample.

 @param sample_fmt the sample format
 @return number of bytes per sample or zero if unknown for the given
 sample format

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="95">
 Check if the sample format is planar.

 @param sample_fmt the sample format to inspect
 @return 1 if the sample format is planar, 0 if it is interleaved

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="103">
 Get the required buffer size for the given audio parameters.

 @param[out] linesize calculated linesize, may be NULL
 @param nb_channels   the number of channels
 @param nb_samples    the number of samples in a single channel
 @param sample_fmt    the sample format
 @return              required buffer size, or negative error code on failure

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\samplefmt.h" line="115">
 Fill channel data pointers and linesize for samples with sample
 format sample_fmt.

 The pointers array is filled with the pointers to the samples data:
 for planar, set the start point of each channel's data within the buffer,
 for packed, set the start point of the entire buffer only.

 The linesize array is filled with the aligned size of each channel's data
 buffer for planar layout, or the aligned size of the buffer for all channels
 for packed layout.

 @param[out] audio_data  array to be filled with the pointer for each channel
 @param[out] linesize    calculated linesize
 @param buf              the pointer to a buffer containing the samples
 @param nb_channels      the number of channels
 @param nb_samples       the number of samples in a single channel
 @param sample_fmt       the sample format
 @param align            buffer size alignment (1 = no alignment required)
 @return                 0 on success or a negative error code on failure

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVSampleFormat'. -->
<member name="M:libffmpeg.av_get_cpu_flags" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\cpu.h" line="46">
Return the flags which specify extensions supported by the CPU.

</member>
<member name="M:libffmpeg.av_force_cpu_flags(System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\cpu.h" line="52">
Disables cpu detection and forces the specified flags.

</member>
<member name="M:libffmpeg.av_dict_get(libffmpeg.AVDictionary*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVDictionaryEntry!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\dict.h" line="84">
 Get a dictionary entry with matching key.

 @param prev Set to the previous matching element to find the next.
             If set to NULL the first matching element is returned.
 @param flags Allows case as well as suffix-insensitive comparisons.
 @return Found entry or NULL, changing key or value leads to undefined behavior.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_dict_set(libffmpeg.AVDictionary**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)'. -->
<member name="M:libffmpeg.av_dict_copy(libffmpeg.AVDictionary**,libffmpeg.AVDictionary*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\dict.h" line="107">
Copy entries from one AVDictionary struct into another.
@param dst pointer to a pointer to a AVDictionary struct. If *dst is NULL,
           this function will allocate a struct for you and put it in *dst
@param src pointer to source AVDictionary struct
@param flags flags to use when setting entries in *dst
@note metadata is read using the AV_DICT_IGNORE_SUFFIX flag

</member>
<member name="M:libffmpeg.av_dict_free(libffmpeg.AVDictionary**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\dict.h" line="117">
Free all the memory allocated for an AVDictionary struct
and all keys and values.

</member>
<member name="T:libffmpeg.CodecID" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\dict.h" line="123">
@}

Those FF_API_* defines are not part of public API.
They may change, break or disappear at any time.

 @defgroup libavc Encoding/Decoding Library
 @{

 @defgroup lavc_decoding Decoding
 @{
 @}

 @defgroup lavc_encoding Encoding
 @{
 @}

 @defgroup lavc_codec Codecs
 @{
 @defgroup lavc_codec_native Native Codecs
 @{
 @}
 @defgroup lavc_codec_wrappers External library wrappers
 @{
 @}
 @defgroup lavc_codec_hwaccel Hardware Accelerators bridge
 @{
 @}
 @}
 @defgroup lavc_internal Internal
 @{
 @}
 @}


 Identify the syntax and semantics of the bitstream.
 The principle is roughly:
 Two decoders with the same ID can decode the same streams.
 Two encoders with the same ID can encode compatible streams.
 There may be slight deviations from the principle due to implementation
 details.

 If you add a codec ID to this list, add it so that
 1. no value of a existing codec ID changes (that would break ABI),
 2. Give it a value which when taken as ASCII is recognized uniquely by a human as this specific codec.
    This ensures that 2 forks can independantly add CodecIDs without producing conflicts.

</member>
<member name="M:libffmpeg.av_get_channel_layout(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\audioconvert.h" line="27">
@file
audio conversion routines

@addtogroup lavu_audio
@{

@defgroup channel_masks Audio channel masks
@{

Channel mask value used for AVCodecContext.request_channel_layout
    to indicate that the user requests the channel order of the decoder output
    to be the native codec channel order. 
@}
@defgroup channel_mask_c Audio channel convenience macros
@{

@}

 * Return a channel layout id that matches name, 0 if no match.
 * name can be one or several of the following notations,
 * separated by '+' or '|':
 * - the name of an usual channel layout (mono, stereo, 4.0, quad, 5.0,
 *   5.0(side), 5.1, 5.1(side), 7.1, 7.1(wide), downmix);
 * - the name of a single channel (FL, FR, FC, LFE, BL, BR, FLC, FRC, BC,
 *   SL, SR, TC, TFL, TFC, TFR, TBL, TBC, TBR, DL, DR);
 * - a number of channels, in decimal, optionnally followed by 'c', yielding
 *   the default channel layout for that number of channels (@see
 *   av_get_default_channel_layout);
 * - a channel layout mask, in hexadecimal starting with "0x" (see the
 *   AV_CH_* macros).
 + Example: "stereo+FC" = "2+FC" = "2c+1c" = "0x7"

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_get_channel_layout_string(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.Int32,System.UInt64)'. -->
<member name="M:libffmpeg.av_get_channel_layout_nb_channels(System.UInt64)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\audioconvert.h" line="133">
Return the number of channels in the channel layout.

</member>
<member name="M:libffmpeg.av_get_default_channel_layout(System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavutil\audioconvert.h" line="138">
Return default channel layout for a given number of channels.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.Motion_Est_ID'. -->
<member name="T:libffmpeg.AVChromaLocation" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="591">
X   X      3 4 X      X are luma samples,
           1 2        1-6 are possible chroma positions
X   X      5 6 X      0 is undefined/unknown position

</member>
<member name="T:libffmpeg.AVLPCType" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="608">
LPC analysis type

</member>
<member name="T:libffmpeg.AVPanScan" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="653">
The parent program guarantees that the input for B-frames containing
streams is not written to for at least s-&gt;max_b_frames+1 frames, if
this is not set the input will be copied.

@defgroup deprecated_flags Deprecated codec flags
Use corresponding private codec options instead.
@{

@}

Codec uses get_buffer() for allocating buffers and supports custom allocators.
If not set, it might not use get_buffer() at all or use operations that
assume the buffer was allocated by avcodec_default_get_buffer.

 Encoder or decoder requires flushing with NULL input at the end in order to
 give the complete and correct output.

 NOTE: If this flag is not set, the codec is guaranteed to never be fed with
       with NULL data. The user can still send NULL data to the public encode
       or decode function, but libavcodec will not pass it along to the codec
       unless this flag is set.

 Decoders:
 The decoder has a non-zero delay and needs to be fed with avpkt-&gt;data=NULL,
 avpkt-&gt;size=0 at the end to get the delayed data until the decoder no longer
 returns frames.

 Encoders:
 The encoder needs to be fed with NULL data at the end of encoding until the
 encoder no longer returns data.

 NOTE: For encoders implementing the AVCodec.encode2() function, setting this
       flag also means that the encoder must set the pts and duration for
       each output packet. If this flag is not set, the pts and duration will
       be determined by libavcodec from the input frame.

Codec can be fed a final frame with a smaller size.
This can be used to prevent truncation of the last audio samples.

Codec can export data for HW decoding (VDPAU).

Codec can output multiple frames per AVPacket
Normally demuxers return one frame at a time, demuxers which do not do
are connected to a parser to split what they return into proper frames.
This flag is reserved to the very rare category of codecs which have a
bitstream that cannot be split into frames without timeconsuming
operations like full decoding. Demuxers carring such bitstreams thus
may return multiple frames in a packet. This has many disadvantages like
prohibiting stream copy in many cases thus it should only be considered
as a last resort.

Codec is experimental and is thus avoided in favor of non experimental
encoders

Codec should fill in channel configuration and samplerate instead of container

Codec is able to deal with negative linesizes

Codec supports frame-level multithreading.

Codec supports slice-based (or partition-based) multithreading.

Codec supports changed parameters at any point.

Codec supports avctx-&gt;thread_count == 0 (auto).

Audio encoder supports receiving a different number of samples in each call.

Codec is lossless.

Pan Scan area.
This specifies the area which should be displayed.
Note there may be multiple such areas for one frame.

</member>
<member name="F:libffmpeg.AVPanScan.id" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="864">
id
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVPanScan.width" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="871">
width and height in 1/16 pel
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVPanScan.position" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="879">
position of the top left corner in 1/16 pel for up to 3 fields/frames
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVPacket.pts" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="920">
Presentation timestamp in AVStream-&gt;time_base units; the time at which
the decompressed packet will be presented to the user.
Can be AV_NOPTS_VALUE if it is not stored in the file.
pts MUST be larger or equal to dts as presentation cannot happen before
decompression, unless one wants to view hex dumps. Some formats misuse
the terms dts and pts/cts to mean something different. Such timestamps
must be converted to true pts/dts before they are stored in AVPacket.

</member>
<member name="F:libffmpeg.AVPacket.dts" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="930">
Decompression timestamp in AVStream-&gt;time_base units; the time at which
the packet is decompressed.
Can be AV_NOPTS_VALUE if it is not stored in the file.

</member>
<member name="F:libffmpeg.AVPacket.flags" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="939">
A combination of AV_PKT_FLAG values

</member>
<member name="F:libffmpeg.AVPacket.duration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="954">
Duration of this packet in AVStream-&gt;time_base units, 0 if unknown.
Equals next_pts - this_pts in presentation order.

</member>
<member name="F:libffmpeg.AVPacket.convergence_duration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="963">
 Time difference in AVStream-&gt;time_base units from the pts of this
 packet to the point at which the output from the decoder has converged
 independent from the availability of previous frames. That is, the
 frames are virtually identical no matter if decoding started from
 the very first frame or from this keyframe.
 Is AV_NOPTS_VALUE if unknown.
 This field is not the display duration of the current packet.
 This field has no meaning if the packet does not have AV_PKT_FLAG_KEY
 set.

 The purpose of this field is to allow seeking in streams that have no
 keyframes in the conventional sense. It corresponds to the
 recovery point SEI in H.264 and match_time_delta in NUT. It is also
 essential for some types of subtitle streams to ensure that all
 subtitles are correctly displayed after seeking.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVSideDataParamChangeFlags'. -->
<member name="T:libffmpeg.AVFrame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1006">
Audio Video Frame.
New fields can be added to the end of AVFRAME with minor version
bumps. Similarly fields that are marked as to be only accessed by
av_opt_ptr() can be reordered. This allows 2 forks to add fields
without breaking compatibility with each other.
Removal, reordering and changes in the remaining cases require
a major version bump.
sizeof(AVFrame) must not be used outside libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.data" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1022">
pointer to the picture/channel planes.
This might be different from the first allocated byte
- encoding: Set by user
- decoding: set by AVCodecContext.get_buffer()

</member>
<member name="F:libffmpeg.AVFrame.linesize" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1030">
 Size, in bytes, of the data for each picture/channel plane.

 For audio, only linesize[0] may be set. For planar audio, each channel
 plane must be the same size.

 - encoding: Set by user (video only)
 - decoding: set by AVCodecContext.get_buffer()

</member>
<member name="F:libffmpeg.AVFrame.base" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1041">
pointer to the first allocated byte of the picture. Can be used in get_buffer/release_buffer.
This isn't used by libavcodec unless the default get/release_buffer() is used.
- encoding:
- decoding:

</member>
<member name="F:libffmpeg.AVFrame.key_frame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1048">
1 -&gt; keyframe, 0-&gt; not
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="T:libffmpeg.AVPictureType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1055">
Picture type of the frame, see ?_TYPE below.
- encoding: Set by libavcodec. for coded_picture (and set by user for input).
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.pts" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1062">
presentation timestamp in time_base units (time when frame should be shown to user)
If AV_NOPTS_VALUE then frame_rate = 1/time_base will be assumed.
- encoding: MUST be set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.coded_picture_number" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1070">
picture number in bitstream order
- encoding: set by
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.display_picture_number" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1076">
picture number in display order
- encoding: set by
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.quality" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1083">
quality (between 1 (good) and FF_LAMBDA_MAX (bad))
- encoding: Set by libavcodec. for coded_picture (and set by user for input).
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.age" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1091">
@deprecated unused

</member>
<member name="F:libffmpeg.AVFrame.reference" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1097">
is this picture used as reference
The values for this are the same as the MpegEncContext.picture_structure
variable, that is 1-&gt;top field, 2-&gt;bottom field, 3-&gt;frame/both fields.
Set to 4 for delayed, non-reference frames.
- encoding: unused
- decoding: Set by libavcodec. (before get_buffer() call)).

</member>
<member name="F:libffmpeg.AVFrame.qscale_table" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1107">
QP table
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.qstride" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1113">
QP store stride
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.mbskip_table" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1120">
mbskip_table[mb]&gt;=1 if MB didn't change
stride= mb_width = (width+15)&gt;&gt;4
- encoding: unused
- decoding: Set by libavcodec.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVFrame.motion_val'. -->
<member name="F:libffmpeg.AVFrame.mb_type" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1142">
macroblock type table
mb_type_base + mb_width + 2
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.motion_subsample_log2" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1150">
log2 of the size of the block which a single vector in motion_val represents:
(4-&gt;16x16, 3-&gt;8x8, 2-&gt; 4x4, 1-&gt; 2x2)
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.opaque" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1158">
for some private data of the user
- encoding: unused
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVFrame.error'. -->
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVFrame.type'. -->
<member name="F:libffmpeg.AVFrame.repeat_pict" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1180">
When decoding, this signals how much the picture must be delayed.
extra_delay = repeat_pict / (2*fps)
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.qscale_type" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1188">


</member>
<member name="F:libffmpeg.AVFrame.interlaced_frame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1193">
The content of the picture is interlaced.
- encoding: Set by user.
- decoding: Set by libavcodec. (default 0)

</member>
<member name="F:libffmpeg.AVFrame.top_field_first" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1200">
If the content is interlaced, is top field displayed first.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.pan_scan" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1207">
Pan scan.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.palette_has_changed" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1214">
Tell user application that palette has changed from previous frame.
- encoding: ??? (no palette-enabled encoder yet)
- decoding: Set by libavcodec. (default 0).

</member>
<member name="F:libffmpeg.AVFrame.buffer_hints" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1221">
codec suggestion on buffer type if != 0
- encoding: unused
- decoding: Set by libavcodec. (before get_buffer() call)).

</member>
<member name="F:libffmpeg.AVFrame.dct_coeff" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1228">
DCT coefficients
- encoding: unused
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.ref_index" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1235">
motion reference frame index
the order in which these are stored can depend on the codec.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.reordered_opaque" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1243">
reordered opaque 64bit (generally an integer or a double precision float
PTS but can be anything).
The user sets AVCodecContext.reordered_opaque to represent the input at
that time,
the decoder reorders values as needed and sets AVFrame.reordered_opaque
to exactly one of the values provided by the user through AVCodecContext.reordered_opaque
@deprecated in favor of pkt_pts
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.hwaccel_picture_private" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1256">
hardware accelerator private data (FFmpeg-allocated)
- encoding: unused
- decoding: Set by libavcodec

</member>
<member name="F:libffmpeg.AVFrame.pkt_pts" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1263">
reordered pts from the last AVPacket that has been input into the decoder
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.pkt_dts" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1270">
dts from the last AVPacket that has been input into the decoder
- encoding: unused
- decoding: Read by user.

</member>
<member name="T:libffmpeg.AVCodecContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1277">
the AVCodecContext which ff_thread_get_buffer() was last called on
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.thread_opaque" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1284">
used by multithreading to store frame-specific info
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVFrame.nb_samples" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1291">
number of audio samples (per channel) described by this frame
- encoding: unused
- decoding: Set by libavcodec

</member>
<member name="F:libffmpeg.AVFrame.extended_data" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1298">
 pointers to the data planes/channels.

 For video, this should simply point to data[].

 For planar audio, each channel has a separate data pointer, and
 linesize[0] contains the size of each channel buffer.
 For packed audio, there is just one data pointer, and linesize[0]
 contains the total size of the buffer for all channels.

 Note: Both data and extended_data will always be set by get_buffer(),
 but for planar audio with more channels that can fit in data,
 extended_data must be used by the decoder in order to access all
 channels.

 encoding: unused
 decoding: set by AVCodecContext.get_buffer()

</member>
<member name="F:libffmpeg.AVFrame.sample_aspect_ratio" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1318">
sample aspect ratio for the video frame, 0/1 if unknown\unspecified
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.width" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1325">
width and height of the video frame
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.format" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1332">
format of the frame, -1 if unknown or unset
Values correspond to enum PixelFormat for video frames,
enum AVSampleFormat for audio)
- encoding: unused
- decoding: Read by user.

</member>
<member name="F:libffmpeg.AVFrame.best_effort_timestamp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1341">
frame timestamp estimated using various heuristics, in stream time base
Code outside libavcodec should access this field using:
 av_opt_ptr(avcodec_get_frame_class(), frame, "best_effort_timestamp");
- encoding: unused
- decoding: set by libavcodec, read by user.

</member>
<member name="F:libffmpeg.AVFrame.pkt_pos" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1350">
reordered pos from the last AVPacket that has been input into the decoder
Code outside libavcodec should access this field using:
 av_opt_ptr(avcodec_get_frame_class(), frame, "pkt_pos");
- encoding: unused
- decoding: Read by user.

</member>
<member name="T:libffmpeg.AVCodecContext" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1372">
main external API structure.
New fields can be added to the end with minor version bumps.
Removal, reordering and changes to existing fields require a major
version bump.
Please use AVOptions (av_opt* / av_set/get*()) to access these fields from user
applications.
sizeof(AVCodecContext) must not be used outside libav*.

</member>
<member name="F:libffmpeg.AVCodecContext.av_class" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1382">
information on struct for av_log
- set by avcodec_alloc_context3

</member>
<member name="F:libffmpeg.AVCodecContext.bit_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1387">
the average bitrate
- encoding: Set by user; unused for constant quantizer encoding.
- decoding: Set by libavcodec. 0 or some bitrate if this info is available in the stream.

</member>
<member name="F:libffmpeg.AVCodecContext.bit_rate_tolerance" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1394">
number of bits the bitstream is allowed to diverge from the reference.
          the reference can be CBR (for CBR pass1) or VBR (for pass2)
- encoding: Set by user; unused for constant quantizer encoding.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.flags" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1402">
CODEC_FLAG_*.
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.sub_id" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1409">
Some codecs need additional format info. It is stored here.
If any muxer uses this then ALL demuxers/parsers AND encoders for the
specific codec MUST set it correctly otherwise stream copy breaks.
In general use of this field by muxers is not recommended.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec. (FIXME: Is this OK?)

</member>
<member name="F:libffmpeg.AVCodecContext.me_method" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1419">
Motion estimation algorithm used for video coding.
1 (zero), 2 (full), 3 (log), 4 (phods), 5 (epzs), 6 (x1), 7 (hex),
8 (umh), 9 (iter), 10 (tesa) [7, 8, 10 are x264 specific, 9 is snow specific]
- encoding: MUST be set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.extradata" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1428">
some codecs need / can use extradata like Huffman tables.
mjpeg: Huffman tables
rv10: additional flags
mpeg4: global headers (they can be in the bitstream or here)
The allocated memory should be FF_INPUT_BUFFER_PADDING_SIZE bytes larger
than extradata_size to avoid prolems if it is read with the bitstream reader.
The bytewise contents of extradata must not depend on the architecture or CPU endianness.
- encoding: Set/allocated/freed by libavcodec.
- decoding: Set/allocated/freed by user.

</member>
<member name="F:libffmpeg.AVCodecContext.time_base" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1442">
This is the fundamental unit of time (in seconds) in terms
of which frame timestamps are represented. For fixed-fps content,
timebase should be 1/framerate and timestamp increments should be
identically 1.
- encoding: MUST be set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.width" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1453">
picture width / height.
- encoding: MUST be set by user.
- decoding: Set by libavcodec.
Note: For compatibility it is possible to set this instead of
coded_width/height before decoding.

</member>
<member name="F:libffmpeg.AVCodecContext.gop_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1464">
the number of pictures in a group of pictures, or 0 for intra_only
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1471">
Pixel format, see PIX_FMT_xxx.
May be set by the demuxer if known from headers.
May be overriden by the decoder if it knows better.
- encoding: Set by user.
- decoding: Set by user if known, overridden by libavcodec if known

</member>
<member name="T:libffmpeg.AVCodecContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1480">
If non NULL, 'draw_horiz_band' is called by the libavcodec
decoder to draw a horizontal band. It improves cache usage. Not
all codecs can do that. You must check the codec capabilities
beforehand.
When multithreading is used, it may be called from multiple threads
at the same time; threads might draw different parts of the same AVFrame,
or multiple AVFrames, and there is no guarantee that slices will be drawn
in order.
The function is also used by hardware acceleration APIs.
It is called at least once during frame decoding to pass
the data needed for hardware render.
In that mode instead of pixel data, AVFrame points to
a structure specific to the acceleration API. The application
reads the structure and can change some fields to indicate progress
or mark state.
- encoding: unused
- decoding: Set by user.
@param height the height of the slice
@param y the y position of the slice
@param type 1-&gt;top field, 2-&gt;bottom field, 3-&gt;frame
@param offset offset into the AVFrame.data from which the slice should be read

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1511">
audio sample format
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.frame_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1519">
Samples per packet, initialized when calling 'init'.

</member>
<member name="F:libffmpeg.AVCodecContext.delay" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1525">
Encoding: Number of frames delay there will be from the encoder input to
          the decoder output. (we assume the decoder matches the spec)
Decoding: Number of frames delay in addition to what a standard decoder
          as specified in the spec would produce.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.qmin" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1539">
minimum quantizer
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.qmax" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1546">
maximum quantizer
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_qdiff" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1553">
maximum quantizer difference between frames
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_b_frames" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1560">
maximum number of B-frames between non-B-frames
Note: The output will be delayed by max_b_frames+1 relative to the input.
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.b_quant_factor'. -->
<member name="F:libffmpeg.AVCodecContext.rc_strategy" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1577">
obsolete FIXME remove 
</member>
<member name="F:libffmpeg.AVCodecContext.frame_bits" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1613">
number of bits used for the previously encoded frame
- encoding: Set by libavcodec.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.opaque" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1620">
Private data of the user, can be used to carry app specific stuff.
- encoding: Set by user.
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.codec_tag'. -->
<member name="F:libffmpeg.AVCodecContext.workaround_bugs" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1646">
Work around bugs in encoders which sometimes cannot be detected automatically.
- encoding: Set by user
- decoding: Set by user

</member>
<member name="F:libffmpeg.AVCodecContext.luma_elim_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1670">
luma single coefficient elimination threshold
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.chroma_elim_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1677">
chroma single coeff elimination threshold
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.strict_std_compliance" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1684">
strictly follow the standard (MPEG4, ...).
- encoding: Set by user.
- decoding: Set by user.
Setting this to STRICT or higher means the encoder and decoder will
generally do stupid things, whereas setting it to unofficial or lower
will mean the encoder might produce output that is not supported by all
spec-compliant decoders. Decoders don't differentiate between normal,
unofficial and experimental (that is, they always try to decode things
when they can) unless they are explicitly asked to behave stupidly
(=strictly conform to the specs)

</member>
<member name="F:libffmpeg.AVCodecContext.b_quant_offset" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1703">
qscale offset between IP and B-frames
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.error_recognition" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1711">
Error recognition; higher values will detect more errors but may
misdetect some more or less valid parts as errors.
- encoding: unused
- decoding: Set by user.

</member>
<member name="T:libffmpeg.AVCodecContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1725">
 Called at the beginning of each frame to get a buffer for it.

 The function will set AVFrame.data[], AVFrame.linesize[].
 AVFrame.extended_data[] must also be set, but it should be the same as
 AVFrame.data[] except for planar audio with more channels than can fit
 in AVFrame.data[]. In that case, AVFrame.data[] shall still contain as
 many data pointers as it can hold.

 if CODEC_CAP_DR1 is not set then get_buffer() must call
 avcodec_default_get_buffer() instead of providing buffers allocated by
 some other means.

 AVFrame.data[] should be 32- or 16-byte-aligned unless the CPU doesn't
 need it. avcodec_default_get_buffer() aligns the output buffer properly,
 but if get_buffer() is overridden then alignment considerations should
 be taken into account.

 @see avcodec_default_get_buffer()

 Video:

 If pic.reference is set then the frame will be read later by libavcodec.
 avcodec_align_dimensions2() should be used to find the required width and
 height, as they normally need to be rounded up to the next multiple of 16.

 If frame multithreading is used and thread_safe_callbacks is set,
 it may be called from a different thread, but not from more than one at
 once. Does not need to be reentrant.

 @see release_buffer(), reget_buffer()
 @see avcodec_align_dimensions2()

 Audio:

 Decoders request a buffer of a particular size by setting
 AVFrame.nb_samples prior to calling get_buffer(). The decoder may,
 however, utilize only part of the buffer by setting AVFrame.nb_samples
 to a smaller value in the output frame.

 Decoders cannot use the buffer after returning from
 avcodec_decode_audio4(), so they will not call release_buffer(), as it
 is assumed to be released immediately upon return.

 As a convenience, av_samples_get_buffer_size() and
 av_samples_fill_arrays() in libavutil may be used by custom get_buffer()
 functions to find the required data size and to fill data pointers and
 linesize. In AVFrame.linesize, only linesize[0] may be set for audio
 since all planes must be the same size.

 @see av_samples_get_buffer_size(), av_samples_fill_arrays()

 - encoding: unused
 - decoding: Set by libavcodec, user can override.

</member>
<member name="T:libffmpeg.AVCodecContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1782">
Called to release buffers which were allocated with get_buffer.
A released buffer can be reused in get_buffer().
pic.data[*] must be set to NULL.
May be called from a different thread if frame multithreading is used,
but not by more than one thread at once, so does not need to be reentrant.
- encoding: unused
- decoding: Set by libavcodec, user can override.

</member>
<member name="F:libffmpeg.AVCodecContext.has_b_frames" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1793">
Size of the frame reordering buffer in the decoder.
For MPEG-2 it is 1 IPB or 0 low delay IP.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.block_align" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1801">
number of bytes per packet if constant and known or 0
Used by some WAV based audio codecs.

</member>
<member name="F:libffmpeg.AVCodecContext.parse_only" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1808">
If true, only parsing is done. The frame data is returned.
Only MPEG audio decoders support this now.
- encoding: unused
- decoding: Set by user

</member>
<member name="F:libffmpeg.AVCodecContext.mpeg_quant" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1817">
0-&gt; h263 quant 1-&gt; mpeg quant
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.stats_out" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1824">
pass1 encoding statistics output buffer
- encoding: Set by libavcodec.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.stats_in" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1831">
pass2 encoding statistics input buffer
Concatenated stuff from stats_out of pass1 should be placed here.
- encoding: Allocated/set/freed by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_qsquish" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1839">
ratecontrol qmin qmax limiting method
0-&gt; clipping, 1-&gt; use a nice continous function to limit qscale wthin qmin/qmax.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_override" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1850">
ratecontrol override, see RcOverride
- encoding: Allocated/set/freed by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_eq" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1858">
rate control equation
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_max_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1865">
maximum bitrate
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_min_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1872">
minimum bitrate
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_buffer_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1879">
decoder bitstream buffer size
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.i_quant_factor'. -->
<member name="F:libffmpeg.AVCodecContext.i_quant_offset" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1896">
qscale offset between P and I-frames
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_initial_cplx" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1903">
initial complexity for pass1 ratecontrol
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.dct_algo" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1910">
DCT algorithm, see FF_DCT_* below
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lumi_masking" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1924">
luminance masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.temporal_cplx_masking" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1931">
temporary complexity masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.spatial_cplx_masking" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1938">
spatial complexity masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.p_masking" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1945">
p block masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.dark_masking" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1952">
darkness masking (0-&gt; disabled)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.idct_algo" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1959">
IDCT algorithm, see FF_IDCT_* below.
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.slice_count" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1991">
slice count
- encoding: Set by libavcodec.
- decoding: Set by user (or 0).

</member>
<member name="F:libffmpeg.AVCodecContext.slice_offset" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="1997">
slice offsets in the frame in bytes
- encoding: Set/allocated by libavcodec.
- decoding: Set/allocated by user (or NULL).

</member>
<member name="F:libffmpeg.AVCodecContext.error_concealment" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2004">
error concealment flags
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.dsp_mask" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2013">
 dsp_mask could be add used to disable unwanted CPU features
 CPU features (i.e. MMX, SSE. ...)

 With the FORCE flag you may instead enable given CPU features.
 (Dangerous: Usable in case of misdetection, improper usage however will
 result into program crash.)

</member>
<member name="F:libffmpeg.AVCodecContext.bits_per_coded_sample" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2023">
bits per sample/pixel from the demuxer (needed for huffyuv).
- encoding: Set by libavcodec.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.prediction_method" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2030">
prediction method (needed for huffyuv)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.sample_aspect_ratio" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2040">
sample aspect ratio (0 if unknown)
That is the width of a pixel divided by the height of the pixel.
Numerator and denominator must be relatively prime and smaller than 256 for some video standards.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.coded_frame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2049">
the picture in the bitstream
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.debug" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2056">
debug
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.debug_mv" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2080">
debug
- encoding: Set by user.
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.error'. -->
<member name="F:libffmpeg.AVCodecContext.me_cmp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2097">
motion estimation comparison function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.me_sub_cmp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2103">
subpixel motion estimation comparison function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_cmp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2109">
macroblock comparison function (not supported yet)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.ildct_cmp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2115">
interlaced DCT comparison function
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.dia_size'. -->
<member name="F:libffmpeg.AVCodecContext.last_predictor_count" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2145">
amount of previous MV predictors (2a+1 x 2a+1 square)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.pre_me" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2152">
prepass for motion estimation
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.me_pre_cmp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2159">
motion estimation prepass comparison function
- encoding: Set by user.
- decoding: unused

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.pre_dia_size'. -->
<member name="F:libffmpeg.AVCodecContext.me_subpel_quality" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2173">
subpel ME quality
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2180">
callback to negotiate the pixelFormat
@param fmt is the list of formats which are supported by the codec,
it is terminated by -1 as 0 is a valid format, the formats are ordered by quality.
The first is always the native one.
@return the chosen format
- encoding: unused
- decoding: Set by user, if not set the native format will be chosen.

</member>
<member name="F:libffmpeg.AVCodecContext.dtg_active_format" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2191">
 DTG active format information (additional aspect ratio
 information only used in DVB MPEG-2 transport streams)
 0 if not set.

 - encoding: unused
 - decoding: Set by decoder.

</member>
<member name="F:libffmpeg.AVCodecContext.me_range" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2208">
 maximum motion estimation search range in subpel units
 If 0 then no limit.

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.intra_quant_bias" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2217">
intra quantizer bias
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.inter_quant_bias" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2225">
inter quantizer bias
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.color_table_id" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2232">
color table ID
- encoding: unused
- decoding: Which clrtable should be used for 8bit RGB images.
            Tables have to be stored somewhere. FIXME

</member>
<member name="F:libffmpeg.AVCodecContext.internal_buffer_count" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2241">
internal_buffer count
Don't touch, used by libavcodec default_get_buffer().
@deprecated this field was moved to an internal context

</member>
<member name="F:libffmpeg.AVCodecContext.internal_buffer" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2248">
internal_buffers
Don't touch, used by libavcodec default_get_buffer().
@deprecated this field was moved to an internal context

</member>
<member name="F:libffmpeg.AVCodecContext.global_quality" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2256">
Global quality for codecs which cannot change it per frame.
This should be proportional to MPEG-1/2/4 qscale.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.coder_type" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2269">
coder type
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.context_model" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2276">
context model
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.slice_flags" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2291">
slice flags
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.xvmc_acceleration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2301">
XVideo Motion Acceleration
- encoding: forbidden
- decoding: set by decoder

</member>
<member name="F:libffmpeg.AVCodecContext.mb_decision" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2308">
macroblock decision mode
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.intra_matrix" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2318">
custom intra quantization matrix
- encoding: Set by user, can be NULL.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.inter_matrix" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2325">
custom inter quantization matrix
- encoding: Set by user, can be NULL.
- decoding: Set by libavcodec.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.stream_codec_tag'. -->
<member name="F:libffmpeg.AVCodecContext.scenechange_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2340">
scene change detection threshold
0 is default, larger means fewer detected scene changes.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lmin" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2348">
minimum Lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lmax" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2355">
maximum Lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.AVPaletteControl" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2363">
palette control structure
- encoding: ??? (no palette-enabled encoder yet)
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.noise_reduction" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2371">
noise reduction strength
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.AVCodecContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2378">
Called at the beginning of a frame to get cr buffer for it.
Buffer type (size, hints) must be the same. libavcodec won't check it.
libavcodec will pass previous buffer in pic, function should return
same buffer or new buffer with old frame "painted" into it.
If pic.data[0] == NULL must behave like get_buffer().
if CODEC_CAP_DR1 is not set then reget_buffer() must call
avcodec_default_reget_buffer() instead of providing buffers allocated by
some other means.
- encoding: unused
- decoding: Set by libavcodec, user can override.

</member>
<member name="F:libffmpeg.AVCodecContext.rc_initial_buffer_occupancy" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2392">
Number of bits which should be loaded into the rc buffer before decoding starts.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.inter_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2399">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.flags2" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2406">
CODEC_FLAG2_*
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.error_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2413">
Simulates errors in the bitstream to test error concealment.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.antialias_algo" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2421">
MP3 antialias algorithm, see FF_AA_* below.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.quantizer_noise_shaping" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2433">
quantizer noise shaping
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.thread_count" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2440">
thread count
is used to decide how many independent tasks should be passed to execute()
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="T:libffmpeg.AVCodecContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2448">
The codec may call this to execute several independent things.
It will return only after finishing all tasks.
The user may replace this with some multithreaded implementation,
the default implementation will execute the parts serially.
@param count the number of things to execute
- encoding: Set by libavcodec, user can override.
- decoding: Set by libavcodec, user can override.

</member>
<member name="F:libffmpeg.AVCodecContext.thread_opaque" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2459">
thread opaque
Can be used by execute() to store some per AVCodecContext stuff.
- encoding: set by execute()
- decoding: set by execute()

</member>
<member name="F:libffmpeg.AVCodecContext.me_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2467">
 Motion estimation threshold below which no motion estimation is
 performed, but instead the user specified motion vectors are used.

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2476">
Macroblock threshold below which the user specified macroblock types will be used.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.intra_dc_precision" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2483">
precision of the intra DC coefficient - 8
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.nsse_weight" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2490">
noise vs. sse weight for the nsse comparsion function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.skip_top" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2497">
Number of macroblock rows at the top which are skipped.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.skip_bottom" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2504">
Number of macroblock rows at the bottom which are skipped.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.profile" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2511">
profile
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.level" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2577">
level
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.lowres" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2585">
low resolution decoding, 1-&gt; 1/2 size, 2-&gt;1/4 size
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.coded_width" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2592">
Bitstream width / height, may be different from width/height if lowres enabled.
- encoding: unused
- decoding: Set by user before init if known. Codec should override / dynamically change if needed.

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2599">
frame skip threshold
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_factor" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2606">
frame skip factor
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_exp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2613">
frame skip exponent
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.frame_skip_cmp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2620">
frame skip comparison function
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.border_masking" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2627">
Border processing masking, raises the quantizer for mbs on the borders
of the picture.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_lmin" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2635">
minimum MB lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mb_lmax" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2642">
maximum MB lagrange multipler
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.me_penalty_compensation" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2649">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="T:libffmpeg.AVDiscard" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2656">

 - encoding: unused
 - decoding: Set by user.

</member>
<member name="T:libffmpeg.AVDiscard" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2663">

 - encoding: unused
 - decoding: Set by user.

</member>
<member name="T:libffmpeg.AVDiscard" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2670">

 - encoding: unused
 - decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.bidir_refine" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2677">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.brd_scale" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2684">

 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.crf" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2692">
constant rate factor - quality-based VBR - values ~correspond to qps
- encoding: Set by user.
- decoding: unused
  @deprecated use 'crf' libx264 private option

</member>
<member name="F:libffmpeg.AVCodecContext.cqp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2700">
constant quantization parameter rate control method
- encoding: Set by user.
- decoding: unused
  @deprecated use 'cqp' libx264 private option

</member>
<member name="F:libffmpeg.AVCodecContext.keyint_min" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2709">
minimum GOP size
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.refs" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2716">
number of reference frames
- encoding: Set by user.
- decoding: Set by lavc.

</member>
<member name="F:libffmpeg.AVCodecContext.chromaoffset" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2723">
chroma qp offset from luma
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.bframebias" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2731">
Influence how often B-frames are used.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.trellis" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2739">
trellis RD quantization
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.complexityblur" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2747">
Reduce fluctuations in qp (before curve compression).
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.deblockalpha" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2754">
in-loop deblocking filter alphac0 parameter
alpha is in the range -6...6
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.deblockbeta" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2762">
in-loop deblocking filter beta parameter
beta is in the range -6...6
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.partitions" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2770">
macroblock subpartition sizes to consider - p8x8, p4x4, b8x8, i8x8, i4x4
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.directpred" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2782">
direct MV prediction mode - 0 (none), 1 (spatial), 2 (temporal), 3 (auto)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.cutoff" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2790">
Audio cutoff bandwidth (0 means "automatic")
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.scenechange_factor" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2797">
Multiplied by qscale for each frame and added to scene_change_score.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.mv0_threshold" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2804">

 Note: Value depends upon the compare function used for fullpel ME.
 - encoding: Set by user.
 - decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.b_sensitivity" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2812">
Adjust sensitivity of b_frame_strategy 1.
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.compression_level" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2819">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.min_prediction_order" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2826">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_prediction_order" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2832">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lpc_coeff_precision" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2839">
@name FLAC options
@deprecated Use FLAC encoder private options instead.
@{

LPC coefficient precision - used by FLAC encoder
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.prediction_order_method" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2852">
search method for selecting prediction order
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.min_partition_order" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2859">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.max_partition_order" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2865">
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.timecode_frame_start" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2870">
@}

GOP timecode frame start number
- encoding: Set by user, in non drop frame format
- decoding: Set by libavcodec (timecode in the 25 bits format, -1 if unset)

</member>
<member name="F:libffmpeg.AVCodecContext.request_channels" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2883">
Decoder should decode to this many channels if it can (0 for default)
- encoding: unused
- decoding: Set by user.
@deprecated Deprecated in favor of request_channel_layout.

</member>
<member name="F:libffmpeg.AVCodecContext.drc_scale" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2893">
Percentage of dynamic range compression to be applied by the decoder.
The default value is 1.0, corresponding to full compression.
- encoding: unused
- decoding: Set by user.
@deprecated use AC3 decoder private option instead.

</member>
<member name="F:libffmpeg.AVCodecContext.reordered_opaque" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2903">
opaque 64bit number (generally a PTS) that will be reordered and
output in AVFrame.reordered_opaque
@deprecated in favor of pkt_pts
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.bits_per_raw_sample" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2912">
Bits per sample/pixel of internal libavcodec pixel/sample format.
- encoding: set by user.
- decoding: set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.channel_layout" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2919">
Audio channel layout.
- encoding: set by user.
- decoding: set by user, may be overwritten by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.request_channel_layout" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2926">
Request decoder to use this channel layout if it can (0 for default)
- encoding: unused
- decoding: Set by user.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.rc_max_available_vbv_use'. -->
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecContext.rc_min_vbv_overflow_use'. -->
<member name="T:libffmpeg.AVHWAccel" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2947">
Hardware accelerator in use
- encoding: unused.
- decoding: Set by libavcodec

</member>
<member name="F:libffmpeg.AVCodecContext.ticks_per_frame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2954">
 For some codecs, the time base is closer to the field rate than the frame rate.
 Most notably, H.264 and MPEG-2 specify time_base as half of frame duration
 if no telecine is used ...

 Set to time_base ticks per frame. Default 1, e.g., H.264/MPEG-2 set it to 2.

</member>
<member name="F:libffmpeg.AVCodecContext.hwaccel_context" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2963">
Hardware accelerator context.
For some hardware accelerators, a global context needs to be
provided by the user. In that case, this holds display-dependent
data FFmpeg cannot instantiate itself. Please refer to the
FFmpeg HW accelerator documentation to know how to fill this
is. e.g. for VA API, this is a struct vaapi_context.
- encoding: unused
- decoding: Set by user

</member>
<member name="T:libffmpeg.AVColorPrimaries" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2975">
Chromaticity coordinates of the source primaries.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVColorTransferCharacteristic" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2982">
Color Transfer Characteristic.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVColorSpace" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2989">
YUV colorspace type.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVColorRange" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="2996">
MPEG vs JPEG YUV range.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<member name="T:libffmpeg.AVChromaLocation" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3003">
This defines the location of chroma samples.
- encoding: Set by user
- decoding: Set by libavcodec

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVCodecContext'. -->
<member name="F:libffmpeg.AVCodecContext.weighted_p_pred" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3031">
explicit P-frame weighted prediction analysis method
0: off
1: fast blind weighting (one reference duplicate with -1 offset)
2: smart weighting (full fade detection analysis)
- encoding: Set by user.
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.aq_mode" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3041">
AQ mode
0: Disabled
1: Variance AQ (complexity mask)
2: Auto-variance AQ (experimental)
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.aq_strength" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3051">
AQ strength
Reduces blocking and blurring in flat and textured areas.
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.psy_rd" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3059">
PSY RD
Strength of psychovisual optimization
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.psy_trellis" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3067">
PSY trellis
Strength of psychovisual optimization
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.rc_lookahead" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3075">
RC lookahead
Number of frames for frametype and ratecontrol lookahead
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.crf_max" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3083">
Constant rate factor maximum
With CRF encoding mode and VBV restrictions enabled, prevents quality from being worse
than crf_max, even if doing so would violate VBV restrictions.
- encoding: Set by user.
- decoding: unused

</member>
<member name="T:libffmpeg.AVLPCType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3096">
Determine which LPC analysis algorithm to use.
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.lpc_passes" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3103">
Number of passes to use for Cholesky factorization during LPC analysis
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.slices" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3111">
Number of slices.
Indicates number of picture subdivisions. Used for parallelized
decoding.
- encoding: Set by user
- decoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.subtitle_header" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3120">
Header containing style information for text subtitles.
For SUBTITLE_ASS subtitle type, it should contain the whole ASS
[Script Info] and [V4+ Styles] section, plus the [Events] line and
the Format line following. It shouldn't include any Dialogue line.
- encoding: Set/allocated/freed by user (before avcodec_open2())
- decoding: Set/allocated/freed by libavcodec (by avcodec_open2())

</member>
<member name="F:libffmpeg.AVCodecContext.pkt" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3131">
Current packet as passed into the decoder, to avoid having
to pass the packet into every function. Currently only valid
inside lavc and get/release_buffer callbacks.
- decoding: set by avcodec_decode_*, read by get_buffer() for setting pkt_pts
- encoding: unused

</member>
<member name="F:libffmpeg.AVCodecContext.is_copy" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3141">
 Whether this is a copy of the context which had init() called on it.
 This is used by multithreading - shared tables and picture pointers
 should be freed from the original context only.
 - encoding: Set by libavcodec.
 - decoding: Set by libavcodec.

 @deprecated this field has been moved to an internal context

</member>
<member name="F:libffmpeg.AVCodecContext.thread_type" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3153">
 Which multithreading methods to use.
 Use of FF_THREAD_FRAME will increase decoding delay by one frame per thread,
 so clients which cannot provide future frames should not use it.

 - encoding: Set by user, otherwise the default is used.
 - decoding: Set by user, otherwise the default is used.

</member>
<member name="F:libffmpeg.AVCodecContext.active_thread_type" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3165">
Which multithreading methods are in use by the codec.
- encoding: Set by libavcodec.
- decoding: Set by libavcodec.

</member>
<member name="F:libffmpeg.AVCodecContext.thread_safe_callbacks" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3172">
Set by the client if its custom get_buffer() callback can be called
from another thread, which allows faster multithreaded decoding.
draw_horiz_band() will be called from other threads regardless of this setting.
Ignored if the default get_buffer() is used.
- encoding: Set by user.
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVCodecContext.vbv_delay" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3182">
VBV delay coded in the last frame (in periods of a 27 MHz clock).
Used for compliant TS muxing.
- encoding: Set by libavcodec.
- decoding: unused.

</member>
<member name="T:libffmpeg.AVAudioServiceType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3190">
Type of service that the audio stream conveys.
- encoding: Set by user.
- decoding: Set by libavcodec.

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3197">
desired sample format
- encoding: Not used.
- decoding: Set by user.
Decoder will decode to this format if it can.

</member>
<member name="F:libffmpeg.AVCodecContext.err_recognition" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3205">
Error recognition; may misdetect some more or less valid parts as errors.
- encoding: unused
- decoding: Set by user.

</member>
<member name="T:libffmpeg.AVCodecInternal" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3220">
 Private context used for internal data.

 Unlike priv_data, this is not codec-specific. It is used in general
 libavcodec functions.

</member>
<member name="T:libffmpeg.AVFieldOrder" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3228">
Field order
     * - encoding: set by libavcodec
     * - decoding: Set by libavcodec

</member>
<member name="F:libffmpeg.AVCodecContext.pts_correction_num_faulty_pts" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3234">
Current statistics for PTS correction.
- decoding: maintained and used by libavcodec, not intended to be used by user apps
- encoding: unused

</member>
<member name="T:libffmpeg.AVProfile" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3246">
AVProfile.

</member>
<member name="T:libffmpeg.AVCodec" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3256">
AVCodec.

</member>
<member name="F:libffmpeg.AVCodec.name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3260">
Name of the codec implementation.
The name is globally unique among encoders and among decoders (but an
encoder and a decoder can share the same name).
This is the primary way to find a codec from the user perspective.

</member>
<member name="F:libffmpeg.AVCodec.capabilities" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3274">
Codec capabilities.
see CODEC_CAP_*

</member>
<member name="F:libffmpeg.AVCodec.flush" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3280">
Flush buffers.
Will be called when seeking

</member>
<member name="F:libffmpeg.AVCodec.long_name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3287">
Descriptive name for the codec, meant to be more human readable than name.
You should use the NULL_IF_CONFIG_SMALL() macro to define it.

</member>
<member name="F:libffmpeg.AVCodec.init_thread_copy" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3299">
@name Frame-level threading support functions
@{

If defined, called on thread contexts when they are created.
If the codec allocates writable tables in init(), re-allocate them here.
priv_data will be set to a copy of the original.

</member>
<member name="F:libffmpeg.AVCodec.update_thread_context" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3309">
 Copy necessary context variables from a previous thread context to the current one.
 If not defined, the next thread will start automatically; otherwise, the codec
 must call ff_thread_finish_setup().

 dst and src will (rarely) point to the same context, in which case memcpy should be skipped.

</member>
<member name="F:libffmpeg.AVCodec.defaults" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3317">
@} 
Private codec-specific defaults.

</member>
<member name="T:libffmpeg.AVCodec" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3324">
Initialize codec static data, called from avcodec_register().

</member>
<member name="F:libffmpeg.AVCodec.encode2" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3329">
 Encode data to an AVPacket.

 @param      avctx          codec context
 @param      avpkt          output AVPacket (may contain a user-provided buffer)
 @param[in]  frame          AVFrame containing the raw data to be encoded
 @param[out] got_packet_ptr encoder sets to 0 or 1 to indicate that a
                            non-empty packet was returned in avpkt.
 @return 0 on success, negative error code on failure

</member>
<member name="T:libffmpeg.AVHWAccel" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3343">
AVHWAccel.

</member>
<member name="F:libffmpeg.AVHWAccel.name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3347">
Name of the hardware accelerated codec.
The name is globally unique among encoders and among decoders (but an
encoder and a decoder can share the same name).

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3354">
 Type of codec implemented by the hardware accelerator.

 See AVMEDIA_TYPE_xxx

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3361">
 Codec implemented by the hardware accelerator.

 See CODEC_ID_xxx

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3368">
 Supported pixel format.

 Only hardware accelerated formats are supported here.

</member>
<member name="F:libffmpeg.AVHWAccel.capabilities" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3375">
Hardware accelerated codec capabilities.
see FF_HWACCEL_CODEC_CAP_*

</member>
<member name="F:libffmpeg.AVHWAccel.start_frame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3383">
 Called at the beginning of each frame or field picture.

 Meaningful frame information (codec specific) is guaranteed to
 be parsed at this point. This function is mandatory.

 Note that buf can be NULL along with buf_size set to 0.
 Otherwise, this means the whole frame is available at this point.

 @param avctx the codec context
 @param buf the frame data buffer base
 @param buf_size the size of the frame in bytes
 @return zero if successful, a negative value otherwise

</member>
<member name="F:libffmpeg.AVHWAccel.decode_slice" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3399">
 Callback for each slice.

 Meaningful slice information (codec specific) is guaranteed to
 be parsed at this point. This function is mandatory.

 @param avctx the codec context
 @param buf the slice data buffer base
 @param buf_size the size of the slice in bytes
 @return zero if successful, a negative value otherwise

</member>
<member name="F:libffmpeg.AVHWAccel.end_frame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3412">
 Called at the end of each frame or field picture.

 The whole picture is parsed at this point and can now be sent
 to the hardware accelerator. This function is mandatory.

 @param avctx the codec context
 @return zero if successful, a negative value otherwise

</member>
<member name="F:libffmpeg.AVHWAccel.priv_data_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3423">
 Size of HW accelerator private data.

 Private data is allocated with av_mallocz() before
 AVCodecContext.get_buffer() and deallocated after
 AVCodecContext.release_buffer().

</member>
<member name="T:libffmpeg.AVPicture" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3433">
four components are given, that's all.
the last component is alpha

</member>
<member name="T:libffmpeg.AVPaletteControl" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3445">
 AVPaletteControl
 This structure defines a method for communicating palette changes
 between and demuxer and a decoder.

 @deprecated Use AVPacket to send palette changes instead.
 This is totally broken.

</member>
<member name="F:SUBTITLE_TEXT" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3473">
Plain text, the text field must be set by the decoder and is
authoritative. ass and pict fields may contain approximations.

</member>
<member name="F:SUBTITLE_ASS" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3479">
Formatted text, the ass field must be set by the decoder and is
authoritative. pict and text fields may contain approximations.

</member>
<member name="F:libffmpeg.AVSubtitleRect.pict" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3493">
data+linesize for the bitmap of this subtitle.
can be set for text/ass as well once they where rendered

</member>
<member name="F:libffmpeg.AVSubtitleRect.ass" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3502">
0 terminated ASS/SSA compatible event line.
The pressentation of this is unaffected by the other values in this
struct.

</member>
<member name="M:libffmpeg.av_destruct_packet_nofree(libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3521">
@deprecated use NULL instead

</member>
<member name="M:libffmpeg.av_destruct_packet(libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3526">
Default packet destructor.

</member>
<member name="M:libffmpeg.av_init_packet(libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3531">
 Initialize optional fields of a packet with default values.

 @param pkt packet

</member>
<member name="M:libffmpeg.av_new_packet(libffmpeg.AVPacket*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3538">
 Allocate the payload of a packet and initialize its fields with
 default values.

 @param pkt packet
 @param size wanted payload size
 @return 0 if OK, AVERROR_xxx otherwise

</member>
<member name="M:libffmpeg.av_shrink_packet(libffmpeg.AVPacket*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3548">
 Reduce packet size, correctly zeroing padding

 @param pkt packet
 @param size new size

</member>
<member name="M:libffmpeg.av_grow_packet(libffmpeg.AVPacket*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3556">
 Increase packet size, correctly zeroing padding

 @param pkt packet
 @param grow_by number of bytes by which to increase the size of the packet

</member>
<member name="M:libffmpeg.av_dup_packet(libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3564">
@warning This is a hack - the packet memory allocation stuff is broken. The
packet is allocated if it was not really allocated.

</member>
<member name="M:libffmpeg.av_free_packet(libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3570">
 Free a packet.

 @param pkt packet to free

</member>
<member name="T:libffmpeg.AVPacketSideDataType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3577">
 Allocate new information of a packet.

 @param pkt packet
 @param type side information type
 @param size side information size
 @return pointer to fresh allocated data or NULL otherwise

</member>
<member name="T:libffmpeg.AVPacketSideDataType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3588">
 Get side information from packet.

 @param pkt packet
 @param type desired side information type
 @param size pointer for side information size to store (optional)
 @return pointer to data if present or NULL otherwise

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3611">
 *  Initialize audio resampling context.
 *
 * @param output_channels  number of output channels
 * @param input_channels   number of input channels
 * @param output_rate      output sample rate
 * @param input_rate       input sample rate
 * @param sample_fmt_out   requested output sample format
 * @param sample_fmt_in    input sample format
 * @param filter_length    length of each FIR filter in the filterbank relative to the cutoff frequency
 * @param log2_phase_count log2 of the number of entries in the polyphase filterbank
 * @param linear           if 1 then the used FIR filter will be linearly interpolated
                           between the 2 closest, if 0 the closest will be used
 * @param cutoff           cutoff frequency, 1.0 corresponds to half the output sampling rate
 * @return allocated ReSampleContext, NULL if error occurred

</member>
<member name="M:libffmpeg.audio_resample_close(libffmpeg.ReSampleContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3636">
 Free resample context.

 @param s a non-NULL pointer to a resample context previously
          created with av_audio_resample_init()

</member>
<member name="T:libffmpeg.AVResampleContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3645">
 * Initialize an audio resampler.
 * Note, if either rate is not an integer then simply scale both rates up so they are.
 * @param filter_length length of each FIR filter in the filterbank relative to the cutoff freq
 * @param log2_phase_count log2 of the number of entries in the polyphase filterbank
 * @param linear If 1 then the used FIR filter will be linearly interpolated
                 between the 2 closest, if 0 the closest will be used
 * @param cutoff cutoff frequency, 1.0 corresponds to half the output sampling rate

</member>
<member name="T:libffmpeg.AVResampleContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3656">
Resample an array of samples using a previously configured context.
@param src an array of unconsumed samples
@param consumed the number of samples of src which have been consumed are returned here
@param src_size the number of unconsumed samples available
@param dst_size the amount of space in samples available in dst
@param update_ctx If this is 0 then the context will not be modified, that way several channels can be resampled with the same context.
@return the number of samples written in dst or -1 if an error occurred

</member>
<member name="T:libffmpeg.AVResampleContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3668">
 Compensate samplerate/timestamp drift. The compensation is done by changing
 the resampler parameters, so no audible clicks or similar distortions occur
 @param compensation_distance distance in output samples over which the compensation should be performed
 @param sample_delta number of output samples which should be output less

 example: av_resample_compensate(c, 10, 500)
 here instead of 510 samples only 500 samples would be output

 note, due to rounding the actual compensation might be slightly different,
 especially if the compensation_distance is large and the in_rate used during init is small

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3683">
 Allocate memory for a picture.  Call avpicture_free() to free it.

 @see avpicture_fill()

 @param picture the picture to be filled in
 @param pix_fmt the format of the picture
 @param width the width of the picture
 @param height the height of the picture
 @return zero if successful, a negative value if not

</member>
<member name="M:libffmpeg.avpicture_free(libffmpeg.AVPicture*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3696">
 Free a picture previously allocated by avpicture_alloc().
 The data buffer used by the AVPicture is freed, but the AVPicture structure
 itself is not.

 @param picture the AVPicture to be freed

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3705">
 Fill in the AVPicture fields.
 The fields of the given AVPicture are filled in by using the 'ptr' address
 which points to the image data buffer. Depending on the specified picture
 format, one or multiple image data pointers and line sizes will be set.
 If a planar format is specified, several pointers will be set pointing to
 the different picture planes and the line sizes of the different planes
 will be stored in the lines_sizes array.
 Call with ptr == NULL to get the required size for the ptr buffer.

 To allocate the buffer and fill in the AVPicture fields in one call,
 use avpicture_alloc().

 @param picture AVPicture whose fields are to be filled in
 @param ptr Buffer which will contain or contains the actual image data
 @param pix_fmt The format in which the picture data is stored.
 @param width the width of the image in pixels
 @param height the height of the image in pixels
 @return size of the image data in bytes

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3728">
 Copy pixel data from an AVPicture into a buffer.
 The data is stored compactly, without any gaps for alignment or padding
 which may be applied by avpicture_fill().

 @see avpicture_get_size()

 @param[in] src AVPicture containing image data
 @param[in] pix_fmt The format in which the picture data is stored.
 @param[in] width the width of the image in pixels.
 @param[in] height the height of the image in pixels.
 @param[out] dest A buffer into which picture data will be copied.
 @param[in] dest_size The size of 'dest'.
 @return The number of bytes written to dest, or a negative value (error code) on error.

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3746">
 Calculate the size in bytes that a picture of the given width and height
 would occupy if stored in the given picture format.
 Note that this returns the size of a compact representation as generated
 by avpicture_layout(), which can be smaller than the size required for e.g.
 avpicture_fill().

 @param pix_fmt the given picture format
 @param width the width of the image
 @param height the height of the image
 @return Image data size in bytes or -1 on error (e.g. too large dimensions).

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3761">
Get the name of a codec.
@return  a static string identifying the codec; never NULL

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3768">
 Return the short name for a pixel format.

 \see av_get_pix_fmt(), av_get_pix_fmt_string().
 @deprecated Deprecated in favor of av_get_pix_fmt_name().

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3780">
Return a value representing the fourCC code associated to the
pixel format pix_fmt, or 0 if no associated fourCC code can be
found.

</member>
<member name="M:libffmpeg.av_get_codec_tag_string(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.UInt32,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3787">
 Put a string representing the codec tag codec_tag in buf.

 @param buf_size size in bytes of buf
 @return the length of the string that would have been generated if
 enough space had been available, excluding the trailing null

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3803">
 Compute what kind of losses will occur when converting from one specific
 pixel format to another.
 When converting from one pixel format to another, information loss may occur.
 For example, when converting from RGB24 to GRAY, the color information will
 be lost. Similarly, other losses occur when converting from some formats to
 other formats. These losses can involve loss of chroma, but also loss of
 resolution, loss of color depth, loss due to the color space conversion, loss
 of the alpha bits or loss due to color quantization.
 avcodec_get_fix_fmt_loss() informs you about the various types of losses
 which will occur when converting from one pixel format to another.

 @param[in] dst_pix_fmt destination pixel format
 @param[in] src_pix_fmt source pixel format
 @param[in] has_alpha Whether the source pixel format alpha channel is used.
 @return Combination of flags informing you what kind of losses will occur
 (maximum loss for an invalid dst_pix_fmt).

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.PixelFormat'. -->
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.PixelFormat'. -->
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3888">
Tell if an image really has transparent alpha values.
@return ored mask of FF_ALPHA_xxx constants

</member>
<member name="M:libffmpeg.av_codec_next(libffmpeg.AVCodec*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3904">
If c is NULL, returns the first registered codec,
if c is non-NULL, returns the next registered codec after c,
or NULL if c is the last one.

</member>
<member name="M:libffmpeg.avcodec_version" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3911">
Return the LIBAVCODEC_VERSION_INT constant.

</member>
<member name="M:libffmpeg.avcodec_configuration" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3916">
Return the libavcodec build-time configuration.

</member>
<member name="M:libffmpeg.avcodec_license" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3921">
Return the libavcodec license.

</member>
<member name="M:libffmpeg.avcodec_init" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3927">
@deprecated this function is called automatically from avcodec_register()
and avcodec_register_all(), there is no need to call it manually

</member>
<member name="M:libffmpeg.avcodec_register(libffmpeg.AVCodec*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3935">
 Register the codec codec and initialize libavcodec.

 @warning either this function or avcodec_register_all() must be called
 before any other libavcodec functions.

 @see avcodec_register_all()

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3945">
 Find a registered encoder with a matching codec ID.

 @param id CodecID of the requested encoder
 @return An encoder if one was found, NULL otherwise.

</member>
<member name="M:libffmpeg.avcodec_find_encoder_by_name(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3953">
 Find a registered encoder with the specified name.

 @param name name of the requested encoder
 @return An encoder if one was found, NULL otherwise.

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3961">
 Find a registered decoder with a matching codec ID.

 @param id CodecID of the requested decoder
 @return A decoder if one was found, NULL otherwise.

</member>
<member name="M:libffmpeg.avcodec_find_decoder_by_name(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3969">
 Find a registered decoder with the specified name.

 @param name name of the requested decoder
 @return A decoder if one was found, NULL otherwise.

</member>
<member name="M:libffmpeg.av_get_profile_name(libffmpeg.AVCodec!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3978">
 Return a name for the specified profile, if available.

 @param codec the codec that is searched for the given profile
 @param profile the profile value for which a name is requested
 @return A name for the profile if found, NULL otherwise.

</member>
<member name="M:libffmpeg.avcodec_get_context_defaults(libffmpeg.AVCodecContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3988">
 Set the fields of the given AVCodecContext to default values.

 @param s The AVCodecContext of which the fields should be set to default values.
 @deprecated use avcodec_get_context_defaults3

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="3997">
THIS FUNCTION IS NOT YET PART OF THE PUBLIC API!
 *  we WILL change its arguments and name a few times! 
</member>
<member name="M:libffmpeg.avcodec_get_context_defaults3(libffmpeg.AVCodecContext*,libffmpeg.AVCodec*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4003">
 Set the fields of the given AVCodecContext to default values corresponding
 to the given codec (defaults may be codec-dependent).

 Do not call this function if a non-NULL codec has been passed
 to avcodec_alloc_context3() that allocated this AVCodecContext.
 If codec is non-NULL, it is illegal to call avcodec_open2() with a
 different codec on this AVCodecContext.

</member>
<member name="M:libffmpeg.avcodec_alloc_context" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4015">
 Allocate an AVCodecContext and set its fields to default values.  The
 resulting struct can be deallocated by simply calling av_free().

 @return An AVCodecContext filled with default values or NULL on failure.
 @see avcodec_get_context_defaults

 @deprecated use avcodec_alloc_context3()

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4027">
THIS FUNCTION IS NOT YET PART OF THE PUBLIC API!
 *  we WILL change its arguments and name a few times! 
</member>
<member name="M:libffmpeg.avcodec_alloc_context3(libffmpeg.AVCodec*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4033">
 Allocate an AVCodecContext and set its fields to default values.  The
 resulting struct can be deallocated by simply calling av_free().

 @param codec if non-NULL, allocate private data and initialize defaults
              for the given codec. It is illegal to then call avcodec_open2()
              with a different codec.

 @return An AVCodecContext filled with default values or NULL on failure.
 @see avcodec_get_context_defaults

</member>
<member name="M:libffmpeg.avcodec_copy_context(libffmpeg.AVCodecContext*,libffmpeg.AVCodecContext!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4046">
 Copy the settings of the source AVCodecContext into the destination
 AVCodecContext. The resulting destination codec context will be
 unopened, i.e. you are required to call avcodec_open2() before you
 can use this AVCodecContext to decode/encode video/audio data.

 @param dest target codec context, should be initialized with
             avcodec_alloc_context3(), but otherwise uninitialized
 @param src source codec context
 @return AVERROR() on error (e.g. memory allocation error), 0 on success

</member>
<member name="M:libffmpeg.avcodec_get_frame_defaults(libffmpeg.AVFrame*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4059">
 Set the fields of the given AVFrame to default values.

 @param pic The AVFrame of which the fields should be set to default values.

</member>
<member name="M:libffmpeg.avcodec_alloc_frame" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4066">
 Allocate an AVFrame and set its fields to default values.  The resulting
 struct can be deallocated by simply calling av_free().

 @return An AVFrame filled with default values or NULL on failure.
 @see avcodec_get_frame_defaults

</member>
<member name="M:libffmpeg.avcodec_get_edge_width" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4079">
 Return the amount of padding in pixels which the get_buffer callback must
 provide around the edge of the image for codecs which do not have the
 CODEC_FLAG_EMU_EDGE flag.

 @return Required padding in pixels.

</member>
<member name="M:libffmpeg.avcodec_align_dimensions(libffmpeg.AVCodecContext*,System.Int32*,System.Int32*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4087">
 Modify width and height values so that they will result in a memory
 buffer that is acceptable for the codec if you do not use any horizontal
 padding.

 May only be used if a codec with CODEC_CAP_DR1 has been opened.
 If CODEC_FLAG_EMU_EDGE is not set, the dimensions must have been increased
 according to avcodec_get_edge_width() before.

</member>
<member name="M:libffmpeg.avcodec_align_dimensions2(libffmpeg.AVCodecContext*,System.Int32*,System.Int32*,System.Int32*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4097">
 Modify width and height values so that they will result in a memory
 buffer that is acceptable for the codec if you also ensure that all
 line sizes are a multiple of the respective linesize_align[i].

 May only be used if a codec with CODEC_CAP_DR1 has been opened.
 If CODEC_FLAG_EMU_EDGE is not set, the dimensions must have been increased
 according to avcodec_get_edge_width() before.

</member>
<member name="M:libffmpeg.avcodec_thread_init(libffmpeg.AVCodecContext*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4112">
@deprecated Set s-&gt;thread_count before calling avcodec_open2() instead of calling this.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avcodec_open(libffmpeg.AVCodecContext*,libffmpeg.AVCodec*)'. -->
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avcodec_open2(libffmpeg.AVCodecContext*,libffmpeg.AVCodec*,libffmpeg.AVDictionary**)'. -->
<member name="M:libffmpeg.avcodec_decode_audio3(libffmpeg.AVCodecContext*,System.Int16*,System.Int32*,libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4191">
 Wrapper function which calls avcodec_decode_audio4.

 @deprecated Use avcodec_decode_audio4 instead.

 Decode the audio frame of size avpkt-&gt;size from avpkt-&gt;data into samples.
 Some decoders may support multiple frames in a single AVPacket, such
 decoders would then just decode the first frame. In this case,
 avcodec_decode_audio3 has to be called again with an AVPacket that contains
 the remaining data in order to decode the second frame etc.
 If no frame
 could be outputted, frame_size_ptr is zero. Otherwise, it is the
 decompressed frame size in bytes.

 @warning You must set frame_size_ptr to the allocated size of the
 output buffer before calling avcodec_decode_audio3().

 @warning The input buffer must be FF_INPUT_BUFFER_PADDING_SIZE larger than
 the actual read bytes because some optimized bitstream readers read 32 or 64
 bits at once and could read over the end.

 @warning The end of the input buffer avpkt-&gt;data should be set to 0 to ensure that
 no overreading happens for damaged MPEG streams.

 @warning You must not provide a custom get_buffer() when using
 avcodec_decode_audio3().  Doing so will override it with
 avcodec_default_get_buffer.  Use avcodec_decode_audio4() instead,
 which does allow the application to provide a custom get_buffer().

 @note You might have to align the input buffer avpkt-&gt;data and output buffer
 samples. The alignment requirements depend on the CPU: On some CPUs it isn't
 necessary at all, on others it won't work at all if not aligned and on others
 it will work but it will have an impact on performance.

 In practice, avpkt-&gt;data should have 4 byte alignment at minimum and
 samples should be 16 byte aligned unless the CPU doesn't need it
 (AltiVec and SSE do).

 @note Codecs which have the CODEC_CAP_DELAY capability set have a delay
 between input and output, these need to be fed with avpkt-&gt;data=NULL,
 avpkt-&gt;size=0 at the end to return the remaining frames.

 @param avctx the codec context
 @param[out] samples the output buffer, sample type in avctx-&gt;sample_fmt
                     If the sample format is planar, each channel plane will
                     be the same size, with no padding between channels.
 @param[in,out] frame_size_ptr the output buffer size in bytes
 @param[in] avpkt The input AVPacket containing the input buffer.
            You can create such packet with av_init_packet() and by then setting
            data and size, some decoders might in addition need other fields.
            All decoders are designed to use the least fields possible though.
 @return On error a negative value is returned, otherwise the number of bytes
 used or zero if no frame data was decompressed (used) from the input AVPacket.

</member>
<member name="M:libffmpeg.avcodec_decode_audio4(libffmpeg.AVCodecContext*,libffmpeg.AVFrame*,System.Int32*,libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4250">
 Decode the audio frame of size avpkt-&gt;size from avpkt-&gt;data into frame.

 Some decoders may support multiple frames in a single AVPacket. Such
 decoders would then just decode the first frame. In this case,
 avcodec_decode_audio4 has to be called again with an AVPacket containing
 the remaining data in order to decode the second frame, etc...
 Even if no frames are returned, the packet needs to be fed to the decoder
 with remaining data until it is completely consumed or an error occurs.

 @warning The input buffer, avpkt-&gt;data must be FF_INPUT_BUFFER_PADDING_SIZE
          larger than the actual read bytes because some optimized bitstream
          readers read 32 or 64 bits at once and could read over the end.

 @note You might have to align the input buffer. The alignment requirements
       depend on the CPU and the decoder.

 @param      avctx the codec context
 @param[out] frame The AVFrame in which to store decoded audio samples.
                   Decoders request a buffer of a particular size by setting
                   AVFrame.nb_samples prior to calling get_buffer(). The
                   decoder may, however, only utilize part of the buffer by
                   setting AVFrame.nb_samples to a smaller value in the
                   output frame.
 @param[out] got_frame_ptr Zero if no frame could be decoded, otherwise it is
                           non-zero.
 @param[in]  avpkt The input AVPacket containing the input buffer.
                   At least avpkt-&gt;data and avpkt-&gt;size should be set. Some
                   decoders might also require additional fields to be set.
 @return A negative error code is returned if an error occurred during
         decoding, otherwise the number of bytes consumed from the input
         AVPacket is returned.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avcodec_decode_video2(libffmpeg.AVCodecContext*,libffmpeg.AVFrame*,System.Int32*,libffmpeg.AVPacket!System.Runtime.CompilerServices.IsConst*)'. -->
<member name="M:libffmpeg.avcodec_decode_subtitle2(libffmpeg.AVCodecContext*,libffmpeg.AVSubtitle*,System.Int32*,libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4331">
 * Decode a subtitle message.
 * Return a negative value on error, otherwise return the number of bytes used.
 * If no subtitle could be decompressed, got_sub_ptr is zero.
 * Otherwise, the subtitle is stored in *sub.
 * Note that CODEC_CAP_DR1 is not available for subtitle codecs. This is for
 * simplicity, because the performance difference is expect to be negligible
 * and reusing a get_buffer written for video codecs would probably perform badly
 * due to a potentially very different allocation pattern.
 *
 * @param avctx the codec context
 * @param[out] sub The AVSubtitle in which the decoded subtitle will be stored, must be
                   freed with avsubtitle_free if *got_sub_ptr is set.
 * @param[in,out] got_sub_ptr Zero if no subtitle could be decompressed, otherwise, it is nonzero.
 * @param[in] avpkt The input AVPacket containing the input buffer.

</member>
<member name="M:libffmpeg.avsubtitle_free(libffmpeg.AVSubtitle*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4351">
 Free all allocated data in the given subtitle struct.

 @param sub AVSubtitle to free.

</member>
<member name="M:libffmpeg.avcodec_encode_audio(libffmpeg.AVCodecContext*,System.Byte*,System.Int32,System.Int16!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4359">
 Encode an audio frame from samples into buf.

 @deprecated Use avcodec_encode_audio2 instead.

 @note The output buffer should be at least FF_MIN_BUFFER_SIZE bytes large.
 However, for codecs with avctx-&gt;frame_size equal to 0 (e.g. PCM) the user
 will know how much space is needed because it depends on the value passed
 in buf_size as described below. In that case a lower value can be used.

 @param avctx the codec context
 @param[out] buf the output buffer
 @param[in] buf_size the output buffer size
 @param[in] samples the input buffer containing the samples
 The number of samples read from this buffer is frame_size*channels,
 both of which are defined in avctx.
 For codecs which have avctx-&gt;frame_size equal to 0 (e.g. PCM) the number of
 samples read from samples is equal to:
 buf_size * 8 / (avctx-&gt;channels * av_get_bits_per_sample(avctx-&gt;codec_id))
 This also implies that av_get_bits_per_sample() must not return 0 for these
 codecs.
 @return On error a negative value is returned, on success zero or the number
 of bytes used to encode the data read from the input buffer.

</member>
<member name="M:libffmpeg.avcodec_encode_audio2(libffmpeg.AVCodecContext*,libffmpeg.AVPacket*,libffmpeg.AVFrame!System.Runtime.CompilerServices.IsConst*,System.Int32*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4388">
 Encode a frame of audio.

 Takes input samples from frame and writes the next output packet, if
 available, to avpkt. The output packet does not necessarily contain data for
 the most recent frame, as encoders can delay, split, and combine input frames
 internally as needed.

 @param avctx     codec context
 @param avpkt     output AVPacket.
                  The user can supply an output buffer by setting
                  avpkt-&gt;data and avpkt-&gt;size prior to calling the
                  function, but if the size of the user-provided data is not
                  large enough, encoding will fail. All other AVPacket fields
                  will be reset by the encoder using av_init_packet(). If
                  avpkt-&gt;data is NULL, the encoder will allocate it.
                  The encoder will set avpkt-&gt;size to the size of the
                  output packet.
 @param[in] frame AVFrame containing the raw audio data to be encoded.
                  May be NULL when flushing an encoder that has the
                  CODEC_CAP_DELAY capability set.
                  There are 2 codec capabilities that affect the allowed
                  values of frame-&gt;nb_samples.
                  If CODEC_CAP_SMALL_LAST_FRAME is set, then only the final
                  frame may be smaller than avctx-&gt;frame_size, and all other
                  frames must be equal to avctx-&gt;frame_size.
                  If CODEC_CAP_VARIABLE_FRAME_SIZE is set, then each frame
                  can have any number of samples.
                  If neither is set, frame-&gt;nb_samples must be equal to
                  avctx-&gt;frame_size for all frames.
 @param[out] got_packet_ptr This field is set to 1 by libavcodec if the
                            output packet is non-empty, and to 0 if it is
                            empty. If the function returns an error, the
                            packet can be assumed to be invalid, and the
                            value of got_packet_ptr is undefined and should
                            not be used.
 @return          0 on success, negative error code on failure

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4429">
 Fill audio frame data and linesize.
 AVFrame extended_data channel pointers are allocated if necessary for
 planar audio.

 @param frame       the AVFrame
                    frame-&gt;nb_samples must be set prior to calling the
                    function. This function fills in frame-&gt;data,
                    frame-&gt;extended_data, frame-&gt;linesize[0].
 @param nb_channels channel count
 @param sample_fmt  sample format
 @param buf         buffer to use for frame data
 @param buf_size    size of buffer
 @param align       plane size sample alignment
 @return            0 on success, negative error code on failure

</member>
<member name="M:libffmpeg.avcodec_encode_video(libffmpeg.AVCodecContext*,System.Byte*,System.Int32,libffmpeg.AVFrame!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4449">
 Encode a video frame from pict into buf.
 The input picture should be
 stored using a specific format, namely avctx.pix_fmt.

 @param avctx the codec context
 @param[out] buf the output buffer for the bitstream of encoded frame
 @param[in] buf_size the size of the output buffer in bytes
 @param[in] pict the input picture to encode
 @return On error a negative value is returned, on success zero or the number
 of bytes used from the output buffer.

</member>
<member name="M:libffmpeg.avcodec_register_all" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4468">
 Register all the codecs, parsers and bitstream filters which were enabled at
 configuration time. If you do not call this function you can select exactly
 which formats you want to support, by using the individual registration
 functions.

 @see avcodec_register
 @see av_register_codec_parser
 @see av_register_bitstream_filter

</member>
<member name="M:libffmpeg.avcodec_flush_buffers(libffmpeg.AVCodecContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4480">
Flush buffers, should be called when seeking or when switching to a different stream.

</member>
<member name="M:libffmpeg.av_get_pict_type_char(System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4490">
 Return a single letter to describe the given picture type pict_type.

 @param[in] pict_type the picture type
 @return A single character representing the picture type.
 @deprecated Use av_get_picture_type_char() instead.

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4501">
 Return codec bits per sample.

 @param[in] codec_id the codec
 @return Number of bits per sample or zero if unknown for the given codec.

</member>
<member name="T:libffmpeg.AVSampleFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4510">
@deprecated Use av_get_bytes_per_sample() instead.

</member>
<member name="F:libffmpeg.AVCodecParserContext.repeat_pict" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4527">
 This field is used for proper frame duration computation in lavf.
 It signals, how much longer the frame duration of the current frame
 is compared to normal frame duration.

 frame_duration = (1 + repeat_pict) * time_base

 It is used by codecs like H.264 to display telecined material.

</member>
<member name="F:libffmpeg.AVCodecParserContext.offset" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4554">
Set if the parser has a valid file offset
</member>
<member name="F:libffmpeg.AVCodecParserContext.key_frame" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4560">
Set by parser to 1 for key frames and 0 for non-key frames.
It is initialized to -1, so if the parser doesn't set this flag,
old-style fallback using AV_PICTURE_TYPE_I picture type as key frames
will be used.

</member>
<member name="F:libffmpeg.AVCodecParserContext.convergence_duration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4568">
 Time difference in stream time base units from the pts of this
 packet to the point at which the output from the decoder has converged
 independent from the availability of previous frames. That is, the
 frames are virtually identical no matter if decoding started from
 the very first frame or from this keyframe.
 Is AV_NOPTS_VALUE if unknown.
 This field is not the display duration of the current frame.
 This field has no meaning if the packet does not have AV_PKT_FLAG_KEY
 set.

 The purpose of this field is to allow seeking in streams that have no
 keyframes in the conventional sense. It corresponds to the
 recovery point SEI in H.264 and match_time_delta in NUT. It is also
 essential for some types of subtitle streams to ensure that all
 subtitles are correctly displayed after seeking.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVCodecParserContext.dts_sync_point'. -->
<member name="F:libffmpeg.AVCodecParserContext.dts_ref_dts_delta" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4599">
 Offset of the current timestamp against last timestamp sync point in
 units of AVCodecContext.time_base.

 Set to INT_MIN when dts_sync_point unused. Otherwise, it must
 contain a valid timestamp offset.

 Note that the timestamp of sync point has usually a nonzero
 dts_ref_dts_delta, which refers to the previous sync point. Offset of
 the next frame after timestamp sync point will be usually 1.

 For example, this corresponds to H.264 cpb_removal_delay.

</member>
<member name="F:libffmpeg.AVCodecParserContext.pts_dts_delta" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4614">
 Presentation delay of current frame in units of AVCodecContext.time_base.

 Set to INT_MIN when dts_sync_point unused. Otherwise, it must
 contain valid non-negative timestamp delta (presentation time of a frame
 must not lie in the past).

 This delay represents the difference between decoding and presentation
 time of the frame.

 For example, this corresponds to H.264 dpb_output_delay.

</member>
<member name="F:libffmpeg.AVCodecParserContext.cur_frame_pos" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4628">
 Position of the packet in file.

 Analogous to cur_frame_pts/dts

</member>
<member name="F:libffmpeg.AVCodecParserContext.pos" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4635">
Byte position of currently parsed frame in stream.

</member>
<member name="F:libffmpeg.AVCodecParserContext.last_pos" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4640">
Previous frame byte position.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_parser_parse2(libffmpeg.AVCodecParserContext*,libffmpeg.AVCodecContext*,System.Byte**,System.Int32*,System.Byte!System.Runtime.CompilerServices.IsConst*,System.Int32,System.Int64,System.Int64,System.Int64)'. -->
<member name="M:libffmpeg.av_fast_realloc(System.Void*,System.UInt32*,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4737">
 Reallocate the given block if it is not large enough, otherwise do nothing.

 @see av_realloc

</member>
<member name="M:libffmpeg.av_fast_malloc(System.Void*,System.UInt32*,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4744">
 Allocate a buffer, reusing the given one if large enough.

 Contrary to av_fast_realloc the current buffer contents might not be
 preserved and on error the old buffer is freed, thus no special
 handling to avoid memleaks is necessary.

 @param ptr pointer to pointer to already allocated buffer, overwritten with pointer to new buffer
 @param size size of the buffer *ptr points to
 @param min_size minimum size of *ptr buffer after returning, *ptr will be NULL and
                 *size 0 if an error occurred.

</member>
<member name="M:libffmpeg.av_fast_padded_malloc(System.Void*,System.UInt32*,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4758">
 Same behaviour av_fast_malloc but the buffer has additional
 FF_INPUT_PADDING_SIZE at the end which will will always be 0.

 In addition the whole buffer will initially and after resizes
 be 0-initialized so that no uninitialized data will ever appear.

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4767">
Copy image src to dst. Wraps av_picture_data_copy() above.

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4773">
Crop image top and left side.

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4779">
Pad image.

</member>
<member name="M:libffmpeg.av_xiphlacing(System.Byte*,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4785">
 Encode extradata length to a buffer. Used by xiph codecs.

 @param s buffer to write to; must be at least (v/255+1) bytes long
 @param v size of extradata in bytes
 @return number of bytes written to the buffer.

</member>
<member name="M:libffmpeg.av_log_missing_feature(System.Void*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4794">
Log a generic warning message about a missing feature. This function is
intended to be used internally by FFmpeg (libavcodec, libavformat, etc.)
only, and would normally not be used by applications.
@param[in] avc a pointer to an arbitrary struct of which the first field is
a pointer to an AVClass struct
@param[in] feature string containing the name of the missing feature
@param[in] want_sample indicates if samples are wanted which exhibit this feature.
If want_sample is non-zero, additional verbage will be added to the log
message which tells the user how to report samples to the development
mailing list.

</member>
<member name="M:libffmpeg.av_log_ask_for_sample(System.Void*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4808">
Log a generic warning message asking for a sample. This function is
intended to be used internally by FFmpeg (libavcodec, libavformat, etc.)
only, and would normally not be used by applications.
@param[in] avc a pointer to an arbitrary struct of which the first field is
a pointer to an AVClass struct
@param[in] msg string containing an optional message, or NULL if no message

</member>
<member name="M:libffmpeg.av_register_hwaccel(libffmpeg.AVHWAccel*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4818">
Register the hardware accelerator hwaccel.

</member>
<member name="M:libffmpeg.av_hwaccel_next(libffmpeg.AVHWAccel*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4823">
If hwaccel is NULL, returns the first registered hardware accelerator,
if hwaccel is non-NULL, returns the next registered hardware accelerator
after hwaccel, or NULL if hwaccel is the last one.

</member>
<member name="T:libffmpeg.AVLockOp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4831">
Lock operation used by lockmgr

</member>
<member name="T:libffmpeg.AVLockOp" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4841">
 Register a user provided lock manager supporting the operations
 specified by AVLockOp. mutex points to a (void *) where the
 lockmgr should store/get a pointer to a user allocated mutex. It's
 NULL upon AV_LOCK_CREATE and != NULL for all other ops.

 @param cb User defined callback. Note: FFmpeg may invoke calls to this
           callback during the call to av_lockmgr_register().
           Thus, the application must be prepared to handle that.
           If cb is set to NULL the lockmgr will be unregistered.
           Also note that during unregistration the previously registered
           lockmgr callback may also be invoked.

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4856">
Get the type of the given codec.

</member>
<member name="M:libffmpeg.avcodec_get_class" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4861">
 Get the AVClass for AVCodecContext. It can be used in combination with
 AV_OPT_SEARCH_FAKE_OBJ for examining options.

 @see av_opt_find().

</member>
<member name="M:libffmpeg.avcodec_get_frame_class" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavcodec\avcodec.h" line="4869">
 Get the AVClass for AVFrame. It can be used in combination with
 AV_OPT_SEARCH_FAKE_OBJ for examining options.

 @see av_opt_find().

</member>
<member name="T:libffmpeg.URLContext" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="134">
URL Context.
New fields can be added to the end with minor version bumps.
Removal, reordering and changes to existing fields require a major
version bump.
sizeof(URLContext) must not be used outside libav*.
@deprecated This struct will be made private

</member>
<member name="T:libffmpeg.URLProtocol" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="157">
@deprecated This struct is to be made private. Use the higher-level
            AVIOContext-based API instead.

</member>
<member name="D:libffmpeg.URLInterruptCB" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="188">
@name URL open modes
The flags argument to url_open and cosins must be one of the following
constants, optionally ORed with other flags.
@{

@}

Use non-blocking mode.
If this flag is set, operations on the context will return
AVERROR(EAGAIN) if they can not be performed immediately.
If this flag is not set, operations on the context will never return
AVERROR(EAGAIN).
Note that this flag does not affect the opening/connecting of the
context. Connecting a protocol will always block if necessary (e.g. on
network protocols) but never hang (e.g. on busy devices).
Warning: non-blocking protocols is work-in-progress; this flag may be
silently ignored.

</member>
<member name="T:libffmpeg.URLProtocol" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="218">
@defgroup old_url_funcs Old url_* functions
The following functions are deprecated. Use the buffered API based on #AVIOContext instead.
@{
@ingroup lavf_io

</member>
<member name="M:libffmpeg.av_protocol_next(libffmpeg.URLProtocol*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="243">
returns the next registered protocol after the given protocol (the first if
NULL is given), or NULL if protocol is the last one.

</member>
<member name="M:libffmpeg.av_register_protocol2(libffmpeg.URLProtocol*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="249">
 Register the URLProtocol protocol.

 @param size the size of the URLProtocol struct referenced

</member>
<member name="D:libffmpeg.ByteIOContext" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="255">
@}

</member>
<member name="M:libffmpeg.get_buffer(libffmpeg.AVIOContext*,System.Byte*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="279">
@defgroup old_avio_funcs Old put_/get_*() functions
The following functions are deprecated. Use the "avio_"-prefixed functions instead.
@{
@ingroup lavf_io

</member>
<member name="M:libffmpeg.av_url_read_fpause(libffmpeg.AVIOContext*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="309">
@}

</member>
<member name="M:libffmpeg.url_fopen(libffmpeg.AVIOContext**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="317">
@defgroup old_url_f_funcs Old url_f* functions
The following functions are deprecated, use the "avio_"-prefixed functions instead.
@{
@ingroup lavf_io

</member>
<member name="M:libffmpeg.url_ferror(libffmpeg.AVIOContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="338">
@}

</member>
<member name="M:libffmpeg.url_fgets(libffmpeg.AVIOContext*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="352">
@note unlike fgets, the EOL character is not returned and a whole
    line is parsed. return NULL if first char read was EOF 
</member>
<member name="M:libffmpeg.get_strz(libffmpeg.AVIOContext*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="355">
@deprecated use avio_get_str instead

</member>
<member name="M:libffmpeg.url_is_streamed(libffmpeg.AVIOContext*)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="359">
@deprecated Use AVIOContext.seekable field directly.

</member>
<member name="M:libffmpeg.url_fget_max_packet_size(libffmpeg.AVIOContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="368">
@deprecated use AVIOContext.max_packet_size directly.

</member>
<member name="M:libffmpeg.url_close_buf(libffmpeg.AVIOContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="375">
return the written or read size 
</member>
<member name="M:libffmpeg.url_exist(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="378">
Return a non-zero value if the resource indicated by url
exists, 0 otherwise.
@deprecated Use avio_check instead.

</member>
<member name="M:libffmpeg.avio_check(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="386">
 Return AVIO_FLAG_* access flags corresponding to the access permissions
 of the resource in url, or a negative value corresponding to an
 AVERROR code in case of failure. The returned access flags are
 masked by the value in flags.

 @note This function is intrinsically unsafe, in the sense that the
 checked resource may change its existence or permission status from
 one call to another. Thus you should not trust the returned value,
 unless you are sure that no other processes are accessing the
 checked resource.

</member>
<member name="M:libffmpeg.avio_set_interrupt_cb(=FUNC:System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="401">
The callback is called in blocking functions to test regulary if
asynchronous interruption is needed. AVERROR_EXIT is returned
in this case by the interrupted function. 'NULL' means no interrupt
callback is given.
@deprecated Use interrupt_callback in AVFormatContext/avio_open2
            instead.

</member>
<member name="M:libffmpeg.avio_alloc_context(System.Byte*,System.Int32,System.Int32,System.Void*,=FUNC:System.Int32(System.Void*,System.Byte*,System.Int32),=FUNC:System.Int32(System.Void*,System.Byte*,System.Int32),=FUNC:System.Int64(System.Void*,System.Int64,System.Int32))" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="412">
 Allocate and initialize an AVIOContext for buffered I/O. It must be later
 freed with av_free().

 @param buffer Memory block for input/output operations via AVIOContext.
        The buffer must be allocated with av_malloc() and friends.
 @param buffer_size The buffer size is very important for performance.
        For protocols with fixed blocksize it should be set to this blocksize.
        For others a typical size is a cache page, e.g. 4kb.
 @param write_flag Set to 1 if the buffer should be writable, 0 otherwise.
 @param opaque An opaque pointer to user-specific data.
 @param read_packet  A function for refilling the buffer, may be NULL.
 @param write_packet A function for writing the buffer contents, may be NULL.
 @param seek A function for seeking to specified byte position, may be NULL.

 @return Allocated AVIOContext or NULL on failure.

</member>
<member name="M:libffmpeg.avio_put_str(libffmpeg.AVIOContext*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="449">
Write a NULL-terminated string.
@return number of bytes written.

</member>
<member name="M:libffmpeg.avio_put_str16le(libffmpeg.AVIOContext*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="455">
Convert an UTF-8 string to UTF-16LE and write it.
@return number of bytes written.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avio_seek(libffmpeg.AVIOContext*,System.Int64,System.Int32)'. -->
<member name="M:libffmpeg.avio_skip(libffmpeg.AVIOContext*,System.Int64)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="482">
Skip given number of bytes forward
@return new position or AVERROR.

</member>
<member name="M:libffmpeg.avio_tell(libffmpeg.AVIOContext*)" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="488">
ftell() equivalent for AVIOContext.
@return position or AVERROR.

</member>
<member name="M:libffmpeg.avio_size(libffmpeg.AVIOContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="497">
Get the filesize.
@return filesize or AVERROR

</member>
<member name="M:libffmpeg.url_feof(libffmpeg.AVIOContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="503">
feof() equivalent for AVIOContext.
@return non zero if and only if end of file

</member>
<member name="M:libffmpeg.avio_printf(libffmpeg.AVIOContext*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,BTEllipsis)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="509">
@warning currently size is limited 
</member>
<member name="M:libffmpeg.avio_read(libffmpeg.AVIOContext*,System.Byte*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="515">
Read size bytes from AVIOContext into buf.
@return number of bytes read or AVERROR

</member>
<member name="M:libffmpeg.avio_r8(libffmpeg.AVIOContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="521">
 @name Functions for reading from AVIOContext
 @{

 @note return 0 if EOF, so you cannot use it if EOF handling is
       necessary

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avio_get_str(libffmpeg.AVIOContext*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32)'. -->
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avio_get_str16le(libffmpeg.AVIOContext*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32)'. -->
<member name="M:libffmpeg.avio_open(libffmpeg.AVIOContext**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="565">
@name URL open modes
The flags argument to avio_open must be one of the following
constants, optionally ORed with other flags.
@{

@}

Use non-blocking mode.
If this flag is set, operations on the context will return
AVERROR(EAGAIN) if they can not be performed immediately.
If this flag is not set, operations on the context will never return
AVERROR(EAGAIN).
Note that this flag does not affect the opening/connecting of the
context. Connecting a protocol will always block if necessary (e.g. on
network protocols) but never hang (e.g. on busy devices).
Warning: non-blocking protocols is work-in-progress; this flag may be
silently ignored.

 Create and initialize a AVIOContext for accessing the
 resource indicated by url.
 @note When the resource indicated by url has been opened in
 read+write mode, the AVIOContext can be used only for writing.

 @param s Used to return the pointer to the created AVIOContext.
 In case of failure the pointed to value is set to NULL.
 @param flags flags which control how the resource indicated by url
 is to be opened
 @return 0 in case of success, a negative value corresponding to an
 AVERROR code in case of failure

</member>
<member name="M:libffmpeg.avio_open2(libffmpeg.AVIOContext**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32,libffmpeg.AVIOInterruptCB!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVDictionary**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="607">
 Create and initialize a AVIOContext for accessing the
 resource indicated by url.
 @note When the resource indicated by url has been opened in
 read+write mode, the AVIOContext can be used only for writing.

 @param s Used to return the pointer to the created AVIOContext.
 In case of failure the pointed to value is set to NULL.
 @param flags flags which control how the resource indicated by url
 is to be opened
 @param int_cb an interrupt callback to be used at the protocols level
 @param options  A dictionary filled with protocol-private options. On return
 this parameter will be destroyed and replaced with a dict containing options
 that were not found. May be NULL.
 @return 0 in case of success, a negative value corresponding to an
 AVERROR code in case of failure

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avio_close(libffmpeg.AVIOContext*)'. -->
<member name="M:libffmpeg.avio_open_dyn_buf(libffmpeg.AVIOContext**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="635">
 Open a write only memory stream.

 @param s new IO context
 @return zero if no error.

</member>
<member name="M:libffmpeg.avio_close_dyn_buf(libffmpeg.AVIOContext*,System.Byte**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="643">
 Return the written size and a pointer to the buffer. The buffer
 must be freed with av_free().
 Padding of FF_INPUT_BUFFER_PADDING_SIZE is added to the buffer.

 @param s IO context
 @param pbuffer pointer to a byte buffer
 @return the length of the byte buffer

</member>
<member name="M:libffmpeg.avio_enum_protocols(System.Void**,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="654">
 Iterate through names of available protocols.
 @note it is recommanded to use av_protocol_next() instead of this

 @param opaque A private pointer representing current protocol.
        It must be a pointer to NULL on first iteration and will
        be updated by successive calls to avio_enum_protocols.
 @param output If set to 1, iterate over output protocols,
               otherwise over input protocols.

 @return A static string containing the name of current protocol or NULL

</member>
<member name="M:libffmpeg.avio_pause(libffmpeg.AVIOContext*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="668">
Pause and resume playing - only meaningful if using a network streaming
protocol (e.g. MMS).
@param pause 1 for pause, 0 for resume

</member>
<member name="M:libffmpeg.avio_seek_time(libffmpeg.AVIOContext*,System.Int32,System.Int64,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avio.h" line="675">
Seek to a given timestamp relative to some component stream.
Only meaningful if using a network streaming protocol (e.g. MMS.).
@param stream_index The stream index that the timestamp is relative to.
       If stream_index is (-1) the timestamp should be in AV_TIME_BASE
       units from the beginning of the presentation.
       If a stream_index &gt;= 0 is used and the protocol does not support
       seeking based on component streams, the call will fail.
@param timestamp timestamp in AVStream.time_base units
       or if there is no stream specified then in AV_TIME_BASE units.
@param flags Optional combination of AVSEEK_FLAG_BACKWARD, AVSEEK_FLAG_BYTE
       and AVSEEK_FLAG_ANY. The protocol may silently ignore
       AVSEEK_FLAG_BACKWARD and AVSEEK_FLAG_ANY, but AVSEEK_FLAG_BYTE will
       fail if used and not supported.
@return &gt;= 0 on success
@see AVInputFormat::read_seek

</member>
<!-- Discarding badly formed XML document comment for member 'D:libffmpeg.AVMetadata'. -->
<member name="M:libffmpeg.av_metadata_get(libffmpeg.AVDictionary*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVDictionaryEntry!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="242">
 Get a metadata element with matching key.

 @param prev Set to the previous matching element to find the next.
             If set to NULL the first matching element is returned.
 @param flags Allows case as well as suffix-insensitive comparisons.
 @return Found tag or NULL, changing key or value leads to undefined behavior.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_metadata_set2(libffmpeg.AVDictionary**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)'. -->
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="265">
This function is provided for compatibility reason and currently does nothing.

</member>
<member name="M:libffmpeg.av_metadata_copy(libffmpeg.AVDictionary**,libffmpeg.AVDictionary*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="271">
Copy metadata from one AVDictionary struct into another.
@param dst pointer to a pointer to a AVDictionary struct. If *dst is NULL,
           this function will allocate a struct for you and put it in *dst
@param src pointer to source AVDictionary struct
@param flags flags to use when setting metadata in *dst
@note metadata is read using the AV_DICT_IGNORE_SUFFIX flag

</member>
<member name="M:libffmpeg.av_metadata_free(libffmpeg.AVDictionary**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="281">
Free all the memory allocated for an AVDictionary struct.

</member>
<member name="M:libffmpeg.av_get_packet(libffmpeg.AVIOContext*,libffmpeg.AVPacket*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="285">
@}

 Allocate and read the payload of a packet and initialize its
 fields with default values.

 @param pkt packet
 @param size desired payload size
 @return &gt;0 (read size) if OK, AVERROR_xxx otherwise

</member>
<member name="M:libffmpeg.av_append_packet(libffmpeg.AVIOContext*,libffmpeg.AVPacket*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="305">
 Read data and append it to the current content of the AVPacket.
 If pkt-&gt;size is 0 this is identical to av_get_packet.
 Note that this uses av_grow_packet and thus involves a realloc
 which is inefficient. Thus this function should only be used
 when there is no reasonable way to know (an upper bound of)
 the final size.

 @param pkt packet
 @param size amount of data to read
 @return &gt;0 (read size) if OK, AVERROR_xxx otherwise, previous data
         will not be lost even if an error occurs.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVFrac'. -->
<member name="T:libffmpeg.AVProbeData" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="336">
This structure contains the data a format has to probe a file.

</member>
<!-- Discarding badly formed XML document comment for member 'F:libffmpeg.AVFormatParameters.mpeg2ts_compute_pcr'. -->
<member name="T:libffmpeg.AVOutputFormat" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="367">
Demuxer will use avio_open, no opened file should be provided by the caller.
@addtogroup lavf_encoding
@{

</member>
<member name="F:libffmpeg.AVOutputFormat.long_name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="394">
Descriptive name for the format, meant to be more human-readable
than name. You should use the NULL_IF_CONFIG_SMALL() macro
to define it.

</member>
<member name="F:libffmpeg.AVOutputFormat.priv_data_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="402">
size of private data so that it can be allocated in the wrapper

</member>
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="410">
Write a packet. If AVFMT_ALLOW_FLUSH is set in flags,
pkt can be NULL in order to flush data buffered in the muxer.
When flushing, return 0 if there still is more data to flush,
or 1 if everything was flushed and there is no more buffered
data.

</member>
<member name="F:libffmpeg.AVOutputFormat.flags" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="419">
can use flags: AVFMT_NOFILE, AVFMT_NEEDNUMBER, AVFMT_RAWPICTURE,
AVFMT_GLOBALHEADER, AVFMT_NOTIMESTAMPS, AVFMT_VARIABLE_FPS,
AVFMT_NODIMENSIONS, AVFMT_NOSTREAMS, AVFMT_ALLOW_FLUSH

</member>
<member name="T:libffmpeg.AVCodecTag" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="431">
List of supported codec_id-codec_tag pairs, ordered by "better
choice first". The arrays are all terminated by CODEC_ID_NONE.

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="445">
 Test if the given codec can be stored in this container.

 @return 1 if the codec is supported, 0 if it is not.
         A negative number if unknown.

</member>
<member name="T:libffmpeg.AVInputFormat" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="459">
@}

@addtogroup lavf_decoding
@{

</member>
<member name="F:libffmpeg.AVInputFormat.name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="468">
A comma separated list of short names for the format. New names
may be appended with a minor bump.

</member>
<member name="F:libffmpeg.AVInputFormat.long_name" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="474">
Descriptive name for the format, meant to be more human-readable
than name. You should use the NULL_IF_CONFIG_SMALL() macro
to define it.

</member>
<member name="F:libffmpeg.AVInputFormat.priv_data_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="481">
Size of private data so that it can be allocated in the wrapper.

</member>
<member name="F:libffmpeg.AVInputFormat.read_probe" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="486">
Tell if a given file has a chance of being parsed as this format.
The buffer provided is guaranteed to be AVPROBE_PADDING_SIZE bytes
big so you do not have to check for that unless you need more.

</member>
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="493">
Read the format header and initialize the AVFormatContext
structure. Return 0 if OK. 'ap' if non-NULL contains
additional parameters. Only used in raw format right
now. 'av_new_stream' should be called to create new streams.

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVFormatContext'. -->
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="513">
Close the stream. The AVFormatContext and AVStreams are not
freed by this function

</member>
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="519">
Seek to a given timestamp relative to the frames in
stream component stream_index.
@param stream_index Must not be -1.
@param flags Selects which direction should be preferred if no exact
             match is available.
@return &gt;= 0 on success (but not necessarily the new offset)

</member>
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="530">
Get the next timestamp in stream[stream_index].time_base units.
@return the timestamp or AV_NOPTS_VALUE if an error occurred

</member>
<member name="F:libffmpeg.AVInputFormat.flags" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="537">
Can use flags: AVFMT_NOFILE, AVFMT_NEEDNUMBER, AVFMT_SHOW_IDS,
AVFMT_GENERIC_INDEX, AVFMT_TS_DISCONT, AVFMT_NOBINSEARCH,
AVFMT_NOGENSEARCH, AVFMT_NO_BYTE_SEEK.

</member>
<member name="F:libffmpeg.AVInputFormat.extensions" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="544">
If extensions are defined, then no probe is done. You should
usually not use extension format guessing because it is not
reliable enough

</member>
<member name="F:libffmpeg.AVInputFormat.value" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="551">
General purpose read-only value that the format can use.

</member>
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="556">
Start/resume playing - only meaningful if using a network-based format
(RTSP).

</member>
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="562">
Pause playing - only meaningful if using a network-based format
(RTSP).

</member>
<!-- Discarding badly formed XML document comment for member 'T:libffmpeg.AVFormatContext'. -->
<member name="T:libffmpeg.AVStreamParseType" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="587">
@}

</member>
<member name="T:libffmpeg.AVStream" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="620">
Track should be used during playback by default.
Useful for subtitle track that should be displayed
even when user did not explicitly ask for subtitles.

Stream structure.
New fields can be added to the end with minor version bumps.
Removal, reordering and changes to existing fields require a major
version bump.
sizeof(AVStream) must not be used outside libav*.

</member>
<member name="F:libffmpeg.AVStream.r_frame_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="641">
Real base framerate of the stream.
This is the lowest framerate with which all timestamps can be
represented accurately (it is the least common multiple of all
framerates in the stream). Note, this value is just a guess!
For example, if the time base is 1/90000 and all frames have either
approximately 3600 or 1800 timer ticks, then r_frame_rate will be 50/1.

</member>
<member name="T:libffmpeg.AVFrac" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="657">
encoding: pts generation when outputting stream

</member>
<member name="F:libffmpeg.AVStream.time_base" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="662">
This is the fundamental unit of time (in seconds) in terms
of which frame timestamps are represented. For fixed-fps content,
time base should be 1/framerate and timestamp increments should be 1.
decoding: set by libavformat
encoding: set by libavformat in av_write_header

</member>
<member name="F:libffmpeg.AVStream.quality" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="681">
Quality, as it has been removed from AVCodecContext and put in AVVideoFrame.
MN: dunno if that is the right place for it

</member>
<member name="F:libffmpeg.AVStream.start_time" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="688">
Decoding: pts of the first frame of the stream in presentation order, in stream time base.
Only set this if you are absolutely 100% sure that the value you set
it to really is the pts of the first frame.
This may be undefined (AV_NOPTS_VALUE).
@note The ASF header does NOT contain a correct start_time the ASF
demuxer must NOT set this.

</member>
<member name="F:libffmpeg.AVStream.duration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="698">
Decoding: duration of the stream, in stream time base.
If a source file does not specify a duration, but does specify
a bitrate, this value will be estimated from bitrate and file size.

</member>
<member name="F:libffmpeg.AVStream.sample_aspect_ratio" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="730">
sample aspect ratio (0 if unknown)
- encoding: Set by user.
- decoding: Set by libavformat.

</member>
<member name="F:libffmpeg.AVStream.reference_dts" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="747">
 Timestamp corresponding to the last dts sync point.

 Initialized when AVCodecParserContext.dts_sync_point &gt;= 0 and
 a DTS is received from the underlying container. Otherwise set to
 AV_NOPTS_VALUE by default.

</member>
<member name="F:libffmpeg.AVStream.probe_packets" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="756">
Number of packets to buffer for codec probing
NOT PART OF PUBLIC API

</member>
<member name="T:libffmpeg.AVPacketList" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="763">
last packet in packet_buffer for this stream when muxing.
Used internally, NOT PART OF PUBLIC API, do not read or
write from outside of libav*

</member>
<member name="F:libffmpeg.AVStream.avg_frame_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="771">
Average framerate

</member>
<member name="F:libffmpeg.AVStream.codec_info_nb_frames" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="784">
Number of frames that have been demuxed during av_find_stream_info()

</member>
<member name="F:libffmpeg.AVStream.stream_identifier" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="789">
Stream Identifier
This is the MPEG-TS stream identifier +1
0 means unknown

</member>
<member name="F:libffmpeg.AVStream.request_probe" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="812">
flag to indicate that probing is requested
NOT PART OF PUBLIC API

</member>
<member name="T:libffmpeg.AVProgram" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="864">
New fields can be added to the end with minor version bumps.
Removal, reordering and changes to existing fields require a major
version bump.
sizeof(AVProgram) must not be used outside libav*.

</member>
<member name="T:libffmpeg.AVFormatContext" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="893">
Format I/O context.
New fields can be added to the end with minor version bumps.
Removal, reordering and changes to existing fields require a major
version bump.
sizeof(AVFormatContext) must not be used outside libav*, use
avformat_alloc_context() to create an AVFormatContext.

</member>
<member name="F:libffmpeg.AVFormatContext.av_class" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="902">
A class for logging and AVOptions. Set by avformat_alloc_context().
Exports (de)muxer private options if they exist.

</member>
<member name="T:libffmpeg.AVInputFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="908">
 Can only be iformat or oformat, not both at the same time.

 decoding: set by avformat_open_input().
 encoding: set by the user.

</member>
<member name="F:libffmpeg.AVFormatContext.priv_data" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="917">
Format private data. This is an AVOptions-enabled struct
if and only if iformat/oformat.priv_class is not NULL.

</member>
<member name="F:libffmpeg.AVFormatContext.nb_streams" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="936">
 A list of all streams in the file. New streams are created with
 avformat_new_stream().

 decoding: streams are created by libavformat in avformat_open_input().
 If AVFMTCTX_NOHEADER is set in ctx_flags, then new streams may also
 appear in av_read_frame().
 encoding: streams are created by the user before avformat_write_header().

</member>
<member name="F:libffmpeg.AVFormatContext.timestamp" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="951">
@deprecated use 'creation_time' metadata tag instead

</member>
<member name="T:libffmpeg.AVPacketList" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="960">
This buffer is only needed when packets were already buffered but
not decoded, for example to get the codec parameters in MPEG
streams.

</member>
<member name="F:libffmpeg.AVFormatContext.start_time" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="968">
Decoding: position of the first frame of the component, in
AV_TIME_BASE fractional seconds. NEVER set this value directly:
It is deduced from the AVStream values.

</member>
<member name="F:libffmpeg.AVFormatContext.duration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="975">
Decoding: duration of the stream, in AV_TIME_BASE fractional
seconds. Only set this value if you know none of the individual stream
durations and also do not set any of them. This is deduced from the
AVStream values if not set.

</member>
<member name="F:libffmpeg.AVFormatContext.file_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="984">
decoding: total file size, 0 if unknown

</member>
<member name="F:libffmpeg.AVFormatContext.bit_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="990">
Decoding: total stream bitrate in bit/s, 0 if not
available. Never set it directly if the file_size and the
duration are known as FFmpeg can compute it automatically.

</member>
<member name="F:libffmpeg.AVFormatContext.mux_rate" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1006">
use mpeg muxer private options instead

</member>
<member name="F:libffmpeg.AVFormatContext.loop_output" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1020">
 number of times to loop output in formats that support it

 @deprecated use the 'loop' private option in the gif muxer.

</member>
<member name="F:libffmpeg.AVFormatContext.loop_input" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1046">
@deprecated, use the 'loop' img2 demuxer private option.

</member>
<member name="F:libffmpeg.AVFormatContext.probesize" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1052">
decoding: size of data to probe; encoding: unused.

</member>
<member name="F:libffmpeg.AVFormatContext.max_analyze_duration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1057">
decoding: maximum time (in AV_TIME_BASE units) during which the input should
be analyzed in avformat_find_stream_info().

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1069">
Forced video codec_id.
Demuxing: Set by user.

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1075">
Forced audio codec_id.
Demuxing: Set by user.

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1081">
Forced subtitle codec_id.
Demuxing: Set by user.

</member>
<member name="F:libffmpeg.AVFormatContext.max_index_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1087">
Maximum amount of memory in bytes to use for the index of each stream.
If the index exceeds this size, entries will be discarded as
needed to maintain a smaller size. This can lead to slower or less
accurate seeking (depends on demuxer).
Demuxers for which a full in-memory index is mandatory will ignore
this.
muxing  : unused
demuxing: set by user

</member>
<member name="F:libffmpeg.AVFormatContext.max_picture_buffer" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1099">
Maximum amount of memory in bytes to use for buffering frames
obtained from realtime capture devices.

</member>
<member name="F:libffmpeg.AVFormatContext.debug" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1108">
Flags to enable debugging.

</member>
<member name="T:libffmpeg.AVPacketList" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1115">
Raw packets from the demuxer, prior to parsing and decoding.
This buffer is used for buffering packets until the codec can
be identified, as parsing cannot be done without knowing the
codec.

</member>
<member name="F:libffmpeg.AVFormatContext.raw_packet_buffer_remaining_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1130">
Remaining size available for raw_packet_buffer, in bytes.
NOT PART OF PUBLIC API

</member>
<member name="F:libffmpeg.AVFormatContext.start_time_realtime" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1138">
Start time of the stream in real world time, in microseconds
since the unix epoch (00:00 1st January 1970). That is, pts=0
in the stream was captured at this real world time.
- encoding: Set by user.
- decoding: Unused.

</member>
<member name="F:libffmpeg.AVFormatContext.fps_probe_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1147">
decoding: number of frames used to probe fps

</member>
<member name="F:libffmpeg.AVFormatContext.error_recognition" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1152">
Error recognition; higher values will detect more errors but may
misdetect some more or less valid parts as errors.
- encoding: unused
- decoding: Set by user.

</member>
<member name="F:libffmpeg.AVFormatContext.interrupt_callback" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1160">
 Custom interrupt callbacks for the I/O layer.

 decoding: set by the user before avformat_open_input().
 encoding: set by the user before avformat_write_header()
 (mainly useful for AVFMT_NOFILE formats). The callback
 should also be passed to avio_open2() if it's used to
 open the file.

</member>
<member name="F:libffmpeg.AVFormatContext.ts_id" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1171">
Transport stream id.
This will be moved into demuxer private options. Thus no API/ABI compatibility

</member>
<member name="F:libffmpeg.AVFormatContext.audio_preload" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1177">
Audio preload in microseconds.
Note, not all formats support this and unpredictable things may happen if it is used when not supported.
- encoding: Set by user via AVOptions (NO direct access)
- decoding: unused

</member>
<member name="F:libffmpeg.AVFormatContext.max_chunk_duration" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1185">
Max chunk time in microseconds.
Note, not all formats support this and unpredictable things may happen if it is used when not supported.
- encoding: Set by user via AVOptions (NO direct access)
- decoding: unused

</member>
<member name="F:libffmpeg.AVFormatContext.max_chunk_size" decl="false" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1193">
Max chunk size in bytes
Note, not all formats support this and unpredictable things may happen if it is used when not supported.
- encoding: Set by user via AVOptions (NO direct access)
- decoding: unused

</member>
<member name="M:libffmpeg.avformat_version" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1245">
 @defgroup lavf_core Core functions
 @ingroup libavf

 Functions for querying libavformat capabilities, allocating core structures,
 etc.
 @{

Return the LIBAVFORMAT_VERSION_INT constant.

</member>
<member name="M:libffmpeg.avformat_configuration" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1259">
Return the libavformat build-time configuration.

</member>
<member name="M:libffmpeg.avformat_license" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1264">
Return the libavformat license.

</member>
<member name="M:libffmpeg.av_register_all" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1269">
 Initialize libavformat and register all the muxers, demuxers and
 protocols. If you do not call this function, then you can select
 exactly which formats you want to support.

 @see av_register_input_format()
 @see av_register_output_format()
 @see av_register_protocol()

</member>
<member name="M:libffmpeg.avformat_network_init" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1283">
 Do global initialization of network components. This is optional,
 but recommended, since it avoids the overhead of implicitly
 doing the setup for each session.

 Calling this function will become mandatory if using network
 protocols at some major version bump.

</member>
<member name="M:libffmpeg.avformat_network_deinit" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1293">
Undo the initialization done by avformat_network_init.

</member>
<member name="M:libffmpeg.av_iformat_next(libffmpeg.AVInputFormat*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1298">
If f is NULL, returns the first registered input format,
if f is non-NULL, returns the next registered input format after f
or NULL if f is the last one.

</member>
<member name="M:libffmpeg.av_oformat_next(libffmpeg.AVOutputFormat*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1305">
If f is NULL, returns the first registered output format,
if f is non-NULL, returns the next registered output format after f
or NULL if f is the last one.

</member>
<member name="M:libffmpeg.avformat_alloc_context" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1312">
Allocate an AVFormatContext.
avformat_free_context() can be used to free the context and everything
allocated by the framework within it.

</member>
<member name="M:libffmpeg.avformat_free_context(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1319">
Free an AVFormatContext and all its streams.
@param s context to free

</member>
<member name="M:libffmpeg.avformat_get_class" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1325">
 Get the AVClass for AVFormatContext. It can be used in combination with
 AV_OPT_SEARCH_FAKE_OBJ for examining options.

 @see av_opt_find().

</member>
<member name="M:libffmpeg.avformat_new_stream(libffmpeg.AVFormatContext*,libffmpeg.AVCodec*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1333">
 Add a new stream to a media file.

 When demuxing, it is called by the demuxer in read_header(). If the
 flag AVFMTCTX_NOHEADER is set in s.ctx_flags, then it may also
 be called in read_packet().

 When muxing, should be called by the user before avformat_write_header().

 @param c If non-NULL, the AVCodecContext corresponding to the new stream
 will be initialized to use this codec. This is needed for e.g. codec-specific
 defaults to be set, so codec should be provided if it is known.

 @return newly created stream or NULL on error.

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1352">
@}

</member>
<member name="M:libffmpeg.avformat_alloc_output_context(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVOutputFormat*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1369">
@deprecated deprecated in favor of avformat_alloc_output_context2()

</member>
<member name="M:libffmpeg.avformat_alloc_output_context2(libffmpeg.AVFormatContext**,libffmpeg.AVOutputFormat*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1378">
 Allocate an AVFormatContext for an output format.
 avformat_free_context() can be used to free the context and
 everything allocated by the framework within it.

 @param *ctx is set to the created format context, or to NULL in
 case of failure
 @param oformat format to use for allocating the context, if NULL
 format_name and filename are used instead
 @param format_name the name of output format to use for allocating the
 context, if NULL filename is used instead
 @param filename the name of the filename to use for allocating the
 context, may be NULL
 @return &gt;= 0 in case of success, a negative AVERROR code in case of
 failure

</member>
<member name="M:libffmpeg.av_find_input_format(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1397">
@addtogroup lavf_decoding
@{

Find AVInputFormat based on the short name of the input format.

</member>
<member name="M:libffmpeg.av_probe_input_format(libffmpeg.AVProbeData*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1407">
 Guess the file format.

 @param is_opened Whether the file is already opened; determines whether
                  demuxers with or without AVFMT_NOFILE are probed.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_probe_input_format2(libffmpeg.AVProbeData*,System.Int32,System.Int32*)'. -->
<member name="M:libffmpeg.av_probe_input_format3(libffmpeg.AVProbeData*,System.Int32,System.Int32*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1428">
 Guess the file format.

 @param is_opened Whether the file is already opened; determines whether
                  demuxers with or without AVFMT_NOFILE are probed.
 @param score_ret The score of the best detection.

</member>
<member name="M:libffmpeg.av_probe_input_buffer(libffmpeg.AVIOContext*,libffmpeg.AVInputFormat**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Void*,System.UInt32,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1437">
 Probe a bytestream to determine the input format. Each time a probe returns
 with a score that is too low, the probe buffer size is increased and another
 attempt is made. When the maximum probe size is reached, the input format
 with the highest score is returned.

 @param pb the bytestream to probe
 @param fmt the input format is put here
 @param filename the filename of the stream
 @param logctx the log context
 @param offset the offset within the bytestream to probe from
 @param max_probe_size the maximum probe buffer size (zero for default)
 @return 0 in case of success, a negative value corresponding to an
 AVERROR code otherwise

</member>
<member name="M:libffmpeg.av_open_input_stream(libffmpeg.AVFormatContext**,libffmpeg.AVIOContext*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVInputFormat*,libffmpeg.AVFormatParameters*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1457">
Allocate all the structures needed to read an input stream.
       This does not open the needed codecs for decoding the stream[s].
@deprecated use avformat_open_input instead.

</member>
<member name="M:libffmpeg.av_open_input_file(libffmpeg.AVFormatContext**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVInputFormat*,System.Int32,libffmpeg.AVFormatParameters*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1466">
 Open a media file as input. The codecs are not opened. Only the file
 header (if present) is read.

 @param ic_ptr The opened media file handle is put here.
 @param filename filename to open
 @param fmt If non-NULL, force the file format to use.
 @param buf_size optional buffer size (zero if default is OK)
 @param ap Additional parameters needed when opening the file
           (NULL if default).
 @return 0 if OK, AVERROR_xxx otherwise

 @deprecated use avformat_open_input instead.

</member>
<member name="M:libffmpeg.avformat_open_input(libffmpeg.AVFormatContext**,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,libffmpeg.AVInputFormat*,libffmpeg.AVDictionary**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1486">
 Open an input stream and read the header. The codecs are not opened.
 The stream must be closed with av_close_input_file().

 @param ps Pointer to user-supplied AVFormatContext (allocated by avformat_alloc_context).
           May be a pointer to NULL, in which case an AVFormatContext is allocated by this
           function and written into ps.
           Note that a user-supplied AVFormatContext will be freed on failure.
 @param filename Name of the stream to open.
 @param fmt If non-NULL, this parameter forces a specific input format.
            Otherwise the format is autodetected.
 @param options  A dictionary filled with AVFormatContext and demuxer-private options.
                 On return this parameter will be destroyed and replaced with a dict containing
                 options that were not found. May be NULL.

 @return 0 on success, a negative AVERROR on failure.

 @note If you want to use custom IO, preallocate the format context and set its pb field.

</member>
<member name="M:libffmpeg.av_find_stream_info(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1510">
 Read packets of a media file to get stream information. This
 is useful for file formats with no headers such as MPEG. This
 function also computes the real framerate in case of MPEG-2 repeat
 frame mode.
 The logical file position is not changed by this function;
 examined packets may be buffered for later processing.

 @param ic media file handle
 @return &gt;=0 if OK, AVERROR_xxx on error
 @todo Let the user decide somehow what information is needed so that
       we do not waste time getting stuff the user does not need.

 @deprecated use avformat_find_stream_info.

</member>
<member name="M:libffmpeg.avformat_find_stream_info(libffmpeg.AVFormatContext*,libffmpeg.AVDictionary**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1529">
 Read packets of a media file to get stream information. This
 is useful for file formats with no headers such as MPEG. This
 function also computes the real framerate in case of MPEG-2 repeat
 frame mode.
 The logical file position is not changed by this function;
 examined packets may be buffered for later processing.

 @param ic media file handle
 @param options  If non-NULL, an ic.nb_streams long array of pointers to
                 dictionaries, where i-th member contains options for
                 codec corresponding to i-th stream.
                 On return each dictionary will be filled with options that were not found.
 @return &gt;=0 if OK, AVERROR_xxx on error

 @note this function isn't guaranteed to open all the codecs, so
       options being non-empty at return is a perfectly normal behavior.

 @todo Let the user decide somehow what information is needed so that
       we do not waste time getting stuff the user does not need.

</member>
<member name="M:libffmpeg.av_find_program_from_stream(libffmpeg.AVFormatContext*,libffmpeg.AVProgram*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1552">
 Find the programs which belong to a given stream.

 @param ic    media file handle
 @param last  the last found program, the search will start after this
              program, or from the beginning if it is NULL
 @param s     stream index
 @return the next program which belongs to s, NULL if no program is found or
         the last program is not among the programs of ic.

</member>
<member name="T:libffmpeg.AVMediaType" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1564">
 Find the "best" stream in the file.
 The best stream is determined according to various heuristics as the most
 likely to be what the user expects.
 If the decoder parameter is non-NULL, av_find_best_stream will find the
 default decoder for the stream's codec; streams for which no decoder can
 be found are ignored.

 @param ic                media file handle
 @param type              stream type: video, audio, subtitles, etc.
 @param wanted_stream_nb  user-requested stream number,
                          or -1 for automatic selection
 @param related_stream    try to find a stream related (eg. in the same
                          program) to this one, or -1 if none
 @param decoder_ret       if non-NULL, returns the decoder for the
                          selected stream
 @param flags             flags; none are currently defined
 @return  the non-negative stream number in case of success,
          AVERROR_STREAM_NOT_FOUND if no stream with the requested type
          could be found,
          AVERROR_DECODER_NOT_FOUND if streams were found but no decoder
 @note  If av_find_best_stream returns successfully and decoder_ret is not
        NULL, then *decoder_ret is guaranteed to be set to a valid AVCodec.

</member>
<member name="M:libffmpeg.av_read_packet(libffmpeg.AVFormatContext*,libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1595">
 Read a transport packet from a media file.

 This function is obsolete and should never be used.
 Use av_read_frame() instead.

 @param s media file handle
 @param pkt is filled
 @return 0 if OK, AVERROR_xxx on error

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_read_frame(libffmpeg.AVFormatContext*,libffmpeg.AVPacket*)'. -->
<member name="M:libffmpeg.av_seek_frame(libffmpeg.AVFormatContext*,System.Int32,System.Int64,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1633">
Seek to the keyframe at timestamp.
'timestamp' in 'stream_index'.
@param stream_index If stream_index is (-1), a default
stream is selected, and timestamp is automatically converted
from AV_TIME_BASE units to the stream specific time_base.
@param timestamp Timestamp in AVStream.time_base units
       or, if no stream is specified, in AV_TIME_BASE units.
@param flags flags which select direction and seeking mode
@return &gt;= 0 on success

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.avformat_seek_file(libffmpeg.AVFormatContext*,System.Int32,System.Int64,System.Int64,System.Int64,System.Int32)'. -->
<member name="M:libffmpeg.av_read_play(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1675">
Start playing a network-based stream (e.g. RTSP stream) at the
current position.

</member>
<member name="M:libffmpeg.av_read_pause(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1681">
 Pause a network-based stream (e.g. RTSP stream).

 Use av_read_play() to resume it.

</member>
<member name="M:libffmpeg.av_close_input_stream(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1689">
Free a AVFormatContext allocated by av_open_input_stream.
@param s context to free
@deprecated use av_close_input_file()

</member>
<member name="M:libffmpeg.av_close_input_file(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1699">
 @deprecated use avformat_close_input()
 Close a media file (but not its codecs).

 @param s media file handle

</member>
<member name="M:libffmpeg.avformat_close_input(libffmpeg.AVFormatContext**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1709">
Close an opened input AVFormatContext. Free it and all its contents
and set *s to NULL.

</member>
<member name="M:libffmpeg.av_new_stream(libffmpeg.AVFormatContext*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1714">
@}

 Add a new stream to a media file.

 Can only be called in the read_header() function. If the flag
 AVFMTCTX_NOHEADER is in the format context, then new streams
 can be added in read_packet too.

 @param s media file handle
 @param id file-format-dependent stream ID

</member>
<member name="M:libffmpeg.av_set_pts_info(libffmpeg.AVStream*,System.Int32,System.UInt32,System.UInt32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1734">
@deprecated this function is not supposed to be called outside of lavf

</member>
<member name="M:libffmpeg.av_set_parameters(libffmpeg.AVFormatContext*,libffmpeg.AVFormatParameters*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1763">
@deprecated pass the options to avformat_write_header directly.

</member>
<member name="M:libffmpeg.avformat_write_header(libffmpeg.AVFormatContext*,libffmpeg.AVDictionary**)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1769">
@addtogroup lavf_encoding
@{

 Allocate the stream private data and write the stream header to
 an output media file.

 @param s Media file handle, must be allocated with avformat_alloc_context().
          Its oformat field must be set to the desired output format;
          Its pb field must be set to an already openened AVIOContext.
 @param options  An AVDictionary filled with AVFormatContext and muxer-private options.
                 On return this parameter will be destroyed and replaced with a dict containing
                 options that were not found. May be NULL.

 @return 0 on success, negative AVERROR on failure.

 @see av_opt_find, av_dict_set, avio_open, av_oformat_next.

</member>
<member name="M:libffmpeg.av_write_header(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1791">
 Allocate the stream private data and write the stream header to an
 output media file.
 @note: this sets stream time-bases, if possible to stream-&gt;codec-&gt;time_base
 but for some formats it might also be some other time base

 @param s media file handle
 @return 0 if OK, AVERROR_xxx on error

 @deprecated use avformat_write_header.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_write_frame(libffmpeg.AVFormatContext*,libffmpeg.AVPacket*)'. -->
<member name="M:libffmpeg.av_interleaved_write_frame(libffmpeg.AVFormatContext*,libffmpeg.AVPacket*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1823">
 Write a packet to an output media file ensuring correct interleaving.

 The packet must contain one audio or video frame.
 If the packets are already correctly interleaved, the application should
 call av_write_frame() instead as it is slightly faster. It is also important
 to keep in mind that completely non-interleaved input will need huge amounts
 of memory to interleave with this, so it is preferable to interleave at the
 demuxer level.

 @param s media file handle
 @param pkt The packet containing the data to be written. Libavformat takes
 ownership of the data and will free it when it sees fit using the packet's
 @ref AVPacket.destruct "destruct" field. The caller must not access the data
 after this function returns, as it may already be freed.
 Packet's @ref AVPacket.stream_index "stream_index" field must be set to the
 index of the corresponding stream in @ref AVFormatContext.streams
 "s.streams".
 It is very strongly recommended that timing information (@ref AVPacket.pts
 "pts", @ref AVPacket.dts "dts" @ref AVPacket.duration "duration") is set to
 correct values.

 @return 0 on success, a negative AVERROR on error.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_interleave_packet_per_dts(libffmpeg.AVFormatContext*,libffmpeg.AVPacket*,libffmpeg.AVPacket*,System.Int32)'. -->
<member name="M:libffmpeg.av_write_trailer(libffmpeg.AVFormatContext*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1867">
 Write the stream trailer to an output media file and free the
 file private data.

 May only be called after a successful call to av_write_header.

 @param s media file handle
 @return 0 if OK, AVERROR_xxx on error

</member>
<member name="M:libffmpeg.av_guess_format(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1878">
 Return the output format in the list of registered output formats
 which best matches the provided parameters, or return NULL if
 there is no match.

 @param short_name if non-NULL checks if short_name matches with the
 names of the registered formats
 @param filename if non-NULL checks if filename terminates with the
 extensions of the registered formats
 @param mime_type if non-NULL checks if mime_type matches with the
 MIME type of the registered formats

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1894">
Guess the codec ID based upon muxer and filename.

</member>
<member name="T:libffmpeg.AVFormatContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1901">
Get timing information for the data currently output.
The exact meaning of "currently output" depends on the format.
It is mostly relevant for devices that have an internal buffer and/or
work in real time.
@param s          media file handle
@param stream     stream in the media file
@param dts[out]   DTS of the last packet output for the stream, in stream
                  time_base units
@param wall[out]  absolute time when that packet whas output,
                  in microsecond
@return  0 if OK, AVERROR(ENOSYS) if the format does not support it
Note: some formats or devices may not allow to measure dts and wall
atomically.

</member>
<member name="M:libffmpeg.av_hex_dump(libffmpeg._iobuf*,System.Byte*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1920">
@}

 @defgroup lavf_misc Utility functions
 @ingroup libavf
 @{

 Miscelaneous utility functions related to both muxing and demuxing
 (or neither).

 Send a nice hexadecimal dump of a buffer to the specified file stream.

 @param f The file stream pointer where the dump should be sent to.
 @param buf buffer
 @param size buffer size

 @see av_hex_dump_log, av_pkt_dump2, av_pkt_dump_log2

</member>
<member name="M:libffmpeg.av_hex_dump_log(System.Void*,System.Int32,System.Byte*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1945">
 Send a nice hexadecimal dump of a buffer to the log.

 @param avcl A pointer to an arbitrary struct of which the first field is a
 pointer to an AVClass struct.
 @param level The importance level of the message, lower values signifying
 higher importance.
 @param buf buffer
 @param size buffer size

 @see av_hex_dump, av_pkt_dump2, av_pkt_dump_log2

</member>
<member name="M:libffmpeg.av_pkt_dump2(libffmpeg._iobuf*,libffmpeg.AVPacket*,System.Int32,libffmpeg.AVStream*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1959">
 Send a nice dump of a packet to the specified file stream.

 @param f The file stream pointer where the dump should be sent to.
 @param pkt packet to dump
 @param dump_payload True if the payload must be displayed, too.
 @param st AVStream that the packet belongs to

</member>
<member name="M:libffmpeg.av_pkt_dump_log2(System.Void*,System.Int32,libffmpeg.AVPacket*,System.Int32,libffmpeg.AVStream*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1970">
 Send a nice dump of a packet to the log.

 @param avcl A pointer to an arbitrary struct of which the first field is a
 pointer to an AVClass struct.
 @param level The importance level of the message, lower values signifying
 higher importance.
 @param pkt packet to dump
 @param dump_payload True if the payload must be displayed, too.
 @param st AVStream that the packet belongs to

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1984">
 Get the CodecID for the given codec tag tag.
 If no codec id is found returns CODEC_ID_NONE.

 @param tags list of supported codec_id-codec_tag pairs, as stored
 in AVInputFormat.codec_tag and AVOutputFormat.codec_tag

</member>
<member name="T:libffmpeg.AVCodecTag" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="1993">
 Get the codec tag for the given codec id id.
 If no codec tag is found returns 0.

 @param tags list of supported codec_id-codec_tag pairs, as stored
 in AVInputFormat.codec_tag and AVOutputFormat.codec_tag

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.av_index_search_timestamp(libffmpeg.AVStream*,System.Int64,System.Int32)'. -->
<member name="M:libffmpeg.av_add_index_entry(libffmpeg.AVStream*,System.Int64,System.Int64,System.Int32,System.Int32,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2014">
 Add an index entry into a sorted list. Update the entry if the list
 already contains it.

 @param timestamp timestamp in the time base of the given stream

</member>
<member name="M:libffmpeg.av_url_split(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.Int32*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2024">
 Split a URL string into components.

 The pointers to buffers for storing individual components may be null,
 in order to ignore that component. Buffers for components not found are
 set to empty strings. If the port is not found, it is set to a negative
 value.

 @param proto the buffer for the protocol
 @param proto_size the size of the proto buffer
 @param authorization the buffer for the authorization
 @param authorization_size the size of the authorization buffer
 @param hostname the buffer for the host name
 @param hostname_size the size of the hostname buffer
 @param port_ptr a pointer to store the port number in
 @param path the buffer for the path
 @param path_size the size of the path buffer
 @param url the URL to split

</member>
<member name="M:libffmpeg.dump_format(libffmpeg.AVFormatContext*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2051">
@deprecated Deprecated in favor of av_dump_format().

</member>
<member name="M:libffmpeg.parse_date(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2066">
 Parse datestr and return a corresponding number of microseconds.

 @param datestr String representing a date or a duration.
 See av_parse_time() for the syntax of the provided string.
 @deprecated in favor of av_parse_time()

</member>
<member name="M:libffmpeg.av_gettime" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2077">
Get the current time in microseconds.

</member>
<member name="M:libffmpeg.find_info_tag(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2083">
@deprecated use av_find_info_tag in libavutil instead.

</member>
<member name="M:libffmpeg.av_get_frame_filename(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2089">
 Return in 'buf' the path with '%d' replaced by a number.

 Also handles the '%0nd' format where 'n' is the total number
 of digits and '%%'.

 @param buf destination buffer
 @param buf_size destination buffer size
 @param path numbered sequence string
 @param number frame number
 @return 0 if OK, -1 on format error

</member>
<member name="M:libffmpeg.av_filename_number_test(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2104">
 Check whether filename actually is a numbered sequence generator.

 @param filename possible numbered sequence string
 @return 1 if a valid numbered sequence string, 0 otherwise

</member>
<member name="M:libffmpeg.av_sdp_create(libffmpeg.AVFormatContext**,System.Int32,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte*,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2112">
 Generate an SDP for an RTP session.

 @param ac array of AVFormatContexts describing the RTP streams. If the
           array is composed by only one context, such context can contain
           multiple AVStreams (one AVStream per RTP stream). Otherwise,
           all the contexts in the array (an AVCodecContext per RTP stream)
           must contain only one AVStream.
 @param n_files number of AVCodecContexts contained in ac
 @param buf buffer where the SDP will be stored (must be allocated by
            the caller)
 @param size the size of the buffer
 @return 0 if OK, AVERROR_xxx on error

</member>
<member name="M:libffmpeg.av_match_ext(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*,System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2132">
 Return a positive value if the given filename has one of the given
 extensions, 0 otherwise.

 @param extensions a comma-separated list of filename extensions

</member>
<member name="T:libffmpeg.CodecID" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2140">
 Test if the given container can store a codec.

 @param std_compliance standards compliance level, one of FF_COMPLIANCE_*

 @return 1 if codec with ID codec_id can be stored in ofmt, 0 if it cannot.
         A negative number if this information is not available.

</member>
<member name="M:libffmpeg.swscale_version" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libavformat\avformat.h" line="2150">
@}

@file
@brief
    external api for the swscale stuff

Those FF_API_* defines are not part of public API.
They may change, break or disappear at any time.

Return the LIBSWSCALE_VERSION_INT constant.

</member>
<member name="M:libffmpeg.swscale_configuration" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="67">
Return the libswscale build-time configuration.

</member>
<member name="M:libffmpeg.swscale_license" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="72">
Return the libswscale license.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.sws_getCoefficients(System.Int32)'. -->
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="155">
Return a positive value if pix_fmt is a supported input format, 0
otherwise.

</member>
<member name="T:libffmpeg.PixelFormat" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="161">
Return a positive value if pix_fmt is a supported output format, 0
otherwise.

</member>
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="167">
Allocate an empty SwsContext. This must be filled and passed to
sws_init_context(). For filling see AVOptions, options.c and
sws_setColorspaceDetails().

</member>
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="174">
 Initialize the swscaler context sws_context.

 @return zero or positive value on success, a negative value on
 error

</member>
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="182">
Free the swscaler context swsContext.
If swsContext is NULL, then does nothing.

</member>
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="189">
 Allocate and return an SwsContext. You need it to perform
 scaling/conversion operations using sws_scale().

 @param srcW the width of the source image
 @param srcH the height of the source image
 @param srcFormat the source image format
 @param dstW the width of the destination image
 @param dstH the height of the destination image
 @param dstFormat the destination image format
 @param flags specify which algorithm and options to use for rescaling
 @return a pointer to an allocated context, or NULL in case of error
 @note this function is to be removed after a saner alternative is
       written
 @deprecated Use sws_getCachedContext() instead.

</member>
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="211">
 Scale the image slice in srcSlice and put the resulting scaled
 slice in the image in dst. A slice is a sequence of consecutive
 rows in an image.

 Slices have to be provided in sequential order, either in
 top-bottom or bottom-top order. If slices are provided in
 non-sequential order the behavior of the function is undefined.

 @param c         the scaling context previously created with
                  sws_getContext()
 @param srcSlice  the array containing the pointers to the planes of
                  the source slice
 @param srcStride the array containing the strides for each plane of
                  the source image
 @param srcSliceY the position in the source image of the slice to
                  process, that is the number (counted starting from
                  zero) in the image of the first row of the slice
 @param srcSliceH the height of the source slice, that is the number
                  of rows in the slice
 @param dst       the array containing the pointers to the planes of
                  the destination image
 @param dstStride the array containing the strides for each plane of
                  the destination image
 @return          the height of the output slice

</member>
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="241">
@param inv_table the yuv2rgb coefficients, normally ff_yuv2rgb_coeffs[x]
@return -1 if not supported

</member>
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="249">
@return -1 if not supported

</member>
<member name="M:libffmpeg.sws_allocVec(System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="256">
Allocate and return an uninitialized vector with length coefficients.

</member>
<member name="M:libffmpeg.sws_getGaussianVec(System.Double,System.Double)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="261">
Return a normalized Gaussian curve used to filter stuff
quality = 3 is high quality, lower is lower quality.

</member>
<member name="M:libffmpeg.sws_getConstVec(System.Double,System.Int32)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="267">
Allocate and return a vector with length coefficients, all
with the same value c.

</member>
<member name="M:libffmpeg.sws_getIdentityVec" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="273">
Allocate and return a vector with just one coefficient, with
value 1.0.

</member>
<member name="M:libffmpeg.sws_scaleVec(libffmpeg.SwsVector*,System.Double)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="279">
Scale all the coefficients of a by the scalar value.

</member>
<member name="M:libffmpeg.sws_normalizeVec(libffmpeg.SwsVector*,System.Double)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="284">
Scale all the coefficients of a so that their sum equals height.

</member>
<member name="M:libffmpeg.sws_cloneVec(libffmpeg.SwsVector*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="293">
Allocate and return a clone of the vector a, that is a vector
with the same coefficients as a.

</member>
<!-- Discarding badly formed XML document comment for member 'M:libffmpeg.sws_printVec2(libffmpeg.SwsVector*,libffmpeg.AVClass*,System.Int32)'. -->
<member name="T:libffmpeg.SwsContext" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="313">
 Check if context can be reused, otherwise reallocate a new one.

 If context is NULL, just calls sws_getContext() to get a new
 context. Otherwise, checks if the parameters are the ones already
 saved in context. If that is the case, returns the current
 context. Otherwise, frees context and gets a new context with
 the new parameters.

 Be warned that srcFilter and dstFilter are not checked, they
 are assumed to remain the same.

</member>
<member name="M:libffmpeg.sws_convertPalette8ToPacked32(System.Byte!System.Runtime.CompilerServices.IsConst*,System.Byte*,System.Int32,System.Byte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="331">
 Convert an 8-bit paletted frame into a frame with a color depth of 32 bits.

 The output frame will have the same packed format as the palette.

 @param src        source frame buffer
 @param dst        destination frame buffer
 @param num_pixels number of pixels to convert
 @param palette    array with [256] entries, which must match color arrangement (RGB or BGR) of src

</member>
<member name="M:libffmpeg.sws_convertPalette8ToPacked24(System.Byte!System.Runtime.CompilerServices.IsConst*,System.Byte*,System.Int32,System.Byte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="343">
 Convert an 8-bit paletted frame into a frame with a color depth of 24 bits.

 With the palette format "ABCD", the destination frame ends up with the format "ABC".

 @param src        source frame buffer
 @param dst        destination frame buffer
 @param num_pixels number of pixels to convert
 @param palette    array with [256] entries, which must match color arrangement (RGB or BGR) of src

</member>
<member name="M:libffmpeg.sws_get_class" decl="true" source="c:\users\kevin\dropbox\articles\aforge\src\externals\ffmpeg\include\libswscale\swscale.h" line="355">
 Get the AVClass for swsContext. It can be used in combination with
 AV_OPT_SEARCH_FAKE_OBJ for examining options.

 @see av_opt_find().

</member>
</members>
</doc>