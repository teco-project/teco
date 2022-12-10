//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tiw {
    /// 鉴权参数
    public struct AuthParam: TCInputModel {
        /// 应用SdkAppId
        public let sdkAppId: Int64
        
        /// 用户ID
        public let userId: String
        
        /// 用户ID对应的签名
        public let userSig: String
        
        public init (sdkAppId: Int64, userId: String, userSig: String) {
            self.sdkAppId = sdkAppId
            self.userId = userId
            self.userSig = userSig
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case userId = "UserId"
            case userSig = "UserSig"
        }
    }
    
    /// 混流画布参数
    public struct Canvas: TCInputModel {
        /// 混流画布宽高配置
        public let layoutParams: LayoutParams
        
        /// 背景颜色，默认为黑色，格式为RGB格式，如红色为"#FF0000"
        public let backgroundColor: String?
        
        public init (layoutParams: LayoutParams, backgroundColor: String?) {
            self.layoutParams = layoutParams
            self.backgroundColor = backgroundColor
        }
        
        enum CodingKeys: String, CodingKey {
            case layoutParams = "LayoutParams"
            case backgroundColor = "BackgroundColor"
        }
    }
    
    /// 实时录制视频拼接参数
    public struct Concat: TCInputModel {
        /// 是否开启拼接功能
        /// 在开启了视频拼接功能的情况下，实时录制服务会把同一个用户因为暂停导致的多段视频拼接成一个视频
        public let enabled: Bool
        
        /// 视频拼接时使用的垫片图片下载地址，不填默认用全黑的图片进行视频垫片
        public let image: String?
        
        public init (enabled: Bool, image: String?) {
            self.enabled = enabled
            self.image = image
        }
        
        enum CodingKeys: String, CodingKey {
            case enabled = "Enabled"
            case image = "Image"
        }
    }
    
    /// 自定义混流布局参数
    public struct CustomLayout: TCInputModel {
        /// 混流画布参数
        public let canvas: Canvas
        
        /// 流布局参数，每路流的布局不能超出画布区域
        public let inputStreamList: [StreamLayout]
        
        public init (canvas: Canvas, inputStreamList: [StreamLayout]) {
            self.canvas = canvas
            self.inputStreamList = inputStreamList
        }
        
        enum CodingKeys: String, CodingKey {
            case canvas = "Canvas"
            case inputStreamList = "InputStreamList"
        }
    }
    
    /// 实时录制中出现的用户视频流断流次数统计
    public struct Interrupt: TCOutputModel {
        /// 用户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?
        
        /// 视频流断流次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let count: Int64?
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case count = "Count"
        }
    }
    
    /// 自定义混流配置布局参数
    public struct LayoutParams: TCInputModel {
        /// 流画面宽，取值范围[2,3000]
        public let width: Int64
        
        /// 流画面高，取值范围[2,3000]
        public let height: Int64
        
        /// 当前画面左上角顶点相对于Canvas左上角顶点的x轴偏移量，默认为0，取值范围[0,3000]
        public let x: Int64?
        
        /// 当前画面左上角顶点相对于Canvas左上角顶点的y轴偏移量，默认为0， 取值范围[0,3000]
        public let y: Int64?
        
        /// 画面z轴位置，默认为0
        /// z轴确定了重叠画面的遮盖顺序，z轴值大的画面处于顶层
        public let zOrder: Int64?
        
        public init (width: Int64, height: Int64, x: Int64?, y: Int64?, zOrder: Int64?) {
            self.width = width
            self.height = height
            self.x = x
            self.y = y
            self.zOrder = zOrder
        }
        
        enum CodingKeys: String, CodingKey {
            case width = "Width"
            case height = "Height"
            case x = "X"
            case y = "Y"
            case zOrder = "ZOrder"
        }
    }
    
    /// 混流配置
    public struct MixStream: TCInputModel {
        /// 是否开启混流
        public let enabled: Bool
        
        /// 是否禁用音频混流
        public let disableAudio: Bool?
        
        /// 内置混流布局模板ID, 取值 [1, 2], 区别见内置混流布局模板样式示例说明
        /// 在没有填Custom字段时候，ModelId是必填的
        public let modelId: Int64?
        
        /// 老师用户ID
        /// 此字段只有在ModelId填了的情况下生效
        /// 填写TeacherId的效果是把指定为TeacherId的用户视频流显示在内置模板的第一个小画面中
        public let teacherId: String?
        
        /// 自定义混流布局参数
        /// 当此字段存在时，ModelId 及 TeacherId 字段将被忽略
        public let custom: CustomLayout
        
        public init (enabled: Bool, disableAudio: Bool?, modelId: Int64?, teacherId: String?, custom: CustomLayout) {
            self.enabled = enabled
            self.disableAudio = disableAudio
            self.modelId = modelId
            self.teacherId = teacherId
            self.custom = custom
        }
        
        enum CodingKeys: String, CodingKey {
            case enabled = "Enabled"
            case disableAudio = "DisableAudio"
            case modelId = "ModelId"
            case teacherId = "TeacherId"
            case custom = "Custom"
        }
    }
    
    /// 拼接视频中被忽略的时间段
    public struct OmittedDuration: TCOutputModel {
        /// 录制暂停时间戳对应的视频播放时间(单位: 毫秒)
        public let videoTime: Int64
        
        /// 录制暂停时间戳(单位: 毫秒)
        public let pauseTime: Int64
        
        /// 录制恢复时间戳(单位: 毫秒)
        public let resumeTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case videoTime = "VideoTime"
            case pauseTime = "PauseTime"
            case resumeTime = "ResumeTime"
        }
    }
    
    /// 录制控制参数， 用于指定全局录制控制及具体流录制控制参数，比如设置需要对哪些流进行录制，是否只录制小画面等
    public struct RecordControl: TCInputModel {
        /// 设置是否开启录制控制参数，只有设置为true的时候，录制控制参数才生效。
        public let enabled: Bool
        
        /// 设置是否禁用录制的全局控制参数。一般与`StreamControls`参数配合使用。
        /// true - 所有流都不录制。
        /// false - 所有流都录制。默认为false。
        /// 这里的设置对所有流都生效，如果同时在 `StreamControls` 列表中针对指定流设置了控制参数，则优先采用`StreamControls`中设置的控制参数。
        public let disableRecord: Bool?
        
        /// 设置是否禁用所有流的音频录制的全局控制参数。一般与`StreamControls`参数配合使用。
        /// true - 所有流的录制都不对音频进行录制。
        /// false - 所有流的录制都需要对音频进行录制。默认为false。
        /// 这里的设置对所有流都生效，如果同时在 `StreamControls` 列表中针对指定流设置了控制参数，则优先采用`StreamControls`中设置的控制参数。
        public let disableAudio: Bool?
        
        /// 设置是否所有流都只录制小画面的全局控制参数。一般与`StreamControls`参数配合使用。
        /// true - 所有流都只录制小画面。设置为true时，请确保上行端在推流的时候同时上行了小画面，否则录制视频可能是黑屏。
        /// false - 所有流都录制大画面，默认为false。
        /// 这里的设置对所有流都生效，如果同时在 `StreamControls` 列表中针对指定流设置了控制参数，则优先采用`StreamControls`中设置的控制参数。
        public let pullSmallVideo: Bool?
        
        /// 针对具体流指定控制参数，如果列表为空，则所有流采用全局配置的控制参数进行录制。列表不为空，则列表中指定的流将优先按此列表指定的控制参数进行录制。
        public let streamControls: [StreamControl]?
        
        public init (enabled: Bool, disableRecord: Bool?, disableAudio: Bool?, pullSmallVideo: Bool?, streamControls: [StreamControl]?) {
            self.enabled = enabled
            self.disableRecord = disableRecord
            self.disableAudio = disableAudio
            self.pullSmallVideo = pullSmallVideo
            self.streamControls = streamControls
        }
        
        enum CodingKeys: String, CodingKey {
            case enabled = "Enabled"
            case disableRecord = "DisableRecord"
            case disableAudio = "DisableAudio"
            case pullSmallVideo = "PullSmallVideo"
            case streamControls = "StreamControls"
        }
    }
    
    /// 互动白板房间用量信息
    public struct RoomUsageDataItem: TCOutputModel {
        /// 日期，格式为YYYY-MM-DD
        public let time: String
        
        /// 白板应用SDKAppID
        public let sdkAppId: Int64
        
        /// 互动白板子产品，请求参数传入的一致
        /// - sp_tiw_board: 互动白板时长
        /// - sp_tiw_ric: 实时录制时长
        public let subProduct: String
        
        /// 用量值
        /// - 白板时长、实时录制时长单位为分钟
        public let value: Float
        
        /// 互动白板房间号
        public let roomID: UInt64
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case sdkAppId = "SdkAppId"
            case subProduct = "SubProduct"
            case value = "Value"
            case roomID = "RoomID"
        }
    }
    
    /// 板书文件存储cos参数
    public struct SnapshotCOS: TCInputModel {
        /// cos所在腾讯云帐号uin
        public let uin: UInt64
        
        /// cos所在地区
        public let region: String
        
        /// cos存储桶名称
        public let bucket: String
        
        /// 板书文件存储根目录
        public let targetDir: String?
        
        /// CDN加速域名
        public let domain: String?
        
        public init (uin: UInt64, region: String, bucket: String, targetDir: String?, domain: String?) {
            self.uin = uin
            self.region = region
            self.bucket = bucket
            self.targetDir = targetDir
            self.domain = domain
        }
        
        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case region = "Region"
            case bucket = "Bucket"
            case targetDir = "TargetDir"
            case domain = "Domain"
        }
    }
    
    /// 白板板书结果
    public struct SnapshotResult: TCOutputModel {
        /// 任务执行错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorCode: String?
        
        /// 任务执行错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?
        
        /// 快照生成图片总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?
        
        /// 快照图片链接列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let snapshots: [String]?
        
        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case total = "Total"
            case snapshots = "Snapshots"
        }
    }
    
    /// 生成白板板书时的白板参数，例如白板宽高等
    public struct SnapshotWhiteboard: TCInputModel {
        /// 白板宽度大小，默认为1280，有效取值范围[0，2560]
        public let width: UInt64?
        
        /// 白板高度大小，默认为720，有效取值范围[0，2560]
        public let height: UInt64?
        
        /// 白板初始化参数的JSON转义字符串，透传到白板 SDK
        public let initParams: String?
        
        public init (width: UInt64?, height: UInt64?, initParams: String?) {
            self.width = width
            self.height = height
            self.initParams = initParams
        }
        
        enum CodingKeys: String, CodingKey {
            case width = "Width"
            case height = "Height"
            case initParams = "InitParams"
        }
    }
    
    /// 指定流录制的控制参数，比如是否禁用音频、视频是录制大画面还是录制小画面等
    public struct StreamControl: TCInputModel {
        /// 视频流ID
        /// 视频流ID的取值含义如下：
        /// 1. tic_record_user - 表示白板视频流
        /// 2. tic_substream - 表示辅路视频流
        /// 3. 特定用户ID - 表示指定用户的视频流
        /// 在实际录制过程中，视频流ID的匹配规则为前缀匹配，只要真实流ID的前缀与指定的流ID一致就认为匹配成功。
        public let streamId: String
        
        /// 设置是否对此路流开启录制。
        /// true - 表示不对这路流进行录制，录制结果将不包含这路流的视频。
        /// false - 表示需要对这路流进行录制，录制结果会包含这路流的视频。
        /// 默认为 false。
        public let disableRecord: Bool?
        
        /// 设置是否禁用这路流的音频录制。
        /// true - 表示不对这路流的音频进行录制，录制结果里这路流的视频将会没有声音。
        /// false - 录制视频会保留音频，如果设置为true，则录制视频会丢弃这路流的音频。
        /// 默认为 false。
        public let disableAudio: Bool?
        
        /// 设置当前流录制视频是否只录制小画面。
        /// true - 录制小画面。设置为true时，请确保上行端同时上行了小画面，否则录制视频可能是黑屏。
        /// false - 录制大画面。
        /// 默认为 false。
        public let pullSmallVideo: Bool?
        
        public init (streamId: String, disableRecord: Bool?, disableAudio: Bool?, pullSmallVideo: Bool?) {
            self.streamId = streamId
            self.disableRecord = disableRecord
            self.disableAudio = disableAudio
            self.pullSmallVideo = pullSmallVideo
        }
        
        enum CodingKeys: String, CodingKey {
            case streamId = "StreamId"
            case disableRecord = "DisableRecord"
            case disableAudio = "DisableAudio"
            case pullSmallVideo = "PullSmallVideo"
        }
    }
    
    /// 流布局参数
    public struct StreamLayout: TCInputModel {
        /// 流布局配置参数
        public let layoutParams: LayoutParams
        
        /// 视频流ID
        /// 流ID的取值含义如下：
        /// 1. tic_record_user - 表示当前画面用于显示白板视频流
        /// 2. tic_substream - 表示当前画面用于显示辅路视频流
        /// 3. 特定用户ID - 表示当前画面用于显示指定用户的视频流
        /// 4. 不填 - 表示当前画面用于备选，当有新的视频流加入时，会从这些备选的空位中选择一个没有被占用的位置来显示新的视频流画面
        public let inputStreamId: String?
        
        /// 背景颜色，默认为黑色，格式为RGB格式，如红色为"#FF0000"
        public let backgroundColor: String?
        
        /// 视频画面填充模式。
        /// 0 - 自适应模式，对视频画面进行等比例缩放，在指定区域内显示完整的画面。此模式可能存在黑边。
        /// 1 - 全屏模式，对视频画面进行等比例缩放，让画面填充满整个指定区域。此模式不会存在黑边，但会将超出区域的那一部分画面裁剪掉。
        public let fillMode: Int64?
        
        public init (layoutParams: LayoutParams, inputStreamId: String?, backgroundColor: String?, fillMode: Int64?) {
            self.layoutParams = layoutParams
            self.inputStreamId = inputStreamId
            self.backgroundColor = backgroundColor
            self.fillMode = fillMode
        }
        
        enum CodingKeys: String, CodingKey {
            case layoutParams = "LayoutParams"
            case inputStreamId = "InputStreamId"
            case backgroundColor = "BackgroundColor"
            case fillMode = "FillMode"
        }
    }
    
    /// 查询指标返回的时间序列
    public struct TimeValue: TCOutputModel {
        /// Unix时间戳，单位秒
        public let time: UInt64
        
        /// 查询指标对应当前时间的值
        public let value: Float
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case value = "Value"
        }
    }
    
    /// 互动白板用量信息
    public struct UsageDataItem: TCOutputModel {
        /// 日期，格式为YYYY-MM-DD
        public let time: String
        
        /// 白板应用SDKAppID
        public let sdkAppId: Int64
        
        /// 互动白板子产品，请求参数传入的一致
        /// - sp_tiw_board: 互动白板时长
        /// - sp_tiw_dt: 动态转码页数
        /// - sp_tiw_st: 静态转码页数
        /// - sp_tiw_ric: 实时录制时长
        public let subProduct: String
        
        /// 用量值
        /// - 静态转码、动态转码单位为页
        /// - 白板时长、实时录制时长单位为分钟
        public let value: Float
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case sdkAppId = "SdkAppId"
            case subProduct = "SubProduct"
            case value = "Value"
        }
    }
    
    /// 视频信息
    public struct VideoInfo: TCOutputModel {
        /// 视频开始播放的时间（单位：毫秒）
        public let videoPlayTime: Int64
        
        /// 视频大小（字节）
        public let videoSize: Int64
        
        /// 视频格式
        public let videoFormat: String
        
        /// 视频播放时长（单位：毫秒）
        public let videoDuration: Int64
        
        /// 视频文件URL
        public let videoUrl: String
        
        /// 视频文件Id
        public let videoId: String
        
        /// 视频流类型 
        /// - 0：摄像头视频 
        /// - 1：屏幕分享视频
        /// - 2：白板视频 
        /// - 3：混流视频
        /// - 4：纯音频（mp3)
        public let videoType: Int64
        
        /// 摄像头/屏幕分享视频所属用户的 Id（白板视频为空、混流视频tic_mixstream_房间号_混流布局类型、辅路视频tic_substream_用户Id）
        public let userId: String
        
        /// 视频分辨率的宽
        public let width: Int64
        
        /// 视频分辨率的高
        public let height: Int64
        
        enum CodingKeys: String, CodingKey {
            case videoPlayTime = "VideoPlayTime"
            case videoSize = "VideoSize"
            case videoFormat = "VideoFormat"
            case videoDuration = "VideoDuration"
            case videoUrl = "VideoUrl"
            case videoId = "VideoId"
            case videoType = "VideoType"
            case userId = "UserId"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// 实时录制白板参数，例如白板宽高等
    public struct Whiteboard: TCInputModel {
        /// 实时录制结果里白板视频宽，取值必须大于等于2，默认为1280
        public let width: Int64?
        
        /// 实时录制结果里白板视频高，取值必须大于等于2，默认为960
        public let height: Int64?
        
        /// 白板初始化参数，透传到白板 SDK
        public let initParam: String?
        
        public init (width: Int64?, height: Int64?, initParam: String?) {
            self.width = width
            self.height = height
            self.initParam = initParam
        }
        
        enum CodingKeys: String, CodingKey {
            case width = "Width"
            case height = "Height"
            case initParam = "InitParam"
        }
    }
    
    /// 白板推流备份相关请求参数
    public struct WhiteboardPushBackupParam: TCInputModel {
        /// 用于白板推流服务进房的用户ID，
        /// 该ID必须是一个单独的未在SDK中使用的ID，白板推流服务将使用这个用户ID进入房间进行白板推流，若该ID和SDK中使用的ID重复，会导致SDK和录制服务互踢，影响正常推流。
        public let pushUserId: String
        
        /// 与PushUserId对应的签名
        public let pushUserSig: String
        
        public init (pushUserId: String, pushUserSig: String) {
            self.pushUserId = pushUserId
            self.pushUserSig = pushUserSig
        }
        
        enum CodingKeys: String, CodingKey {
            case pushUserId = "PushUserId"
            case pushUserSig = "PushUserSig"
        }
    }
}
