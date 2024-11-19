# SPDX-License-Identifier: BSD-3-Clause

# Array of "input-file-name;output-file-name;comma separated pre-processor variables"
list(APPEND TPLGS
# SDW + DMIC topology with passthrough pipelines
"cavs-sdw\;sof-mtl-rt711-4ch\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,PDM1_MIC_B_ENABLE=1,\
DMIC0_ID=2,DMIC1_ID=3,PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-rt711-4ch.bin,\
HDMI1_ID=4,HDMI2_ID=5,HDMI3_ID=6"

"cavs-sdw\;sof-mtl-rt711-l0-rt1316-l23-rt714-l1\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=2,SDW_DMIC=1,\
SDW_SPK_STREAM=SDW2-Playback,SDW_SPK_IN_STREAM=SDW2-Capture,SDW_DMIC_STREAM=SDW1-Capture,\
EFX_SPK_IIR_PARAMS=highpass_100hz_0db_48khz,EFX_SPK_DRC_PARAMS=speaker_default,\
EFX_MIC_TDFB_PARAMS=line2_generic_pm10deg,EFX_MIC_DRC_PARAMS=dmic_default.conf,\
SDW_SPK_ENHANCED_PLAYBACK=true,SDW_DMIC_ENHANCED_CAPTURE=true"

"cavs-sdw\;sof-mtl-rt711-l0-rt1316-l3\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,\
SDW_SPK_STREAM=SDW3-Playback,SDW_SPK_IN_STREAM=SDW3-Capture,\
HDMI1_ID=4,HDMI2_ID=5,HDMI3_ID=6"

"cavs-sdw\;sof-mtl-rt711-l0-rt1316-l3-4ch\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,\
SDW_SPK_STREAM=SDW3-Playback,SDW_SPK_IN_STREAM=SDW3-Capture,\
NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,PDM1_MIC_B_ENABLE=1,\
PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-rt711-l0-rt1316-l3-4ch.bin,\
HDMI1_ID=6,HDMI2_ID=7,HDMI3_ID=8"

"cavs-sdw\;sof-mtl-rt711-l0-rt1316-l3-2ch\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,\
SDW_SPK_STREAM=SDW3-Playback,SDW_SPK_IN_STREAM=SDW3-Capture,\
NUM_DMICS=2,PDM1_MIC_A_ENABLE=0,PDM1_MIC_B_ENABLE=0,\
PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-rt711-l0-rt1316-l3-2ch.bin,\
HDMI1_ID=6,HDMI2_ID=7,HDMI3_ID=8"

"cavs-sdw\;sof-mtl-rt712-l0-rt1712-l3\;PLATFORM=mtl,SDW_DMIC=1,NUM_SDW_AMP_LINKS=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-mtl-rt712-l0\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack,\
HDMI1_ID=3,HDMI2_ID=4,HDMI3_ID=5"

"cavs-sdw\;sof-mtl-rt712-vb-l0\;PLATFORM=mtl,SDW_DMIC=1,NUM_SDW_AMP_LINKS=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-mtl-rt712-l0-4ch\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack,\
NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,PDM1_MIC_B_ENABLE=1,DMIC0_ID=3,DMIC1_ID=4,\
PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-rt712-l0-4ch.bin,\
HDMI1_ID=5,HDMI2_ID=6,HDMI3_ID=7"

# sof_sdw creates dmic01 and dmic16k no matter 1 or 2 dmics are present.
# So, HDMI link ids are the same for -2ch and -4ch topologies.
"cavs-sdw\;sof-mtl-rt712-l0-2ch\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack,\
NUM_DMICS=2,PDM1_MIC_A_ENABLE=0,PDM1_MIC_B_ENABLE=0,DMIC0_ID=3,DMIC1_ID=4,\
PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-rt712-l0-2ch.bin,\
HDMI1_ID=5,HDMI2_ID=6,HDMI3_ID=7"

"cavs-sdw\;sof-mtl-rt1318-l12-rt714-l0\;PLATFORM=mtl,SDW_JACK=false,SDW_DMIC=1,\
NUM_SDW_AMP_LINKS=2,SDW_SPK_STREAM=SDW1-Playback,SDW_SPK_IN_STREAM=SDW1-Capture,\
SDW_DMIC_STREAM=SDW0-Capture"

"cavs-sdw\;sof-mtl-rt713-l0-rt1316-l12-rt1713-l3\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=2,SDW_DMIC=1"

"cavs-sdw\;sof-mtl-rt713-l0-rt1318-l12-rt1713-l3\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=2,SDW_DMIC=1"

"cavs-sdw\;sof-mtl-rt713-l0-rt1318-l1-rt1713-l3\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,SDW_DMIC=1"

# Jack codec + SmartAmp topology. No SDW_DMIC connection
"cavs-sdw\;sof-mtl-rt713-l0-rt1316-l12\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=2,\
HDMI1_ID=4,HDMI2_ID=5,HDMI3_ID=6,SDW_SPK_ENHANCED_PLAYBACK=true,\
EFX_SPK_IIR_PARAMS=highpass_100hz_0db_48khz,EFX_SPK_DRC_PARAMS=speaker_default"

"cavs-sdw\;sof-mtl-rt722-l0\;PLATFORM=mtl,SDW_DMIC=1,NUM_SDW_AMP_LINKS=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-mtl-cs42l43-l0\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-mtl-cs42l43-l0-cs35l56-l12\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=2,SDW_DMIC=1,\
SDW_SPK_STREAM=Playback-SmartAmp,SDW_SPK_IN_STREAM=Capture-SmartAmp,\
SDW_DMIC_STREAM=Capture-SmartMic,SDW_JACK_OUT_STREAM=Playback-SimpleJack,\
SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-mtl-cs42l43-l0-cs35l56-l23\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=2,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

# ARL has the same DSP generation. So reuse the platform = mtl.
"cavs-sdw\;sof-arl-cs42l43-l0\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-arl-cs42l43-l0-cs35l56-l2\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-arl-cs42l43-l0-cs35l56-l23\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=2,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-arl-cs42l43-l2\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-arl-cs42l43-l2-cs35l56-l3\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

"cavs-sdw\;sof-arl-rt722-l0_rt1320-l2\;PLATFORM=mtl,NUM_SDW_AMP_LINKS=1,SDW_DMIC=1,\
SDW_AMP_FEEDBACK=false,SDW_SPK_STREAM=Playback-SmartAmp,SDW_DMIC_STREAM=Capture-SmartMic,\
SDW_JACK_OUT_STREAM=Playback-SimpleJack,SDW_JACK_IN_STREAM=Capture-SimpleJack"

# Below topologies are used on Chromebooks

"cavs-rt5682\;sof-mtl-max98357a-rt5682\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-max98357a-rt5682.bin,SPK_ID=6,DEEPBUFFER_FW_DMA_MS=10,INCLUDE_ECHO_REF=true,\
BT_ID=7,BT_PCM_NAME=Bluetooth,DEEP_BUF_SPK=true"

"cavs-rt5682\;sof-mtl-max98357a-rt5682-google-aec\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-max98357a-rt5682-google-aec.bin,SPK_ID=6,DEEPBUFFER_FW_DMA_MS=10,INCLUDE_ECHO_REF=true,\
BT_ID=7,BT_PCM_NAME=Bluetooth,GOOGLE_RTC_AEC_SUPPORT=1,DEEP_BUF_SPK=true"

"cavs-rt5682\;sof-mtl-max98357a-rt5682-ssp2-ssp0\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-max98357a-rt5682-ssp2-ssp0.bin,DEEPBUFFER_FW_DMA_MS=10,HEADSET_SSP_DAI_INDEX=2,\
SPK_ID=6,SPEAKER_SSP_DAI_INDEX=0,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,INCLUDE_ECHO_REF=true,DEEP_BUF_SPK=true"

"cavs-rt5682\;sof-mtl-max98357a-rt5682-ssp2-ssp0-google-aec\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-max98357a-rt5682-ssp2-ssp0-google-aec.bin,DEEPBUFFER_FW_DMA_MS=10,HEADSET_SSP_DAI_INDEX=2,\
SPK_ID=6,SPEAKER_SSP_DAI_INDEX=0,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,INCLUDE_ECHO_REF=true,\
GOOGLE_RTC_AEC_SUPPORT=1,DEEP_BUF_SPK=true,GOOGLE_AEC_DP_CORE_ID=2"

"cavs-rt5682\;sof-mtl-max98357a-rt5682-ssp2-ssp0-2ch-pdm1\;PLATFORM=mtl,NUM_DMICS=2,\
PDM0_MIC_A_ENABLE=0,PDM0_MIC_B_ENABLE=0,PDM1_MIC_A_ENABLE=1,PDM1_MIC_B_ENABLE=1,\
DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-max98357a-rt5682-2ch.bin,\
HEADSET_SSP_DAI_INDEX=2,SPEAKER_SSP_DAI_INDEX=0,SPK_ID=6,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,INCLUDE_ECHO_REF=true,\
DEEPBUFFER_FW_DMA_MS=10,DEEP_BUF_SPK=true"

"cavs-rt5682\;sof-mtl-max98357a-rt5682-ssp2-ssp0-2ch-pdm1-google-aec\;PLATFORM=mtl,NUM_DMICS=2,\
PDM0_MIC_A_ENABLE=0,PDM0_MIC_B_ENABLE=0,PDM1_MIC_A_ENABLE=1,PDM1_MIC_B_ENABLE=1,\
DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-max98357a-rt5682-2ch-google-aec.bin,\
HEADSET_SSP_DAI_INDEX=2,SPEAKER_SSP_DAI_INDEX=0,SPK_ID=6,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,INCLUDE_ECHO_REF=true,\
DEEPBUFFER_FW_DMA_MS=10,GOOGLE_RTC_AEC_SUPPORT=1,DEEP_BUF_SPK=true,\
GOOGLE_AEC_DP_CORE_ID=2"

"cavs-rt5682\;sof-mtl-rt1019-rt5682\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,SPK_ID=6,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-rt1019-rt5682.bin,DEEPBUFFER_FW_DMA_MS=10,HEADSET_SSP_DAI_INDEX=2,\
SPEAKER_SSP_DAI_INDEX=0,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
INCLUDE_ECHO_REF=true,BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,DEEP_BUF_SPK=true"

"cavs-rt5682\;sof-mtl-rt5650\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-rt5650.bin,DEEPBUFFER_FW_DMA_MS=10,HEADSET_SSP_DAI_INDEX=2,\
SPK_ID=6,SPEAKER_SSP_DAI_INDEX=0,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,INCLUDE_ECHO_REF=true,\
DEEP_BUF_SPK=true,SSP_SPK_FMT_24=true,SSP_HS_FMT_24=true"

"cavs-rt5682\;sof-mtl-rt5650-dts\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-rt5650-dts.bin,DEEPBUFFER_FW_DMA_MS=10,HEADSET_SSP_DAI_INDEX=2,\
SPK_ID=6,SPEAKER_SSP_DAI_INDEX=0,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,INCLUDE_ECHO_REF=true,\
DEEP_BUF_SPK=true,PLAYBACK_PIPELINE_SRC=dts,SSP_SPK_FMT_24=true,SSP_HS_FMT_24=true"

"cavs-rt5682\;sof-mtl-rt5650-dts-google-aec\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_PCM_ID=99,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-rt5650-dts-google-aec.bin,DEEPBUFFER_FW_DMA_MS=10,HEADSET_SSP_DAI_INDEX=2,\
SPK_ID=6,SPEAKER_SSP_DAI_INDEX=0,HEADSET_CODEC_NAME=SSP2-Codec,SPEAKER_CODEC_NAME=SSP0-Codec,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_ID=7,BT_PCM_NAME=Bluetooth,INCLUDE_ECHO_REF=true,\
GOOGLE_RTC_AEC_SUPPORT=1,DEEP_BUF_SPK=true,PLAYBACK_PIPELINE_SRC=dts,\
SSP_SPK_FMT_24=true,SSP_HS_FMT_24=true"

#ES83x6+HDMI-IN
"cavs-es83x6\;sof-mtl-es83x6-ssp1-hdmi-ssp02\;PLATFORM=mtl,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-es83x6-ssp1-hdmi-ssp02.bin,HEADSET_SSP_DAI_INDEX=1,\
HEADSET_CODEC=true,HEADSET_CODEC_NAME=SSP1-Codec,HDMI1_ID=3,HDMI2_ID=4,HDMI3_ID=5,\
HDMI_IN_CAPTURE=true"

#No HeadsetCodec+HDMI-IN
"cavs-es83x6\;sof-mtl-hdmi-ssp02\;PLATFORM=mtl,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-hdmi-ssp02.bin,HEADSET_CODEC=false,HDMI_IN_CAPTURE=true,\
HDMI_IN_1_ID=0,HDMI_IN_2_ID=1"

#ES83x6 codec alone without HDMI-in capture
"cavs-es83x6\;sof-mtl-es83x6-ssp1\;PLATFORM=mtl,PREPROCESS_PLUGINS=nhlt,\
NHLT_BIN=nhlt-sof-mtl-es83x6-ssp1.bin,HEADSET_SSP_DAI_INDEX=1,\
HEADSET_CODEC=true,HEADSET_CODEC_NAME=SSP1-Codec,HDMI1_ID=3,HDMI2_ID=4,HDMI3_ID=5,\
HDMI_IN_CAPTURE=false"

# SDW + DMIC + HDMI
"cavs-sdw\;sof-mtl-sdw-cs42l42-l0-max98363-l2\;PLATFORM=mtl,NUM_DMICS=4,PDM1_MIC_A_ENABLE=1,\
PDM1_MIC_B_ENABLE=1,DMIC0_ID=3,DMIC1_ID=4,\
PREPROCESS_PLUGINS=nhlt,NHLT_BIN=nhlt-sof-mtl-sdw-cs42l42-l0-max98363-l2.bin,\
BT_NAME=SSP1-BT,BT_INDEX=1,BT_PCM_ID=20,BT_ID=8,BT_PCM_NAME=Bluetooth,ADD_BT=true,\
NUM_SDW_AMP_LINKS=1,SDW_SPK_STREAM=SDW2-Playback,SDW_AMP_FEEDBACK=false,\
SDW_JACK_CAPTURE_CH=1"
)
