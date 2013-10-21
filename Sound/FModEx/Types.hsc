{-# LANGUAGE CPP, ForeignFunctionInterface #-}

{- |
Module      :  Sound.FModEx.Types
Description :  FModEx library C types binding
Copyright   :  (c) Dimitri Sabadie
License     :  GPL-3

Maintainer  :  dimitri.sabadie@gmail.com
Stability   :  experimental
Portability :  Linux only for now

FModEx API C types Haskell binding.
-}

module Sound.FModEx.Types where

import Foreign.C.Types
import Foreign.Ptr

#include <fmodex/fmod.h>

-- FMOD_RESULT
newtype FModResult = FModResult CInt deriving (Eq,Show)
#{enum FModResult, FModResult
 , fmod_OK                         = FMOD_OK
 , fmod_ERR_ALREADYLOCKED          = FMOD_ERR_ALREADYLOCKED
 , fmod_ERR_BADCOMMAND             = FMOD_ERR_BADCOMMAND
 , fmod_ERR_CDDA_DRIVERS           = FMOD_ERR_CDDA_DRIVERS
 , fmod_ERR_CDDA_INIT              = FMOD_ERR_CDDA_INIT
 , fmod_ERR_CDDA_INVALID_DEVICE    = FMOD_ERR_CDDA_INVALID_DEVICE
 , fmod_ERR_CDDA_NOAUDIO           = FMOD_ERR_CDDA_NOAUDIO
 , fmod_ERR_CDDA_NODEVICES         = FMOD_ERR_CDDA_NODEVICES
 , fmod_ERR_CDDA_NODISC            = FMOD_ERR_CDDA_NODISC
 , fmod_ERR_CDDA_READ              = FMOD_ERR_CDDA_READ
 , fmod_ERR_CHANNEL_ALLOC          = FMOD_ERR_CHANNEL_ALLOC
 , fmod_ERR_CHANNEL_STOLEN         = FMOD_ERR_CHANNEL_STOLEN
 , fmod_ERR_COM                    = FMOD_ERR_COM
 , fmod_ERR_DMA                    = FMOD_ERR_DMA
 , fmod_ERR_DSP_CONNECTION         = FMOD_ERR_DSP_CONNECTION
 , fmod_ERR_DSP_FORMAT             = FMOD_ERR_DSP_FORMAT
 , fmod_ERR_DSP_NOTFOUND           = FMOD_ERR_DSP_NOTFOUND
 , fmod_ERR_DSP_RUNNING            = FMOD_ERR_DSP_RUNNING
 , fmod_ERR_DSP_TOOMANYCONNECTIONS = FMOD_ERR_DSP_TOOMANYCONNECTIONS
 , fmod_ERR_FILE_BAD               = FMOD_ERR_FILE_BAD
 , fmod_ERR_FILE_COULDNOTSEEK      = FMOD_ERR_FILE_COULDNOTSEEK
 , fmod_ERR_FILE_DISKEJECTED       = FMOD_ERR_FILE_DISKEJECTED
 , fmod_ERR_FILE_EOF               = FMOD_ERR_FILE_EOF
 , fmod_ERR_FILE_NOTFOUND          = FMOD_ERR_FILE_NOTFOUND
 , fmod_ERR_FILE_UNWANTED          = FMOD_ERR_FILE_UNWANTED
 , fmod_ERR_FORMAT                 = FMOD_ERR_FORMAT
 , fmod_ERR_HTTP                   = FMOD_ERR_HTTP
 , fmod_ERR_HTTP_ACCESS            = FMOD_ERR_HTTP_ACCESS
 , fmod_ERR_HTTP_PROXY_AUTH        = FMOD_ERR_HTTP_PROXY_AUTH
 , fmod_ERR_HTTP_SERVER_ERROR      = FMOD_ERR_HTTP_SERVER_ERROR
 , fmod_ERR_HTTP_TIMEOUT           = FMOD_ERR_HTTP_TIMEOUT
 , fmod_ERR_INITIALIZATION         = FMOD_ERR_INITIALIZATION
 , fmod_ERR_INITIALIZED            = FMOD_ERR_INITIALIZED
 , fmod_ERR_INTERNAL               = FMOD_ERR_INTERNAL
 , fmod_ERR_INVALID_ADDRESS        = FMOD_ERR_INVALID_ADDRESS
 , fmod_ERR_INVALID_FLOAT          = FMOD_ERR_INVALID_FLOAT
 , fmod_ERR_INVALID_HANDLE         = FMOD_ERR_INVALID_HANDLE
 , fmod_ERR_INVALID_PARAM          = FMOD_ERR_INVALID_PARAM
 , fmod_ERR_INVALID_POSITION       = FMOD_ERR_INVALID_POSITION
 , fmod_ERR_INVALID_SPEAKER        = FMOD_ERR_INVALID_SPEAKER
 , fmod_ERR_INVALID_SYNCPOINT      = FMOD_ERR_INVALID_SYNCPOINT
 , fmod_ERR_INVALID_VECTOR         = FMOD_ERR_INVALID_VECTOR
 , fmod_ERR_MAXAUDIBLE             = FMOD_ERR_MAXAUDIBLE
 , fmod_ERR_MEMORY                 = FMOD_ERR_MEMORY
 , fmod_ERR_MEMORY_CANTPOINT       = FMOD_ERR_MEMORY_CANTPOINT
 , fmod_ERR_MEMORY_SRAM            = FMOD_ERR_MEMORY_SRAM
 , fmod_ERR_NEEDS2D                = FMOD_ERR_NEEDS2D
 , fmod_ERR_NEEDS3D                = FMOD_ERR_NEEDS3D
 , fmod_ERR_NEEDSHARDWARE          = FMOD_ERR_NEEDSHARDWARE
 , fmod_ERR_NEEDSSOFTWARE          = FMOD_ERR_NEEDSSOFTWARE
 , fmod_ERR_NET_CONNECT            = FMOD_ERR_NET_CONNECT
 , fmod_ERR_NET_SOCKET_ERROR       = FMOD_ERR_NET_SOCKET_ERROR
 , fmod_ERR_NET_URL                = FMOD_ERR_NET_URL
 , fmod_ERR_NET_WOULD_BLOCK        = FMOD_ERR_NET_WOULD_BLOCK
 , fmod_ERR_NOTREADY               = FMOD_ERR_NOTREADY
 , fmod_ERR_OUTPUT_ALLOCATED       = FMOD_ERR_OUTPUT_ALLOCATED
 , fmod_ERR_OUTPUT_CREATEBUFFER    = FMOD_ERR_OUTPUT_CREATEBUFFER
 , fmod_ERR_OUTPUT_DRIVERCALL      = FMOD_ERR_OUTPUT_DRIVERCALL
 , fmod_ERR_OUTPUT_ENUMERATION     = FMOD_ERR_OUTPUT_ENUMERATION
 , fmod_ERR_OUTPUT_FORMAT          = FMOD_ERR_OUTPUT_FORMAT
 , fmod_ERR_OUTPUT_INIT            = FMOD_ERR_OUTPUT_INIT
 , fmod_ERR_OUTPUT_NOHARDWARE      = FMOD_ERR_OUTPUT_NOHARDWARE
 , fmod_ERR_OUTPUT_NOSOFTWARE      = FMOD_ERR_OUTPUT_NOSOFTWARE
 , fmod_ERR_PAN                    = FMOD_ERR_PAN
 , fmod_ERR_PLUGIN                 = FMOD_ERR_PLUGIN
 , fmod_ERR_PLUGIN_INSTANCES       = FMOD_ERR_PLUGIN_INSTANCES
 , fmod_ERR_PLUGIN_MISSING         = FMOD_ERR_PLUGIN_MISSING
 , fmod_ERR_PLUGIN_RESOURCE        = FMOD_ERR_PLUGIN_RESOURCE
 , fmod_ERR_PRELOADED              = FMOD_ERR_PRELOADED
 , fmod_ERR_PROGRAMMERSOUND        = FMOD_ERR_PROGRAMMERSOUND
 , fmod_ERR_RECORD                 = FMOD_ERR_RECORD
 , fmod_ERR_REVERB_INSTANCE        = FMOD_ERR_REVERB_INSTANCE
 , fmod_ERR_SUBSOUND_ALLOCATED     = FMOD_ERR_SUBSOUND_ALLOCATED
 , fmod_ERR_SUBSOUND_CANTMOVE      = FMOD_ERR_SUBSOUND_CANTMOVE
 , fmod_ERR_SUBSOUND_MODE          = FMOD_ERR_SUBSOUND_MODE
 , fmod_ERR_SUBSOUNDS              = FMOD_ERR_SUBSOUNDS
 , fmod_ERR_TAGNOTFOUND            = FMOD_ERR_TAGNOTFOUND
 , fmod_ERR_TOOMANYCHANNELS        = FMOD_ERR_TOOMANYCHANNELS
 , fmod_ERR_UNIMPLEMENTED          = FMOD_ERR_UNIMPLEMENTED
 , fmod_ERR_UNINITIALIZED          = FMOD_ERR_UNINITIALIZED
 , fmod_ERR_UNSUPPORTED            = FMOD_ERR_UNSUPPORTED
 , fmod_ERR_UPDATE                 = FMOD_ERR_UPDATE
 , fmod_ERR_VERSION                = FMOD_ERR_VERSION
 , fmod_ERR_EVENT_FAILED           = FMOD_ERR_EVENT_FAILED
 , fmod_ERR_EVENT_INFOONLY         = FMOD_ERR_EVENT_INFOONLY
 , fmod_ERR_EVENT_INTERNAL         = FMOD_ERR_EVENT_INTERNAL
 , fmod_ERR_EVENT_MAXSTREAMS       = FMOD_ERR_EVENT_MAXSTREAMS
 , fmod_ERR_EVENT_MISMATCH         = FMOD_ERR_EVENT_MISMATCH
 , fmod_ERR_EVENT_NAMECONFLICT     = FMOD_ERR_EVENT_NAMECONFLICT
 , fmod_ERR_EVENT_NOTFOUND         = FMOD_ERR_EVENT_NOTFOUND
 , fmod_ERR_EVENT_NEEDSSIMPLE      = FMOD_ERR_EVENT_NEEDSSIMPLE
 , fmod_ERR_EVENT_GUIDCONFLICT     = FMOD_ERR_EVENT_GUIDCONFLICT
 , fmod_ERR_EVENT_ALREADY_LOADED   = FMOD_ERR_EVENT_ALREADY_LOADED
 , fmod_ERR_MUSIC_UNINITIALIZED    = FMOD_ERR_MUSIC_UNINITIALIZED
 , fmod_ERR_MUSIC_NOTFOUND         = FMOD_ERR_MUSIC_NOTFOUND
 , fmod_ERR_MUSIC_NOCALLBACK       = FMOD_ERR_MUSIC_NOCALLBACK
 , fmod_RESULT_FORCEINT            = FMOD_RESULT_FORCEINT
 }

-- FMOD_INITFLAGS
newtype FModInitFlags = FModInitFlags CInt deriving (Eq,Show)

#{enum FModInitFlags, FModInitFlags
 , fmod_INIT_NORMAL                    = FMOD_INIT_NORMAL
 , fmod_INIT_STREAM_FROM_UPDATE        = FMOD_INIT_STREAM_FROM_UPDATE
 , fmod_INIT_3D_RIGHTHANDED            = FMOD_INIT_3D_RIGHTHANDED
 , fmod_INIT_SOFTWARE_DISABLE          = FMOD_INIT_SOFTWARE_DISABLE
 , fmod_INIT_OCCLUSION_LOWPASS         = FMOD_INIT_OCCLUSION_LOWPASS
 , fmod_INIT_HRTF_LOWPASS              = FMOD_INIT_HRTF_LOWPASS
 , fmod_INIT_DISTANCE_FILTERING        = FMOD_INIT_DISTANCE_FILTERING
 , fmod_INIT_SOFTWARE_REVERB_LOWMEM    = FMOD_INIT_SOFTWARE_REVERB_LOWMEM
 , fmod_INIT_ENABLE_PROFILE            = FMOD_INIT_ENABLE_PROFILE
 , fmod_INIT_VOL0_BECOMES_VIRTUAL      = FMOD_INIT_VOL0_BECOMES_VIRTUAL
 , fmod_INIT_WASAPI_EXCLUSIVE          = FMOD_INIT_WASAPI_EXCLUSIVE
 , fmod_INIT_PS3_PREFERDTS             = FMOD_INIT_PS3_PREFERDTS
 , fmod_INIT_PS3_FORCE2CHLPCM          = FMOD_INIT_PS3_FORCE2CHLPCM
 , fmod_INIT_DISABLEDOLBY              = FMOD_INIT_DISABLEDOLBY
 , fmod_INIT_SYSTEM_MUSICMUTENOTPAUSE  = FMOD_INIT_SYSTEM_MUSICMUTENOTPAUSE
 , fmod_INIT_SYNCMIXERWITHUPDATE       = FMOD_INIT_SYNCMIXERWITHUPDATE
 , fmod_INIT_GEOMETRY_USECLOSEST       = FMOD_INIT_GEOMETRY_USECLOSEST
 , fmod_INIT_DISABLE_MYEARS_AUTODETECT = FMOD_INIT_DISABLE_MYEARS_AUTODETECT
 , fmod_INIT_PS3_DISABLEDTS            = FMOD_INIT_PS3_DISABLEDTS
 , fmod_INIT_PS3_DISABLEDOLBYDIGITAL   = FMOD_INIT_PS3_DISABLEDOLBYDIGITAL
 }

-- FMOD_MODE
newtype FModMode = FModMode CUInt deriving (Eq,Show)

#{enum FModMode, FModMode
 , fmod_DEFAULT                = FMOD_DEFAULT
 , fmod_LOOP_OFF               = FMOD_LOOP_OFF
 , fmod_LOOP_NORMAL            = FMOD_LOOP_NORMAL
 , fmod_LOOP_BIDI              = FMOD_LOOP_BIDI
 , fmod_2D                     = FMOD_2D
 , fmod_3D                     = FMOD_3D
 , fmod_HARDWARE               = FMOD_HARDWARE
 , fmod_SOFTWARE               = FMOD_SOFTWARE
 , fmod_CREATESTREAM           = FMOD_CREATESTREAM
 , fmod_CREATESAMPLE           = FMOD_CREATESAMPLE
 , fmod_CREATECOMPRESSEDSAMPLE = FMOD_CREATECOMPRESSEDSAMPLE
 , fmod_OPENUSER               = FMOD_OPENUSER
 , fmod_OPENMEMORY             = FMOD_OPENMEMORY
 , fmod_OPENMEMORY_POINT       = FMOD_OPENMEMORY_POINT
 , fmod_OPENRAW                = FMOD_OPENRAW
 , fmod_OPENONLY               = FMOD_OPENONLY
 , fmod_ACCURATETIME           = FMOD_ACCURATETIME
 , fmod_MPEGSEARCH             = FMOD_MPEGSEARCH
 , fmod_NONBLOCKING            = FMOD_NONBLOCKING
 , fmod_UNIQUE                 = FMOD_UNIQUE
 , fmod_3D_HEADRELATIVE        = FMOD_3D_HEADRELATIVE
 , fmod_3D_WORLDRELATIVE       = FMOD_3D_WORLDRELATIVE
 , fmod_3D_INVERSEROLLOFF      = FMOD_3D_INVERSEROLLOFF
 , fmod_3D_LINEARROLLOFF       = FMOD_3D_LINEARROLLOFF
 , fmod_3D_LINEARSQUAREROLLOFF = FMOD_3D_LINEARSQUAREROLLOFF
 , fmod_3D_CUSTOMROLLOFF       = FMOD_3D_CUSTOMROLLOFF
 , fmod_3D_IGNOREGEOMETRY      = FMOD_3D_IGNOREGEOMETRY
 , fmod_UNICODE                = FMOD_UNICODE
 , fmod_IGNORETAGS             = FMOD_IGNORETAGS
 , fmod_LOWMEM                 = FMOD_LOWMEM
 , fmod_LOADSECONDARYRAM       = FMOD_LOADSECONDARYRAM
 , fmod_VIRTUAL_PLAYFROMSTART  = FMOD_VIRTUAL_PLAYFROMSTART
 }

-- FMOD_CREATESOUNDEXINFO
-- TODO
data FModCreateSoundExInfo = FModCreateSoundExInfo deriving (Eq,Show)

-- FMOD_CHANNELINDEX
newtype FModChannelIndex = FModChannelIndex CInt deriving (Eq,Show)

#{enum FModChannelIndex, FModChannelIndex
 , fmod_CHANNEL_FREE  = FMOD_CHANNEL_FREE
 , fmod_CHANNEL_REUSE = FMOD_CHANNEL_REUSE
 }

-- FMOD_BOOL
type FModBool = CInt

-- FMOD_TIMEUNIT
newtype FModTimeUnit = FModTimeUnit CUInt deriving (Eq,Show)

#{enum FModTimeUnit, FModTimeUnit
 , fmod_TIMEUNIT_MS                = FMOD_TIMEUNIT_MS
 , fmod_TIMEUNIT_PCM               = FMOD_TIMEUNIT_PCM
 , fmod_TIMEUNIT_PCMBYTES          = FMOD_TIMEUNIT_PCMBYTES
 , fmod_TIMEUNIT_RAWBYTES          = FMOD_TIMEUNIT_RAWBYTES
 , fmod_TIMEUNIT_PCMFRACTION       = FMOD_TIMEUNIT_PCMFRACTION
 , fmod_TIMEUNIT_MODORDER          = FMOD_TIMEUNIT_MODORDER
 , fmod_TIMEUNIT_MODROW            = FMOD_TIMEUNIT_MODROW
 , fmod_TIMEUNIT_MODPATTERN        = FMOD_TIMEUNIT_MODPATTERN
 , fmod_TIMEUNIT_SENTENCE_MS       = FMOD_TIMEUNIT_SENTENCE_MS
 , fmod_TIMEUNIT_SENTENCE_PCM      = FMOD_TIMEUNIT_SENTENCE_PCM
 , fmod_TIMEUNIT_SENTENCE_PCMBYTES = FMOD_TIMEUNIT_SENTENCE_PCMBYTES
 , fmod_TIMEUNIT_SENTENCE          = FMOD_TIMEUNIT_SENTENCE
 , fmod_TIMEUNIT_SENTENCE_SUBSOUND = FMOD_TIMEUNIT_SENTENCE_SUBSOUND
 , fmod_TIMEUNIT_BUFFERED          = FMOD_TIMEUNIT_BUFFERED
 }

-- FMOD_SOUND
--data FModSound = FModSound deriving (Eq,Show)
type FModSound = Ptr ()

-- FMOD_CHANNEL
--data FModChannel = FModChannel deriving (Eq,Show)
type FModChannel = Ptr ()

-- FMOD_SYSTEM
--data FModSystem = FModSystem deriving (Eq,Show)
type FModSystem = Ptr ()
