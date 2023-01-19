//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Yinsuda {
    /// 副歌片段信息。
    public struct ChorusClip: TCOutputModel {
        /// 开始时间，单位：毫秒。
        public let startTime: Int64

        /// 结束时间，单位：毫秒。
        public let endTime: Int64

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// 直播进房输入参数
    public struct JoinRoomInput: TCInputModel, TCOutputModel {
        /// TRTC进房参数
        public let trtcJoinRoomInput: TRTCJoinRoomInput

        public init(trtcJoinRoomInput: TRTCJoinRoomInput) {
            self.trtcJoinRoomInput = trtcJoinRoomInput
        }

        enum CodingKeys: String, CodingKey {
            case trtcJoinRoomInput = "TRTCJoinRoomInput"
        }
    }

    /// 节拍信息。
    public struct KTVBPMInfo: TCOutputModel {
        /// 节拍类型，取值有：
        /// <li>Slow：慢；</li>
        /// <li>Middle：中等；</li>
        /// <li>Fast：快；</li>
        /// <li>Unknown：未知。</li>
        public let type: String

        /// BPM 值。
        public let value: Int64

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case value = "Value"
        }
    }

    /// 匹配歌曲信息。
    public struct KTVMatchMusic: TCOutputModel {
        /// 匹配到的歌曲基础信息。
        public let ktvMusicBaseInfo: KTVMusicBaseInfo

        /// 命中规则。
        public let matchRule: KTVMatchRule

        enum CodingKeys: String, CodingKey {
            case ktvMusicBaseInfo = "KTVMusicBaseInfo"
            case matchRule = "MatchRule"
        }
    }

    /// 歌曲匹配规则。
    public struct KTVMatchRule: TCInputModel, TCOutputModel {
        /// AME 曲库 Id。
        public let ameMusicId: String?

        /// 歌曲匹配信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let musicInfo: KTVMatchRuleMusicInfo?

        public init(ameMusicId: String? = nil, musicInfo: KTVMatchRuleMusicInfo? = nil) {
            self.ameMusicId = ameMusicId
            self.musicInfo = musicInfo
        }

        enum CodingKeys: String, CodingKey {
            case ameMusicId = "AMEMusicId"
            case musicInfo = "MusicInfo"
        }
    }

    /// 歌曲信息匹配。
    public struct KTVMatchRuleMusicInfo: TCInputModel, TCOutputModel {
        /// 歌曲名称。
        public let musicName: String

        /// 歌手列表。
        public let singerSet: [String]

        public init(musicName: String, singerSet: [String]) {
            self.musicName = musicName
            self.singerSet = singerSet
        }

        enum CodingKeys: String, CodingKey {
            case musicName = "MusicName"
            case singerSet = "SingerSet"
        }
    }

    /// 歌曲基础信息。
    public struct KTVMusicBaseInfo: TCOutputModel {
        /// 歌曲Id。
        public let musicId: String

        /// 歌曲名称。
        public let name: String

        /// 歌手名称。
        public let singerSet: [String]

        /// 播放时长。
        public let duration: Int64

        /// 歌手图片链接。
        public let singerImageUrl: String

        /// 专辑信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let albumInfo: MusicAlbumInfo?

        /// 权益列表，取值有：
        /// <li>Play：可播；</li>
        /// <li>Sing：可唱。</li>
        public let rightSet: [String]

        /// 推荐类型，取值有：
        /// <li>Featured：精选；</li>
        /// <li>Other：其他。</li>
        public let recommendType: String

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case name = "Name"
            case singerSet = "SingerSet"
            case duration = "Duration"
            case singerImageUrl = "SingerImageUrl"
            case albumInfo = "AlbumInfo"
            case rightSet = "RightSet"
            case recommendType = "RecommendType"
        }
    }

    /// 歌曲详细信息。
    public struct KTVMusicDetailInfo: TCOutputModel {
        /// 歌曲基础信息。
        public let ktvMusicBaseInfo: KTVMusicBaseInfo

        /// 播放凭证。
        public let playToken: String

        /// 歌词下载链接。
        public let lyricsUrl: String

        /// 音高数据下载链接。
        public let midiUrl: String

        /// 副歌片段信息。
        public let chorusClipSet: [ChorusClip]

        /// 前奏间隔。
        public let preludeInterval: Int64

        /// 歌曲流派列表。
        public let genreSet: [String]

        /// 节拍信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bpmInfo: KTVBPMInfo?

        enum CodingKeys: String, CodingKey {
            case ktvMusicBaseInfo = "KTVMusicBaseInfo"
            case playToken = "PlayToken"
            case lyricsUrl = "LyricsUrl"
            case midiUrl = "MidiUrl"
            case chorusClipSet = "ChorusClipSet"
            case preludeInterval = "PreludeInterval"
            case genreSet = "GenreSet"
            case bpmInfo = "BPMInfo"
        }
    }

    /// 歌单基础信息。
    public struct KTVPlaylistBaseInfo: TCOutputModel {
        /// 歌单Id。
        public let playlistId: String

        /// 歌单标题。
        public let title: String

        enum CodingKeys: String, CodingKey {
            case playlistId = "PlaylistId"
            case title = "Title"
        }
    }

    /// 机器人信息
    public struct KTVRobotInfo: TCOutputModel {
        /// 机器人Id。
        public let robotId: String

        /// 状态，取值有：
        /// <li>Play：播放</li>
        /// <li>Pause：暂停</li>
        /// <li>Destroy：销毁</li>
        public let status: String

        /// 播放列表。
        public let playlists: [String]

        /// 当前歌单索引位置。
        public let curIndex: Int64

        /// 播放进度，单位：毫秒。
        public let position: UInt64

        /// 音频参数。
        public let setAudioParamInput: SetAudioParamCommandInput

        /// 进房信息。
        public let joinRoomInput: JoinRoomInput

        /// RTC厂商类型，取值有：
        /// <li>TRTC</li>
        public let rtcSystem: String

        /// 播放模式，PlayMode取值有：
        /// <li>RepeatPlaylist：列表循环</li>
        /// <li>Order：顺序播放</li>
        /// <li>RepeatSingle：单曲循环</li>
        /// <li>Shuffle：随机播放</li>
        public let setPlayModeInput: SetPlayModeCommandInput

        enum CodingKeys: String, CodingKey {
            case robotId = "RobotId"
            case status = "Status"
            case playlists = "Playlists"
            case curIndex = "CurIndex"
            case position = "Position"
            case setAudioParamInput = "SetAudioParamInput"
            case joinRoomInput = "JoinRoomInput"
            case rtcSystem = "RTCSystem"
            case setPlayModeInput = "SetPlayModeInput"
        }
    }

    /// 联想词信息。
    public struct KTVSuggestionInfo: TCOutputModel {
        /// 联想词。
        public let suggestion: String

        enum CodingKeys: String, CodingKey {
            case suggestion = "Suggestion"
        }
    }

    /// 标签分组信息。
    public struct KTVTagGroupInfo: TCOutputModel {
        /// 分组 Id。
        public let groupId: String

        /// 分组名。
        public let name: String

        /// 标签列表。
        public let tagInfoSet: [KTVTagInfo]

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case name = "Name"
            case tagInfoSet = "TagInfoSet"
        }
    }

    /// 标签信息。
    public struct KTVTagInfo: TCOutputModel {
        /// 标签 Id。
        public let tagId: String

        /// 标签名称。
        public let name: String

        enum CodingKeys: String, CodingKey {
            case tagId = "TagId"
            case name = "Name"
        }
    }

    /// 歌曲专辑封面信息。
    public struct MusicAlbumCoverInfo: TCOutputModel {
        /// 尺寸规格，取值有：
        /// <li>Mini：150 x 150 尺寸；</li>
        /// <li>Small：240 x 240 尺寸；</li>
        /// <li>Medium：480 x 480 尺寸。</li>
        public let dimension: String

        /// 下载链接。
        public let url: String

        enum CodingKeys: String, CodingKey {
            case dimension = "Dimension"
            case url = "Url"
        }
    }

    /// 歌曲专辑信息。
    public struct MusicAlbumInfo: TCOutputModel {
        /// 专辑名称。
        public let name: String

        /// 封面列表。
        public let coverInfoSet: [MusicAlbumCoverInfo]

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case coverInfoSet = "CoverInfoSet"
        }
    }

    /// 播放指令输入参数
    public struct PlayCommandInput: TCInputModel {
        /// 歌曲位置索引。
        public let index: Int64

        public init(index: Int64) {
            self.index = index
        }

        enum CodingKeys: String, CodingKey {
            case index = "Index"
        }
    }

    /// 调整播放进度指令参数
    public struct SeekCommandInput: TCInputModel {
        /// 播放位置，单位：毫秒。
        public let position: UInt64

        public init(position: UInt64) {
            self.position = position
        }

        enum CodingKeys: String, CodingKey {
            case position = "Position"
        }
    }

    /// 发送自定义信息指令参数
    public struct SendMessageCommandInput: TCInputModel {
        /// 自定义消息，json格式字符串。
        public let message: String

        /// 消息重复次数，默认为 1。
        public let `repeat`: UInt64?

        public init(message: String, repeat: UInt64? = nil) {
            self.message = message
            self.`repeat` = `repeat`
        }

        enum CodingKeys: String, CodingKey {
            case message = "Message"
            case `repeat` = "Repeat"
        }
    }

    /// 音频参数信息
    public struct SetAudioParamCommandInput: TCInputModel {
        /// 音频类型，取值有：
        /// <li>Original：原唱</li>
        /// <li>Accompaniment：伴奏</li>
        public let type: String?

        public init(type: String? = nil) {
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
        }
    }

    /// 设置销毁模式
    public struct SetDestroyModeCommandInput: TCInputModel {
        /// 销毁模式，取值有：
        /// <li>Auto：房间没人时自动销毁</li>
        /// <li>Expire：房间没人时过期自动销毁</li>
        /// <li>Never：不自动销毁，需手动销毁</li>默认为：Auto。
        public let destroyMode: String

        /// 过期销毁时间，单位：秒，当DestroyMode取Expire时必填。
        public let destroyExpireTime: Int64?

        public init(destroyMode: String, destroyExpireTime: Int64? = nil) {
            self.destroyMode = destroyMode
            self.destroyExpireTime = destroyExpireTime
        }

        enum CodingKeys: String, CodingKey {
            case destroyMode = "DestroyMode"
            case destroyExpireTime = "DestroyExpireTime"
        }
    }

    /// 设置播放模式
    public struct SetPlayModeCommandInput: TCInputModel {
        /// 播放模式，取值有：
        /// <li>RepeatPlaylist：列表循环</li>
        /// <li>Order：顺序播放</li>
        /// <li>RepeatSingle：单曲循环</li>
        /// <li>Shuffle：随机播放</li>
        public let playMode: String

        public init(playMode: String) {
            self.playMode = playMode
        }

        enum CodingKeys: String, CodingKey {
            case playMode = "PlayMode"
        }
    }

    /// 设置播放列表指令参数
    public struct SetPlaylistCommandInput: TCInputModel {
        /// 变更类型，取值有：
        /// <li>Add：添加</li>
        /// <li>Delete：删除</li>
        /// <li>ClearList：清空歌曲列表</li>
        /// <li>Move：移动歌曲</li>
        public let type: String

        /// 歌单索引位置，
        /// 当 Type 取 Add 时，-1表示添加在列表最后位置，大于-1表示要添加的位置；
        /// 当 Type 取 Delete 时，表示待删除歌曲的位置；
        /// 当 Type 取 Move 时，表示待调整歌曲的位置。
        public let index: Int64?

        /// 当 Type 取 Move 时，必填，表示移动歌曲的目标位置。
        public let changedIndex: Int64?

        /// 歌曲 ID 列表，当 Type 取 Add 时，必填。
        public let musicIds: [String]?

        public init(type: String, index: Int64? = nil, changedIndex: Int64? = nil, musicIds: [String]? = nil) {
            self.type = type
            self.index = index
            self.changedIndex = changedIndex
            self.musicIds = musicIds
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case index = "Index"
            case changedIndex = "ChangedIndex"
            case musicIds = "MusicIds"
        }
    }

    /// KTV 机器人初始化参数，在创建后自动完成相关初始化工作。
    public struct SyncRobotCommand: TCInputModel {
        /// 可同时传入多个指令，顺序执行。取值有：
        /// <li>Play：播放</li>
        /// <li>Pause：暂停</li>
        /// <li>SwitchPrevious：上一首</li>
        /// <li>SwitchNext：下一首</li>
        /// <li>SetPlayMode：设置播放模式</li>
        /// <li>Seek：调整播放进度</li>
        /// <li>SetPlaylist：歌单变更</li>
        /// <li>SetAudioParam：音频参数变更</li>
        /// <li>SendMessage：发送自定义消息</li>
        /// <li>SetDestroyMode：设置销毁模式</li>
        public let command: String

        /// 播放参数。
        public let playCommandInput: PlayCommandInput?

        /// 播放列表变更信息，当Command取SetPlaylist时，必填。
        public let setPlaylistCommandInput: SetPlaylistCommandInput?

        /// 播放进度，当Command取Seek时，必填。
        public let seekCommandInput: SeekCommandInput?

        /// 音频参数，当Command取SetAudioParam时，必填。
        public let setAudioParamCommandInput: SetAudioParamCommandInput?

        /// 自定义消息，当Command取SendMessage时，必填。
        public let sendMessageCommandInput: SendMessageCommandInput?

        /// 播放模式，当Command取SetPlayMode时，必填。
        public let setPlayModeCommandInput: SetPlayModeCommandInput?

        /// 销毁模式，当Command取SetDestroyMode时，必填。
        public let setDestroyModeCommandInput: SetDestroyModeCommandInput?

        public init(command: String, playCommandInput: PlayCommandInput? = nil, setPlaylistCommandInput: SetPlaylistCommandInput? = nil, seekCommandInput: SeekCommandInput? = nil, setAudioParamCommandInput: SetAudioParamCommandInput? = nil, sendMessageCommandInput: SendMessageCommandInput? = nil, setPlayModeCommandInput: SetPlayModeCommandInput? = nil, setDestroyModeCommandInput: SetDestroyModeCommandInput? = nil) {
            self.command = command
            self.playCommandInput = playCommandInput
            self.setPlaylistCommandInput = setPlaylistCommandInput
            self.seekCommandInput = seekCommandInput
            self.setAudioParamCommandInput = setAudioParamCommandInput
            self.sendMessageCommandInput = sendMessageCommandInput
            self.setPlayModeCommandInput = setPlayModeCommandInput
            self.setDestroyModeCommandInput = setDestroyModeCommandInput
        }

        enum CodingKeys: String, CodingKey {
            case command = "Command"
            case playCommandInput = "PlayCommandInput"
            case setPlaylistCommandInput = "SetPlaylistCommandInput"
            case seekCommandInput = "SeekCommandInput"
            case setAudioParamCommandInput = "SetAudioParamCommandInput"
            case sendMessageCommandInput = "SendMessageCommandInput"
            case setPlayModeCommandInput = "SetPlayModeCommandInput"
            case setDestroyModeCommandInput = "SetDestroyModeCommandInput"
        }
    }

    /// TRTC推流进房信息
    public struct TRTCJoinRoomInput: TCInputModel, TCOutputModel {
        /// 签名。
        public let sign: String

        /// 房间号。
        public let roomId: String

        /// 推流应用ID。
        public let sdkAppId: String

        /// 用户唯一标识。
        public let userId: String

        public init(sign: String, roomId: String, sdkAppId: String, userId: String) {
            self.sign = sign
            self.roomId = roomId
            self.sdkAppId = sdkAppId
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case sign = "Sign"
            case roomId = "RoomId"
            case sdkAppId = "SdkAppId"
            case userId = "UserId"
        }
    }

    /// 时间范围
    public struct TimeRange: TCInputModel {
        /// <li>大于等于此时间（起始时间）。</li>
        /// <li>格式按照 ISO 8601标准表示，详见 <a href="https://cloud.tencent.com/document/product/266/11732#I" target="_blank">ISO 日期格式说明</a>。</li>
        public let before: String?

        /// <li>小于此时间（结束时间）。</li>
        /// <li>格式按照 ISO 8601标准表示，详见 <a href="https://cloud.tencent.com/document/product/266/11732#I" target="_blank">ISO 日期格式说明</a>。</li>
        public let after: String?

        public init(before: String? = nil, after: String? = nil) {
            self.before = before
            self.after = after
        }

        enum CodingKeys: String, CodingKey {
            case before = "Before"
            case after = "After"
        }
    }
}
