-record(pes_packet, {
  pid,
  dts,
  pts,
  codec,
  body
}).

-record(streamer, {
  pat_counter = 0,
  pmt_counter = 0,
  audio_counter = 0,
  video_counter = 0,
  pad_counters = true,
  sent_pat = false,
  last_dts,
  length_size = 32,
  audio_codec,
  video_codec,
  audio_config = undefined,
  video_config = undefined,
  video_buffer = [],
  audio_buffer = [],
  audio_dts,
  interleave
}).

-define(PAT_PID, 0).
-define(CAT_PID, 1).
-define(NIT_PID, 16). % ECM
-define(SDT_PID, 17). % EMM
-define(EIT_PID, 18). % EPG
-define(RST_PID, 19).
-define(TDT_PID, 20). % TOT here

-define(MPEGTS_STREAMID_MPEG2, 240).
-define(MPEGTS_STREAMID_MPGA1, 200).
-define(MPEGTS_STREAMID_MPGA2, 208).
-define(MPEGTS_STREAMID_AAC, 192).
-define(MPEGTS_STREAMID_H264, 224).
