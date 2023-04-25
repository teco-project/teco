//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension Ame {
    /// Album
    public struct Album: TCOutputModel {
        /// 专辑名
        public let albumName: String

        /// 专辑图片大小及类别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imagePathMap: [ImagePath]?

        enum CodingKeys: String, CodingKey {
            case albumName = "AlbumName"
            case imagePathMap = "ImagePathMap"
        }
    }

    /// 用户license基础信息
    public struct ApplicationLicenseInput: TCInputModel {
        /// 应用名称，注：后面三个字段AndroidPackageName、IOSBundleId、PcIdentifier，三者选填一个
        public let appName: String

        /// app的安卓包名
        public let androidPackageName: String?

        /// app的IOS的BundleId名
        public let iosBundleId: String?

        /// PC标识名
        public let pcIdentifier: String?

        public init(appName: String, androidPackageName: String? = nil, iosBundleId: String? = nil, pcIdentifier: String? = nil) {
            self.appName = appName
            self.androidPackageName = androidPackageName
            self.iosBundleId = iosBundleId
            self.pcIdentifier = pcIdentifier
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case androidPackageName = "AndroidPackageName"
            case iosBundleId = "IOSBundleId"
            case pcIdentifier = "PcIdentifier"
        }
    }

    /// Artist
    public struct Artist: TCOutputModel {
        /// 歌手名
        public let artistName: String

        enum CodingKeys: String, CodingKey {
            case artistName = "ArtistName"
        }
    }

    /// AuthInfo集合
    public struct AuthInfo: TCOutputModel {
        /// 主体名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subjectName: String?

        /// 项目名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectName: String?

        /// 应用场景
        public let appScene: Int64

        /// 应用地域
        public let appRegion: Int64

        /// 授权时间
        public let authPeriod: Int64

        /// 是否可商业化
        public let commercialization: Int64

        /// 是否可跨平台
        public let platform: Int64

        /// 加密后Id
        public let id: String

        enum CodingKeys: String, CodingKey {
            case subjectName = "SubjectName"
            case projectName = "ProjectName"
            case appScene = "AppScene"
            case appRegion = "AppRegion"
            case authPeriod = "AuthPeriod"
            case commercialization = "Commercialization"
            case platform = "Platform"
            case id = "Id"
        }
    }

    /// 副歌片段信息
    public struct ChorusClip: TCOutputModel {
        /// 副歌时间，单位：毫秒
        public let startTime: Int64

        /// 副歌结束时间，单位：毫秒
        public let endTime: Int64

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// 数据信息
    public struct DataInfo: TCOutputModel {
        /// Song Name
        public let name: String

        /// 歌曲版本
        public let version: String

        /// 歌曲总时长（非试听时长）
        public let duration: String

        /// 试听开始时间
        public let auditionBegin: UInt64

        /// 试听结束时间
        public let auditionEnd: UInt64

        /// 标签名称
        public let tagNames: [String]

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case version = "Version"
            case duration = "Duration"
            case auditionBegin = "AuditionBegin"
            case auditionEnd = "AuditionEnd"
            case tagNames = "TagNames"
        }
    }

    /// 图片路径
    public struct ImagePath: TCOutputModel {
        /// station图片大小及类别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let key: String?

        /// station图片地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: String?

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    /// 歌曲信息
    public struct Item: TCOutputModel {
        /// Song ID
        public let itemID: String

        /// Song info
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataInfo: DataInfo?

        /// 专辑信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let album: Album?

        /// 多个歌手集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let artists: [Artist]?

        /// 歌曲状态，1:添加进购物车；2:核销进曲库包
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        enum CodingKeys: String, CodingKey {
            case itemID = "ItemID"
            case dataInfo = "DataInfo"
            case album = "Album"
            case artists = "Artists"
            case status = "Status"
        }
    }

    /// 直播进房输入参数
    public struct JoinRoomInput: TCInputModel, TCOutputModel {
        /// TRTC进房参数
        public let trtcJoinRoomInput: TRTCJoinRoomInput?

        public init(trtcJoinRoomInput: TRTCJoinRoomInput? = nil) {
            self.trtcJoinRoomInput = trtcJoinRoomInput
        }

        enum CodingKeys: String, CodingKey {
            case trtcJoinRoomInput = "TRTCJoinRoomInput"
        }
    }

    /// KTV 曲目基础信息
    public struct KTVMusicBaseInfo: TCOutputModel {
        /// 歌曲 Id
        public let musicId: String

        /// 歌曲名称
        public let name: String

        /// 演唱者基础信息列表
        public let singerInfoSet: [KTVSingerBaseInfo]

        /// 已弃用，请使用SingerInfoSet
        public let singerSet: [String]

        /// 作词者列表
        public let lyricistSet: [String]

        /// 作曲者列表
        public let composerSet: [String]

        /// 标签列表
        public let tagSet: [String]

        /// 歌曲时长
        public let duration: UInt64

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case name = "Name"
            case singerInfoSet = "SingerInfoSet"
            case singerSet = "SingerSet"
            case lyricistSet = "LyricistSet"
            case composerSet = "ComposerSet"
            case tagSet = "TagSet"
            case duration = "Duration"
        }
    }

    /// 直播互动歌曲规格信息。
    public struct KTVMusicDefinitionInfo: TCOutputModel {
        /// 规格，取值有：
        /// <li>audio/mi：低规格；</li>
        /// <li>audio/lo：中规格；</li>
        /// <li>audio/hi：高规格。</li>
        public let definition: String

        /// 码率，单位为 bps。
        public let bitrate: Int64

        /// 文件大小，单位为字节。
        public let size: Int64

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case bitrate = "Bitrate"
            case size = "Size"
        }
    }

    /// 即使广播曲库歌曲信息详情列表
    public struct KTVMusicDetailInfo: TCOutputModel {
        /// 即使广播曲库歌曲基础信息
        public let ktvMusicBaseInfo: KTVMusicBaseInfo

        /// 播放凭证
        public let playToken: String

        /// 歌词下载地址
        public let lyricsUrl: String

        /// 歌曲规格信息列表
        public let definitionInfoSet: [KTVMusicDefinitionInfo]

        /// 音高数据文件下载地址
        public let midiJsonUrl: String

        /// 副歌片段数据列表
        public let chorusClipSet: [ChorusClip]

        /// 前奏间隔，单位：毫秒；注：若参数返回为0则无人声部分
        public let preludeInterval: Int64

        enum CodingKeys: String, CodingKey {
            case ktvMusicBaseInfo = "KTVMusicBaseInfo"
            case playToken = "PlayToken"
            case lyricsUrl = "LyricsUrl"
            case definitionInfoSet = "DefinitionInfoSet"
            case midiJsonUrl = "MidiJsonUrl"
            case chorusClipSet = "ChorusClipSet"
            case preludeInterval = "PreludeInterval"
        }
    }

    /// 即使广播曲库歌曲标签分组信息
    public struct KTVMusicTagGroup: TCOutputModel {
        /// 标签分组英文名
        public let englishGroupName: String

        /// 标签分组中文名
        public let chineseGroupName: String

        /// 标签分类下标签列表
        public let tagSet: [KTVMusicTagInfo]

        enum CodingKeys: String, CodingKey {
            case englishGroupName = "EnglishGroupName"
            case chineseGroupName = "ChineseGroupName"
            case tagSet = "TagSet"
        }
    }

    /// 即使广播曲库歌曲标签信息
    public struct KTVMusicTagInfo: TCOutputModel {
        /// 标签Id
        public let tagId: String

        /// 标签
        public let tagName: String

        enum CodingKeys: String, CodingKey {
            case tagId = "TagId"
            case tagName = "TagName"
        }
    }

    /// 排行榜结构
    public struct KTVMusicTopInfo: TCOutputModel {
        /// 歌曲Id
        public let musicId: String

        /// 歌曲名称
        public let name: String

        /// 歌手名称列表
        public let singerInfoSet: [KTVSingerBaseInfo]

        /// 歌词名称列表
        public let lyricistSet: [String]

        /// 作曲列表
        public let composerSet: [String]

        /// 标签列表
        public let tagSet: [String]

        /// 播放时长
        public let duration: Int64

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case name = "Name"
            case singerInfoSet = "SingerInfoSet"
            case lyricistSet = "LyricistSet"
            case composerSet = "ComposerSet"
            case tagSet = "TagSet"
            case duration = "Duration"
        }
    }

    /// 推荐歌单基础信息
    public struct KTVPlaylistBaseInfo: TCOutputModel {
        /// 歌单Id
        public let playlistId: String

        /// 歌单标题
        public let title: String

        /// 歌单介绍
        public let description: String

        /// 歌曲数量
        public let musicNum: Int64

        enum CodingKeys: String, CodingKey {
            case playlistId = "PlaylistId"
            case title = "Title"
            case description = "Description"
            case musicNum = "MusicNum"
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

        /// <del>音量，范围 0~100，默认为 50。</del>（已废弃，请采用 SetRealVolumeInput ）
        public let setVolumeInput: SetVolumeCommandInput

        /// 真实音量，范围 0~100，默认为 50。
        public let setRealVolumeInput: SetRealVolumeCommandInput

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
            case setVolumeInput = "SetVolumeInput"
            case setRealVolumeInput = "SetRealVolumeInput"
        }
    }

    /// KTV 歌手基础信息
    public struct KTVSingerBaseInfo: TCOutputModel {
        /// 歌手id
        public let singerId: String

        /// 歌手名
        public let name: String

        enum CodingKeys: String, CodingKey {
            case singerId = "SingerId"
            case name = "Name"
        }
    }

    /// KTV歌手分类信息
    public struct KTVSingerCategoryInfo: TCOutputModel {
        /// 分类中文名
        public let chineseName: String

        /// 分类英文名
        public let englishName: String

        enum CodingKeys: String, CodingKey {
            case chineseName = "ChineseName"
            case englishName = "EnglishName"
        }
    }

    /// 直播互动歌曲的歌手信息。
    public struct KTVSingerInfo: TCOutputModel {
        /// 歌手id
        public let singerId: String

        /// 歌手名
        public let name: String

        /// 歌手性别: 男，女，组合
        public let gender: String

        /// 地区: 大陆，港台，欧美，日本
        public let area: String

        /// 歌曲数
        public let musicCount: Int64

        /// 歌曲总播放次数
        public let playCount: Int64

        enum CodingKeys: String, CodingKey {
            case singerId = "SingerId"
            case name = "Name"
            case gender = "Gender"
            case area = "Area"
            case musicCount = "MusicCount"
            case playCount = "PlayCount"
        }
    }

    /// 即使广播曲库联想词信息
    public struct KTVSuggestionInfo: TCOutputModel {
        /// 联想词
        public let suggestion: String

        enum CodingKeys: String, CodingKey {
            case suggestion = "Suggestion"
        }
    }

    /// 歌词信息
    public struct Lyric: TCOutputModel {
        /// 歌词cdn地址
        public let url: String

        /// 歌词后缀名
        public let fileNameExt: String

        /// 歌词类型
        public let subItemType: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case fileNameExt = "FileNameExt"
            case subItemType = "SubItemType"
        }
    }

    /// 音乐详情
    public struct Music: TCOutputModel {
        /// 音乐播放链接相对路径，必须通过在正版曲库直通车控制台上登记的域名进行拼接。
        public let url: String

        /// 音频文件大小
        public let fileSize: UInt64

        /// 音频文件类型
        public let fileExtension: String

        /// Song fragment start.试听片段开始时间，试听时长为auditionEnd-auditionBegin
        /// Unit :ms
        public let auditionBegin: UInt64

        /// Song fragment end.试听片段结束时间, 试听时长为auditionEnd-auditionBegin
        /// Unit :ms
        public let auditionEnd: UInt64

        /// 音乐播放链接全路径，前提是在正版曲库直通车控制台添加过域名，否则返回空字符。
        /// 如果添加过多个域名只返回第一个添加域名的播放全路径。
        public let fullUrl: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case fileSize = "FileSize"
            case fileExtension = "FileExtension"
            case auditionBegin = "AuditionBegin"
            case auditionEnd = "AuditionEnd"
            case fullUrl = "FullUrl"
        }
    }

    /// 歌曲变更细节
    public struct MusicDetailInfo: TCInputModel {
        /// 资源方音乐Id
        public let musicId: String

        /// 资源方识别信息
        public let ameId: String

        /// 分类标签
        public let tags: [String]?

        /// 关键词
        public let hitWords: [String]?

        /// 节奏信息
        public let bpm: Int64?

        /// 商业化权益
        public let score: Float?

        /// 应用歌曲信息,1.图文/短视频,2.网络直播,3.网络电台FM,4.免费游戏,5.商业游戏,6.网店网站设计,7.广告营销,8.网络长视频
        public let scene: [String]?

        /// 应用地域,1. 中国大陆,2. 中国含港澳台,3. 全球
        public let region: [String]?

        /// 授权时间,1. 1年, 5. 随片永久
        public let authPeriod: String?

        /// 商业化授权，1. 支持商业化 ,2. 不支持商业化
        public let commercialization: String?

        /// 跨平台传播，1. 支持跨平台传播 ,2. 不支持跨平台传播
        public let platform: String?

        /// 传播渠道
        public let channel: String?

        public init(musicId: String, ameId: String, tags: [String]? = nil, hitWords: [String]? = nil, bpm: Int64? = nil, score: Float? = nil, scene: [String]? = nil, region: [String]? = nil, authPeriod: String? = nil, commercialization: String? = nil, platform: String? = nil, channel: String? = nil) {
            self.musicId = musicId
            self.ameId = ameId
            self.tags = tags
            self.hitWords = hitWords
            self.bpm = bpm
            self.score = score
            self.scene = scene
            self.region = region
            self.authPeriod = authPeriod
            self.commercialization = commercialization
            self.platform = platform
            self.channel = channel
        }

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case ameId = "AmeId"
            case tags = "Tags"
            case hitWords = "HitWords"
            case bpm = "Bpm"
            case score = "Score"
            case scene = "Scene"
            case region = "Region"
            case authPeriod = "AuthPeriod"
            case commercialization = "Commercialization"
            case platform = "Platform"
            case channel = "Channel"
        }
    }

    /// 对外开放信息
    public struct MusicOpenDetail: TCOutputModel {
        /// 音乐Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let musicId: String?

        /// 专辑名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let albumName: String?

        /// 专辑图片路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let albumImageUrl: String?

        /// 音乐名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let musicName: String?

        /// 音乐图片路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let musicImageUrl: String?

        /// 歌手
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let singers: [String]?

        /// 播放时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: UInt64?

        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [String]?

        /// 歌词url
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lyricUrl: String?

        /// 波形图url
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let waveformUrl: String?

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case albumName = "AlbumName"
            case albumImageUrl = "AlbumImageUrl"
            case musicName = "MusicName"
            case musicImageUrl = "MusicImageUrl"
            case singers = "Singers"
            case duration = "Duration"
            case tags = "Tags"
            case lyricUrl = "LyricUrl"
            case waveformUrl = "WaveformUrl"
        }
    }

    /// 返回单曲页面歌曲是否在售状态
    public struct MusicStatus: TCOutputModel {
        /// 歌曲Id
        public let musicId: String

        /// 在售状态,0为在售，1为临时下架，2为永久下架
        public let saleStatus: Int64

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case saleStatus = "SaleStatus"
        }
    }

    /// 曲库包已下架歌曲详细信息
    public struct OfflineMusicDetail: TCOutputModel {
        /// 歌曲Id
        public let itemId: String

        /// 歌曲名称
        public let musicName: String

        /// 不可用原因
        public let offRemark: String

        /// 不可用时间
        public let offTime: String

        enum CodingKeys: String, CodingKey {
            case itemId = "ItemId"
            case musicName = "MusicName"
            case offRemark = "OffRemark"
            case offTime = "OffTime"
        }
    }

    /// 曲库包信息
    public struct Package: TCOutputModel {
        /// 订单id
        public let orderId: String

        /// 曲库包名称
        public let name: String

        /// 授权地区-global: 全球  CN: 中国
        public let authorizedArea: String

        /// 授权次数
        public let authorizedLimit: Int64

        /// 套餐有效期，单位:天
        public let termOfValidity: Int64

        /// 0:不可商业化；1:可商业化
        public let commercial: Int64

        /// 套餐价格，单位：元
        public let packagePrice: Float

        /// 生效开始时间,格式yyyy-MM-dd HH:mm:ss
        public let effectTime: String

        /// 生效结束时间,格式yyyy-MM-dd HH:mm:ss
        public let expireTime: String

        /// 剩余授权次数
        public let usedCount: Int64

        /// 曲库包用途信息
        public let useRanges: [UseRange]

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case name = "Name"
            case authorizedArea = "AuthorizedArea"
            case authorizedLimit = "AuthorizedLimit"
            case termOfValidity = "TermOfValidity"
            case commercial = "Commercial"
            case packagePrice = "PackagePrice"
            case effectTime = "EffectTime"
            case expireTime = "ExpireTime"
            case usedCount = "UsedCount"
            case useRanges = "UseRanges"
        }
    }

    /// 曲库包歌曲信息
    public struct PackageItem: TCOutputModel {
        /// 订单id
        public let orderId: String

        /// 歌曲名
        public let trackName: String

        /// 歌曲ID
        public let itemID: String

        /// 专辑图片
        public let img: String

        /// 歌手名
        public let artistName: String

        /// 歌曲时长
        public let duration: String

        /// 授权区域，global: 全球 CN: 中国
        public let authorizedArea: String

        /// 标签数组
        public let tags: [String]

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case trackName = "TrackName"
            case itemID = "ItemID"
            case img = "Img"
            case artistName = "ArtistName"
            case duration = "Duration"
            case authorizedArea = "AuthorizedArea"
            case tags = "Tags"
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
            self.repeat = `repeat`
        }

        enum CodingKeys: String, CodingKey {
            case message = "Message"
            case `repeat` = "Repeat"
        }
    }

    /// 音频参数信息
    public struct SetAudioParamCommandInput: TCInputModel {
        /// 规格，取值有：
        /// <li>audio/mi：低规格</li>
        /// <li>audio/lo：中规格</li>
        /// <li>audio/hi：高规格</li>
        public let definition: String?

        /// 音频类型，取值有：
        /// <li>Original：原唱</li>
        /// <li>Accompaniment：伴奏</li>
        public let type: String?

        public init(definition: String? = nil, type: String? = nil) {
            self.definition = definition
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
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

        /// 歌曲 ID 列表，当 Type 取 Add 时，与MusicURLs必填其中一项。
        public let musicIds: [String]?

        /// 歌曲 URL 列表，当 Type 取 Add 时，与MusicIds必填其中一项。
        /// 注：URL必须以.mp3结尾且必须是mp3编码文件。
        public let musicURLs: [String]?

        public init(type: String, index: Int64? = nil, changedIndex: Int64? = nil, musicIds: [String]? = nil, musicURLs: [String]? = nil) {
            self.type = type
            self.index = index
            self.changedIndex = changedIndex
            self.musicIds = musicIds
            self.musicURLs = musicURLs
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case index = "Index"
            case changedIndex = "ChangedIndex"
            case musicIds = "MusicIds"
            case musicURLs = "MusicURLs"
        }
    }

    /// 设置真实音量。
    public struct SetRealVolumeCommandInput: TCInputModel {
        /// 真实音量大小，取值范围为 0~100，默认值为 50。
        public let realVolume: Int64

        public init(realVolume: Int64) {
            self.realVolume = realVolume
        }

        enum CodingKeys: String, CodingKey {
            case realVolume = "RealVolume"
        }
    }

    /// 设置音量。
    public struct SetVolumeCommandInput: TCInputModel {
        /// 音量大小，取值范围为 0~100，默认值为 50。
        public let volume: Int64

        public init(volume: Int64) {
            self.volume = volume
        }

        enum CodingKeys: String, CodingKey {
            case volume = "Volume"
        }
    }

    /// 排序依据
    public struct SortBy: TCInputModel {
        /// 排序字段
        public let field: String

        /// 排序方式，可选值：Asc（升序）、Desc（降序）
        public let order: String

        public init(field: String, order: String) {
            self.field = field
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case field = "Field"
            case order = "Order"
        }
    }

    /// 分类内容
    public struct Station: TCOutputModel {
        /// StationID
        public let categoryID: String

        /// Station MCCode
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let categoryCode: String?

        /// Category Name
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// Station的排序值，供参考（返回结果已按其升序）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rank: Int64?

        /// station图片集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imagePathMap: [ImagePath]?

        enum CodingKeys: String, CodingKey {
            case categoryID = "CategoryID"
            case categoryCode = "CategoryCode"
            case name = "Name"
            case rank = "Rank"
            case imagePathMap = "ImagePathMap"
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
        /// <li><del>SetVolume：设置音量</del>（已废弃，请采用 SetRealVolume）</li>
        /// <li>SetRealVolume：设置真实音量</li>
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

        /// <del>音量，当Command取SetVolume时，必填。</del>
        /// （已废弃，请采用 SetRealVolumeCommandInput）
        public let setVolumeCommandInput: SetVolumeCommandInput?

        /// 真实音量，当Command取SetRealVolume时，必填。
        public let setRealVolumeCommandInput: SetRealVolumeCommandInput?

        public init(command: String, playCommandInput: PlayCommandInput? = nil, setPlaylistCommandInput: SetPlaylistCommandInput? = nil, seekCommandInput: SeekCommandInput? = nil, setAudioParamCommandInput: SetAudioParamCommandInput? = nil, sendMessageCommandInput: SendMessageCommandInput? = nil, setPlayModeCommandInput: SetPlayModeCommandInput? = nil, setDestroyModeCommandInput: SetDestroyModeCommandInput? = nil, setVolumeCommandInput: SetVolumeCommandInput? = nil, setRealVolumeCommandInput: SetRealVolumeCommandInput? = nil) {
            self.command = command
            self.playCommandInput = playCommandInput
            self.setPlaylistCommandInput = setPlaylistCommandInput
            self.seekCommandInput = seekCommandInput
            self.setAudioParamCommandInput = setAudioParamCommandInput
            self.sendMessageCommandInput = sendMessageCommandInput
            self.setPlayModeCommandInput = setPlayModeCommandInput
            self.setDestroyModeCommandInput = setDestroyModeCommandInput
            self.setVolumeCommandInput = setVolumeCommandInput
            self.setRealVolumeCommandInput = setRealVolumeCommandInput
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
            case setVolumeCommandInput = "SetVolumeCommandInput"
            case setRealVolumeCommandInput = "SetRealVolumeCommandInput"
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

        /// 进房钥匙，若需要权限控制请携带该参数。
        ///  [privateMapKey 权限设置](/document/product/647/32240)
        public let privateMapKey: String?

        /// 用户角色，目前支持两种角色：
        /// <li>anchor：主播</li>
        /// <li>audience：观众</li>
        public let role: String?

        public init(sign: String, roomId: String, sdkAppId: String, userId: String, privateMapKey: String? = nil, role: String? = nil) {
            self.sign = sign
            self.roomId = roomId
            self.sdkAppId = sdkAppId
            self.userId = userId
            self.privateMapKey = privateMapKey
            self.role = role
        }

        enum CodingKeys: String, CodingKey {
            case sign = "Sign"
            case roomId = "RoomId"
            case sdkAppId = "SdkAppId"
            case userId = "UserId"
            case privateMapKey = "PrivateMapKey"
            case role = "Role"
        }
    }

    /// 下架歌曲复合结构
    public struct TakeMusicOffShelves: TCInputModel {
        /// 资源方对应音乐Id
        public let musicIds: String

        /// 当曲目临时下架时：已订购客户无影响，无需消息通知。当曲目封杀下架后，推送消息至已订购老客户，枚举值，判断是否上/下架
        /// 在售状态，0在售，1临时下架，2永久下架
        public let saleStatus: String

        public init(musicIds: String, saleStatus: String) {
            self.musicIds = musicIds
            self.saleStatus = saleStatus
        }

        enum CodingKeys: String, CodingKey {
            case musicIds = "MusicIds"
            case saleStatus = "SaleStatus"
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

    /// 曲库包用途信息
    public struct UseRange: TCOutputModel {
        /// 用途id
        public let useRangeId: Int64

        /// 用途范围名称
        public let name: String

        enum CodingKeys: String, CodingKey {
            case useRangeId = "UseRangeId"
            case name = "Name"
        }
    }
}
