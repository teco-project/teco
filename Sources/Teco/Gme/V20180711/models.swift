//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Gme {
    /// 年龄语音识别子任务
    public struct AgeDetectTask: TCInputModel {
        /// 数据唯一ID
        public let dataId: String
        
        /// 数据文件的url，为 urlencode 编码,音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg
        public let url: String
        
        public init (dataId: String, url: String) {
            self.dataId = dataId
            self.url = url
        }
        
        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case url = "Url"
        }
    }
    
    /// 年龄语音任务结果
    public struct AgeDetectTaskResult: TCOutputModel {
        /// 数据唯一ID
        public let dataId: String
        
        /// 数据文件的url
        public let url: String
        
        /// 任务状态，0: 已创建，1:运行中，2:正常结束，3:异常结束，4:运行超时
        public let status: UInt64
        
        /// 任务结果：0: 成年，1:未成年，100:未知
        public let age: UInt64
        
        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case url = "Url"
            case status = "Status"
            case age = "Age"
        }
    }
    
    /// 应用用量统计数据
    public struct AppStatisticsItem: TCOutputModel {
        /// 实时语音统计数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realtimeSpeechStatisticsItem: RealTimeSpeechStatisticsItem
        
        /// 语音消息统计数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voiceMessageStatisticsItem: VoiceMessageStatisticsItem
        
        /// 语音过滤统计数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voiceFilterStatisticsItem: VoiceFilterStatisticsItem
        
        /// 统计时间
        // FIXME: Codable support not implemented for date yet.
        public let date: Date
        
        /// 录音转文本用量统计数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioTextStatisticsItem: AudioTextStatisticsItem
        
        /// 流式转文本用量数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let streamTextStatisticsItem: StreamTextStatisticsItem
        
        /// 海外转文本用量数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let overseaTextStatisticsItem: OverseaTextStatisticsItem
        
        /// 实时语音转文本用量数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realtimeTextStatisticsItem: RealtimeTextStatisticsItem
        
        enum CodingKeys: String, CodingKey {
            case realtimeSpeechStatisticsItem = "RealtimeSpeechStatisticsItem"
            case voiceMessageStatisticsItem = "VoiceMessageStatisticsItem"
            case voiceFilterStatisticsItem = "VoiceFilterStatisticsItem"
            case date = "Date"
            case audioTextStatisticsItem = "AudioTextStatisticsItem"
            case streamTextStatisticsItem = "StreamTextStatisticsItem"
            case overseaTextStatisticsItem = "OverseaTextStatisticsItem"
            case realtimeTextStatisticsItem = "RealtimeTextStatisticsItem"
        }
    }
    
    /// 应用统计数据
    public struct ApplicationDataStatistics: TCOutputModel {
        /// 应用ID
        public let bizId: UInt64
        
        /// Dau统计项数目
        public let dauDataNum: UInt64
        
        /// 大陆地区Dau统计数据，单位人
        public let dauDataMainland: [StatisticsItem]
        
        /// 海外地区Dau统计数据，单位人
        public let dauDataOversea: [StatisticsItem]
        
        /// 大陆和海外地区Dau统计数据汇总，单位人
        public let dauDataSum: [StatisticsItem]
        
        /// 实时语音时长统计项数目
        public let durationDataNum: UInt64
        
        /// 大陆地区实时语音时长统计数据，单位分钟
        public let durationDataMainland: [StatisticsItem]
        
        /// 海外地区实时语音时长统计数据，单位分钟
        public let durationDataOversea: [StatisticsItem]
        
        /// 大陆和海外地区实时语音时长统计数据汇总，单位分钟
        public let durationDataSum: [StatisticsItem]
        
        /// Pcu统计项数目
        public let pcuDataNum: UInt64
        
        /// 大陆地区Pcu统计数据，单位人
        public let pcuDataMainland: [StatisticsItem]
        
        /// 海外地区Pcu统计数据，单位人
        public let pcuDataOversea: [StatisticsItem]
        
        /// 大陆和海外地区Pcu统计数据汇总，单位人
        public let pcuDataSum: [StatisticsItem]
        
        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case dauDataNum = "DauDataNum"
            case dauDataMainland = "DauDataMainland"
            case dauDataOversea = "DauDataOversea"
            case dauDataSum = "DauDataSum"
            case durationDataNum = "DurationDataNum"
            case durationDataMainland = "DurationDataMainland"
            case durationDataOversea = "DurationDataOversea"
            case durationDataSum = "DurationDataSum"
            case pcuDataNum = "PcuDataNum"
            case pcuDataMainland = "PcuDataMainland"
            case pcuDataOversea = "PcuDataOversea"
            case pcuDataSum = "PcuDataSum"
        }
    }
    
    /// 获取应用列表返回
    public struct ApplicationList: TCOutputModel {
        /// 服务开关状态
        public let serviceConf: ServiceStatus
        
        /// 应用ID(AppID)
        public let bizId: UInt64
        
        /// 应用名称
        public let appName: String
        
        /// 项目ID，默认为0
        public let projectId: UInt64
        
        /// 应用状态，返回0表示正常，1表示关闭，2表示欠费停服，3表示欠费回收
        public let appStatus: UInt64
        
        /// 创建时间，Unix时间戳格式
        public let createTime: UInt64
        
        /// 应用类型，无需关注此数值
        public let appType: UInt64
        
        enum CodingKeys: String, CodingKey {
            case serviceConf = "ServiceConf"
            case bizId = "BizId"
            case appName = "AppName"
            case projectId = "ProjectId"
            case appStatus = "AppStatus"
            case createTime = "CreateTime"
            case appType = "AppType"
        }
    }
    
    /// 录音转文本用量统计数据
    public struct AudioTextStatisticsItem: TCOutputModel {
        /// 统计值，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Float?
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }
    
    /// CreateApp的输出参数
    public struct CreateAppResp: TCOutputModel {
        /// 应用ID，由后台自动生成。
        public let bizId: UInt64
        
        /// 应用名称，透传输入参数的AppName
        public let appName: String
        
        /// 项目ID，透传输入的ProjectId
        public let projectId: UInt64
        
        /// 应用密钥，GME SDK初始化时使用
        public let secretKey: String
        
        /// 服务创建时间戳
        public let createTime: UInt64
        
        /// 实时语音服务配置数据
        public let realtimeSpeechConf: RealtimeSpeechConf
        
        /// 语音消息及转文本服务配置数据
        public let voiceMessageConf: VoiceMessageConf
        
        /// 语音分析服务配置数据
        public let voiceFilterConf: VoiceFilterConf
        
        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case appName = "AppName"
            case projectId = "ProjectId"
            case secretKey = "SecretKey"
            case createTime = "CreateTime"
            case realtimeSpeechConf = "RealtimeSpeechConf"
            case voiceMessageConf = "VoiceMessageConf"
            case voiceFilterConf = "VoiceFilterConf"
        }
    }
    
    /// 语音消息转文本自学习模型配置
    public struct CustomizationConfigs: TCInputModel {
        /// 应用 ID，登录控制台创建应用得到的AppID
        public let bizId: Int64
        
        /// 模型ID
        public let modelId: String
        
        /// 模型状态，-1下线状态，1上线状态, 0训练中, -2训练失败, 3上线中, 4下线中
        public let modelState: Int64
        
        /// 模型名称
        public let modelName: String?
        
        /// 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        public let textUrl: String?
        
        /// 更新时间，11位时间戳
        public let updateTime: Int64?
        
        public init (bizId: Int64, modelId: String, modelState: Int64, modelName: String?, textUrl: String?, updateTime: Int64?) {
            self.bizId = bizId
            self.modelId = modelId
            self.modelState = modelState
            self.modelName = modelName
            self.textUrl = textUrl
            self.updateTime = updateTime
        }
        
        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case modelId = "ModelId"
            case modelState = "ModelState"
            case modelName = "ModelName"
            case textUrl = "TextUrl"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 剔除房间操作结果
    public struct DeleteResult: TCOutputModel {
        /// 错误码，0-剔除成功 其他-剔除失败
        public let code: Int64
        
        /// 错误描述
        public let errorMsg: String
        
        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case errorMsg = "ErrorMsg"
        }
    }
    
    /// 获取应用用量统计数据输出参数
    public struct DescribeAppStatisticsResp: TCOutputModel {
        /// 应用用量统计数据
        public let appStatistics: [AppStatisticsItem]
        
        enum CodingKeys: String, CodingKey {
            case appStatistics = "AppStatistics"
        }
    }
    
    /// 语音检测结果返回
    public struct DescribeScanResult: TCOutputModel {
        /// 业务返回码
        public let code: Int64
        
        /// 数据唯一 ID
        public let dataId: String
        
        /// 检测完成的时间戳
        public let scanFinishTime: UInt64
        
        /// 是否违规
        public let hitFlag: Bool
        
        /// 是否为流
        public let live: Bool
        
        /// 业务返回描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?
        
        /// 检测结果，Code 为 0 时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanPiece: [ScanPiece]?
        
        /// 提交检测的时间戳
        public let scanStartTime: UInt64
        
        /// 语音检测场景，对应请求时的 Scene
        public let scenes: [String]
        
        /// 语音检测任务 ID，由后台分配
        public let taskId: String
        
        /// 文件或接流地址
        public let url: String
        
        /// 检测任务执行结果状态，分别为：
        /// <li>Start: 任务开始</li>
        /// <li>Success: 成功结束</li>
        /// <li>Error: 异常</li>
        public let status: String
        
        /// 提交检测的应用 ID
        public let bizId: UInt64
        
        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case dataId = "DataId"
            case scanFinishTime = "ScanFinishTime"
            case hitFlag = "HitFlag"
            case live = "Live"
            case msg = "Msg"
            case scanPiece = "ScanPiece"
            case scanStartTime = "ScanStartTime"
            case scenes = "Scenes"
            case taskId = "TaskId"
            case url = "Url"
            case status = "Status"
            case bizId = "BizId"
        }
    }
    
    /// 查找过滤
    public struct Filter: TCInputModel {
        /// 要过滤的字段名, 比如"AppName"
        public let name: String?
        
        /// 多个关键字
        public let values: [String]?
        
        public init (name: String?, values: [String]?) {
            self.name = name
            self.values = values
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }
    
    /// 用户进出房间信息
    public struct InOutTimeInfo: TCOutputModel {
        /// 进入房间时间
        public let startTime: Int64
        
        /// 退出房间时间
        public let endTime: Int64
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// ModifyAppStatus接口输出参数
    public struct ModifyAppStatusResp: TCOutputModel {
        /// GME应用ID
        public let bizId: UInt64
        
        /// 应用状态，取值：open/close
        public let status: String
        
        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case status = "Status"
        }
    }
    
    /// 海外转文本用量数据
    public struct OverseaTextStatisticsItem: TCOutputModel {
        /// 统计值，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Float?
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }
    
    /// 实时语音用量统计数据
    public struct RealTimeSpeechStatisticsItem: TCOutputModel {
        /// 大陆地区DAU
        public let mainLandDau: UInt64
        
        /// 大陆地区PCU
        public let mainLandPcu: UInt64
        
        /// 大陆地区总使用时长，单位为min
        public let mainLandDuration: UInt64
        
        /// 海外地区DAU
        public let overseaDau: UInt64
        
        /// 海外地区PCU
        public let overseaPcu: UInt64
        
        /// 海外地区总使用时长，单位为min
        public let overseaDuration: UInt64
        
        enum CodingKeys: String, CodingKey {
            case mainLandDau = "MainLandDau"
            case mainLandPcu = "MainLandPcu"
            case mainLandDuration = "MainLandDuration"
            case overseaDau = "OverseaDau"
            case overseaPcu = "OverseaPcu"
            case overseaDuration = "OverseaDuration"
        }
    }
    
    /// 实时语音配置数据
    public struct RealtimeSpeechConf: TCInputModel, TCOutputModel {
        /// 实时语音服务开关，取值：open/close
        public let status: String?
        
        /// 实时语音音质类型，取值：high-高音质
        public let quality: String?
        
        public init (status: String?, quality: String?) {
            self.status = status
            self.quality = quality
        }
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case quality = "Quality"
        }
    }
    
    /// 实时语音转文本用量数据
    public struct RealtimeTextStatisticsItem: TCOutputModel {
        /// 统计值，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Float?
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }
    
    /// 房间内用户信息
    public struct RoomUser: TCOutputModel {
        /// 房间id
        public let roomId: UInt64
        
        /// 房间里用户uin列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uins: [UInt64]?
        
        /// 字符串房间id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let strRoomId: String?
        
        enum CodingKeys: String, CodingKey {
            case roomId = "RoomId"
            case uins = "Uins"
            case strRoomId = "StrRoomId"
        }
    }
    
    /// 语音检测详情
    public struct ScanDetail: TCOutputModel {
        /// 违规场景，参照<a href="https://cloud.tencent.com/document/product/607/37622#Label_Value">Label</a>定义
        public let label: String
        
        /// 该场景下概率[0.00,100.00],分值越大违规概率越高
        public let rate: String
        
        /// 违规关键字
        public let keyWord: String
        
        /// 关键字在音频的开始时间，从0开始的偏移量，单位为毫秒
        public let startTime: UInt64
        
        /// 关键字在音频的结束时间，从0开始的偏移量,，单位为毫秒
        public let endTime: UInt64
        
        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case rate = "Rate"
            case keyWord = "KeyWord"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// 语音检测结果，Code 为 0 时返回
    public struct ScanPiece: TCOutputModel {
        /// 流检测时返回，音频转存地址，保留30min
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dumpUrl: String?
        
        /// 是否违规
        public let hitFlag: Bool
        
        /// 违规主要类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mainType: String?
        
        /// 语音检测详情
        public let scanDetail: [ScanDetail]
        
        /// gme实时语音房间ID，透传任务传入时的RoomId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let roomId: String?
        
        /// gme实时语音用户ID，透传任务传入时的OpenId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let openId: String?
        
        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let info: String?
        
        /// 流检测时分片在流中的偏移时间，单位毫秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: UInt64?
        
        /// 流检测时分片时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: UInt64?
        
        /// 分片开始检测时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pieceStartTime: UInt64?
        
        enum CodingKeys: String, CodingKey {
            case dumpUrl = "DumpUrl"
            case hitFlag = "HitFlag"
            case mainType = "MainType"
            case scanDetail = "ScanDetail"
            case roomId = "RoomId"
            case openId = "OpenId"
            case info = "Info"
            case offset = "Offset"
            case duration = "Duration"
            case pieceStartTime = "PieceStartTime"
        }
    }
    
    /// 语音检测返回结果
    public struct ScanVoiceResult: TCOutputModel {
        /// 数据ID
        public let dataId: String
        
        /// 任务ID
        public let taskId: String
        
        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case taskId = "TaskId"
        }
    }
    
    /// 服务开关状态
    public struct ServiceStatus: TCOutputModel {
        /// 实时语音服务开关状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realTimeSpeech: StatusInfo
        
        /// 语音消息服务开关状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voiceMessage: StatusInfo
        
        /// 语音内容安全服务开关状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let porn: StatusInfo
        
        /// 语音录制服务开关状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let live: StatusInfo
        
        /// 语音转文本服务开关状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realTimeAsr: StatusInfo
        
        enum CodingKeys: String, CodingKey {
            case realTimeSpeech = "RealTimeSpeech"
            case voiceMessage = "VoiceMessage"
            case porn = "Porn"
            case live = "Live"
            case realTimeAsr = "RealTimeAsr"
        }
    }
    
    /// 用量数据单元
    public struct StatisticsItem: TCOutputModel {
        /// 日期，格式为年-月-日，如2018-07-13
        // FIXME: Codable support not implemented for date yet.
        public let statDate: Date
        
        /// 统计值
        public let data: UInt64
        
        enum CodingKeys: String, CodingKey {
            case statDate = "StatDate"
            case data = "Data"
        }
    }
    
    /// 服务开关状态
    public struct StatusInfo: TCOutputModel {
        /// 服务开关状态， 0-正常，1-关闭
        public let status: UInt64
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }
    
    /// 流式转文本用量数据
    public struct StreamTextStatisticsItem: TCOutputModel {
        /// 统计值，单位：秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Float?
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }
    
    /// 标签列表
    public struct Tag: TCInputModel, TCOutputModel {
        /// 标签键
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagKey: String?
        
        /// 标签值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagValue: String?
        
        public init (tagKey: String?, tagValue: String?) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }
        
        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }
    
    /// 语音检测任务列表
    public struct Task: TCInputModel {
        /// 数据的唯一ID
        public let dataId: String
        
        /// 数据文件的url，为 urlencode 编码，流式则为拉流地址
        public let url: String
        
        /// gme实时语音房间ID，通过gme实时语音进行语音分析时输入
        public let roomId: String?
        
        /// gme实时语音用户ID，通过gme实时语音进行语音分析时输入
        public let openId: String?
        
        public init (dataId: String, url: String, roomId: String?, openId: String?) {
            self.dataId = dataId
            self.url = url
            self.roomId = roomId
            self.openId = openId
        }
        
        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case url = "Url"
            case roomId = "RoomId"
            case openId = "OpenId"
        }
    }
    
    /// 用户麦克风状态
    public struct UserMicStatus: TCInputModel {
        /// 客户端用于标识用户的Openid。
        public let uid: Int64
        
        /// 开麦状态。1表示关闭麦克风，2表示打开麦克风。
        public let enableMic: Int64
        
        public init (uid: Int64, enableMic: Int64) {
            self.uid = uid
            self.enableMic = enableMic
        }
        
        enum CodingKeys: String, CodingKey {
            case uid = "Uid"
            case enableMic = "EnableMic"
        }
    }
    
    /// 语音过滤服务配置数据
    public struct VoiceFilterConf: TCInputModel, TCOutputModel {
        /// 语音过滤服务开关，取值：open/close
        public let status: String?
        
        public init (status: String?) {
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
        }
    }
    
    /// 语音过滤用量统计数据
    public struct VoiceFilterStatisticsItem: TCOutputModel {
        /// 语音过滤总时长，单位为min
        public let duration: UInt64
        
        enum CodingKeys: String, CodingKey {
            case duration = "Duration"
        }
    }
    
    /// 离线语音服务配置数据
    public struct VoiceMessageConf: TCInputModel, TCOutputModel {
        /// 离线语音服务开关，取值：open/close
        public let status: String?
        
        /// 离线语音支持语种，取值： all-全部，cnen-中英文。默认为中英文
        public let language: String?
        
        public init (status: String?, language: String?) {
            self.status = status
            self.language = language
        }
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case language = "Language"
        }
    }
    
    /// 语音消息用量统计信息
    public struct VoiceMessageStatisticsItem: TCOutputModel {
        /// 离线语音DAU
        public let dau: UInt64
        
        enum CodingKeys: String, CodingKey {
            case dau = "Dau"
        }
    }
}