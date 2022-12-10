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

extension Vm {
    /// 音频输出参数
    public struct AudioResult: TCOutputModel {
        /// 是否命中
        /// 0 未命中
        /// 1 命中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hitFlag: Int64?
        
        /// 命中的标签
        /// Porn 色情
        /// Polity 政治
        /// Illegal 违法
        /// Abuse 谩骂
        /// Terror 暴恐
        /// Ad 广告
        /// Moan 呻吟
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 审核建议，可选值：
        /// Pass 通过，
        /// Review 建议人审，
        /// Block 确认违规
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?
        
        /// 得分，0-100
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?
        
        /// 音频ASR文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: String?
        
        /// 音频片段存储URL，有效期为1天
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?
        
        /// 音频时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: String?
        
        /// 拓展字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?
        
        /// 文本审核结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textResults: [AudioResultDetailTextResult]?
        
        /// 音频呻吟审核结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let moanResults: [AudioResultDetailMoanResult]?
        
        /// 音频语种检测结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let languageResults: [AudioResultDetailLanguageResult]?
        
        enum CodingKeys: String, CodingKey {
            case hitFlag = "HitFlag"
            case label = "Label"
            case suggestion = "Suggestion"
            case score = "Score"
            case text = "Text"
            case url = "Url"
            case duration = "Duration"
            case extra = "Extra"
            case textResults = "TextResults"
            case moanResults = "MoanResults"
            case languageResults = "LanguageResults"
        }
    }
    
    /// 音频小语种检测结果
    public struct AudioResultDetailLanguageResult: TCOutputModel {
        /// 语种
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 得分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?
        
        /// 开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startTime: Float?
        
        /// 结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endTime: Float?
        
        /// 子标签码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabelCode: String?
        
        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case score = "Score"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subLabelCode = "SubLabelCode"
        }
    }
    
    /// 音频呻吟审核结果
    public struct AudioResultDetailMoanResult: TCOutputModel {
        /// 固定为Moan
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 分数
        public let score: Int64
        
        /// 开始时间
        public let startTime: Float
        
        /// 结束时间
        public let endTime: Float
        
        /// 子标签码
        public let subLabelCode: String
        
        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case score = "Score"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subLabelCode = "SubLabelCode"
        }
    }
    
    /// 音频ASR文本审核结果
    public struct AudioResultDetailTextResult: TCOutputModel {
        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 命中的关键词
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [String]?
        
        /// 命中的LibId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libId: String?
        
        /// 命中的LibName
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libName: String?
        
        /// 得分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?
        
        /// 词库类型 1 黑白库 2 自定义库
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libType: Int64?
        
        /// 审核建议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?
        
        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case keywords = "Keywords"
            case libId = "LibId"
            case libName = "LibName"
            case score = "Score"
            case libType = "LibType"
            case suggestion = "Suggestion"
        }
    }
    
    /// 声音段信息
    public struct AudioSegments: TCOutputModel {
        /// 截帧时间。
        /// 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        /// 直播流：该值为时间戳，例如：1594650717
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offsetTime: String?
        
        /// 结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: AudioResult
        
        enum CodingKeys: String, CodingKey {
            case offsetTime = "OffsetTime"
            case result = "Result"
        }
    }
    
    /// 文件桶信息
    /// 参考腾讯云存储相关说明 https://cloud.tencent.com/document/product/436/44352
    public struct BucketInfo: TCInputModel {
        /// 腾讯云对象存储，存储桶名称
        public let bucket: String
        
        /// 地域
        public let region: String
        
        /// 对象Key
        public let object: String
        
        public init (bucket: String, region: String, object: String) {
            self.bucket = bucket
            self.region = region
            self.object = object
        }
        
        enum CodingKeys: String, CodingKey {
            case bucket = "Bucket"
            case region = "Region"
            case object = "Object"
        }
    }
    
    /// 违规数据分布
    public struct EvilCount: TCOutputModel {
        /// 违规类型：
        /// Terror	24001
        /// Porn	20002
        /// Polity	20001
        /// Ad	20105
        /// Abuse	20007	
        /// Illegal	20006	
        /// Spam	25001	
        /// Moan	26001
        public let evilType: String
        
        /// 分布类型总量
        public let count: Int64
        
        enum CodingKeys: String, CodingKey {
            case evilType = "EvilType"
            case count = "Count"
        }
    }
    
    /// Cos FileOutput 
    public struct FileOutput: TCInputModel {
        /// 存储的Bucket
        public let bucket: String
        
        /// Cos Region
        public let region: String
        
        /// 对象前缀
        public let objectPrefix: String
        
        public init (bucket: String, region: String, objectPrefix: String) {
            self.bucket = bucket
            self.region = region
            self.objectPrefix = objectPrefix
        }
        
        enum CodingKeys: String, CodingKey {
            case bucket = "Bucket"
            case region = "Region"
            case objectPrefix = "ObjectPrefix"
        }
    }
    
    /// 视频过滤条件
    public struct Filters: TCInputModel {
        /// 查询字段：
        /// 策略BizType
        /// 子账号SubUin
        /// 日期区间DateRange
        public let name: String
        
        /// 查询值
        public let values: [String]
        
        public init (name: String, values: [String]) {
            self.name = name
            self.values = values
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }
    
    /// Result结果详情
    public struct ImageResult: TCOutputModel {
        /// 违规标志
        /// 0 未命中
        /// 1 命中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hitFlag: Int64?
        
        /// 命中的标签
        /// Porn 色情
        /// Sexy 性感
        /// Polity 政治
        /// Illegal 违法
        /// Abuse 谩骂
        /// Terror 暴恐
        /// Ad 广告
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 审核建议，可选值：
        /// Pass 通过，
        /// Review 建议人审，
        /// Block 确认违规
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?
        
        /// 得分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?
        
        /// 画面截帧图片结果集
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [ImageResultResult]?
        
        /// 图片URL地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?
        
        /// 附加字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?
        
        enum CodingKeys: String, CodingKey {
            case hitFlag = "HitFlag"
            case label = "Label"
            case suggestion = "Suggestion"
            case score = "Score"
            case results = "Results"
            case url = "Url"
            case extra = "Extra"
        }
    }
    
    /// 图片输出结果的子结果
    public struct ImageResultResult: TCOutputModel {
        /// 场景
        /// Porn 色情
        /// Sexy 性感
        /// Polity 政治
        /// Illegal 违法
        /// Abuse 谩骂
        /// Terror 暴恐
        /// Ad 广告
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scene: String?
        
        /// 是否命中
        /// 0 未命中
        /// 1 命中
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hitFlag: Int64?
        
        /// 审核建议，可选值：
        /// Pass 通过，
        /// Review 建议人审，
        /// Block 确认违规
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?
        
        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 子标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabel: String?
        
        /// 分数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?
        
        /// 如果命中场景为涉政，则该数据为人物姓名列表，否则null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let names: [String]?
        
        /// 图片OCR文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: String?
        
        /// 其他详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let details: [ImageResultsResultDetail]?
        
        enum CodingKeys: String, CodingKey {
            case scene = "Scene"
            case hitFlag = "HitFlag"
            case suggestion = "Suggestion"
            case label = "Label"
            case subLabel = "SubLabel"
            case score = "Score"
            case names = "Names"
            case text = "Text"
            case details = "Details"
        }
    }
    
    /// 具体场景下的图片识别结果
    public struct ImageResultsResultDetail: TCOutputModel {
        /// 任务名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// OCR识别文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: String?
        
        /// 位置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let location: ImageResultsResultDetailLocation
        
        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 库ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libId: String?
        
        /// 库名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let libName: String?
        
        /// 命中的关键词
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keywords: [String]?
        
        /// 建议
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?
        
        /// 得分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?
        
        /// 子标签码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subLabelCode: String?
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case text = "Text"
            case location = "Location"
            case label = "Label"
            case libId = "LibId"
            case libName = "LibName"
            case keywords = "Keywords"
            case suggestion = "Suggestion"
            case score = "Score"
            case subLabelCode = "SubLabelCode"
        }
    }
    
    /// 图片详情位置信息
    public struct ImageResultsResultDetailLocation: TCOutputModel {
        /// x坐标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let x: Float?
        
        /// y坐标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let y: Float?
        
        /// 宽度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let width: Int64?
        
        /// 高度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let height: Int64?
        
        /// 旋转角度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rotate: Float?
        
        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case width = "Width"
            case height = "Height"
            case rotate = "Rotate"
        }
    }
    
    /// 图片段信息
    public struct ImageSegments: TCOutputModel {
        /// 截帧时间。
        /// 点播文件：该值为相对于视频偏移时间，单位为秒，例如：0，5，10
        /// 直播流：该值为时间戳，例如：1594650717
        public let offsetTime: String
        
        /// 画面截帧结果详情
        public let result: ImageResult
        
        enum CodingKeys: String, CodingKey {
            case offsetTime = "OffsetTime"
            case result = "Result"
        }
    }
    
    /// 输入信息详情
    public struct InputInfo: TCOutputModel {
        /// 传入的类型可选：URL，COS
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?
        
        /// Url地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?
        
        /// 桶信息。当输入当时COS时，该字段不为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bucketInfo: String?
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case url = "Url"
            case bucketInfo = "BucketInfo"
        }
    }
    
    /// 媒体类型
    public struct MediaInfo: TCOutputModel {
        /// 编码格式
        public let codecs: String
        
        /// 流检测时分片时长
        /// 注意：此字段可能返回 0，表示取不到有效值。
        public let duration: Int64
        
        /// 宽，单位为像素
        public let width: Int64
        
        /// 高，单位为像素
        public let height: Int64
        
        enum CodingKeys: String, CodingKey {
            case codecs = "Codecs"
            case duration = "Duration"
            case width = "Width"
            case height = "Height"
        }
    }
    
    /// 媒体审核配置
    public struct MediaModerationConfig: TCInputModel {
        /// 是否使用OCR，默认为true
        public let useOCR: Bool
        
        /// 是否使用音频，默认为true。视频场景下，默认为 false
        public let useAudio: Bool
        
        /// 图片取帧频率, 单位（秒/帧），默认 5， 可选 1 ～ 300
        public let imageFrequency: Int64?
        
        /// 音频片段长度。单位为：秒
        public let audioFrequency: Int64?
        
        /// 临时文件存储位置
        public let segmentOutput: FileOutput
        
        /// 回调地址
        public let callbackUrl: String?
        
        public init (useOCR: Bool, useAudio: Bool, imageFrequency: Int64?, audioFrequency: Int64?, segmentOutput: FileOutput, callbackUrl: String?) {
            self.useOCR = useOCR
            self.useAudio = useAudio
            self.imageFrequency = imageFrequency
            self.audioFrequency = audioFrequency
            self.segmentOutput = segmentOutput
            self.callbackUrl = callbackUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case useOCR = "UseOCR"
            case useAudio = "UseAudio"
            case imageFrequency = "ImageFrequency"
            case audioFrequency = "AudioFrequency"
            case segmentOutput = "SegmentOutput"
            case callbackUrl = "CallbackUrl"
        }
    }
    
    /// 识别结果统计
    public struct Overview: TCOutputModel {
        /// 总调用量
        public let totalCount: Int64
        
        /// 总调用时长
        public let totalHour: Int64
        
        /// 通过量
        public let passCount: Int64
        
        /// 通过时长
        public let passHour: Int64
        
        /// 违规量
        public let evilCount: Int64
        
        /// 违规时长
        public let evilHour: Int64
        
        /// 疑似违规量
        public let suspectCount: Int64
        
        /// 疑似违规时长
        public let suspectHour: Int64
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case totalHour = "TotalHour"
            case passCount = "PassCount"
            case passHour = "PassHour"
            case evilCount = "EvilCount"
            case evilHour = "EvilHour"
            case suspectCount = "SuspectCount"
            case suspectHour = "SuspectHour"
        }
    }
    
    ///  数据存储信息
    public struct StorageInfo: TCInputModel {
        /// 类型 可选：
        /// URL 资源链接类型
        /// COS 腾讯云对象存储类型
        public let type: String?
        
        /// 资源链接
        public let url: String?
        
        /// 腾讯云存储桶信息
        public let bucketInfo: BucketInfo
        
        public init (type: String?, url: String?, bucketInfo: BucketInfo) {
            self.type = type
            self.url = url
            self.bucketInfo = bucketInfo
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case url = "Url"
            case bucketInfo = "BucketInfo"
        }
    }
    
    /// 音视频任务结构
    public struct TaskInput: TCInputModel {
        /// 数据ID
        public let dataId: String?
        
        /// 任务名
        public let name: String?
        
        /// 任务输入
        public let input: StorageInfo
        
        public init (dataId: String?, name: String?, input: StorageInfo) {
            self.dataId = dataId
            self.name = name
            self.input = input
        }
        
        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case name = "Name"
            case input = "Input"
        }
    }
    
    /// 任务输出标签
    public struct TaskLabel: TCOutputModel {
        /// 命中的标签
        /// Porn 色情
        /// Sexy 性感
        /// Polity 政治
        /// Illegal 违法
        /// Abuse 谩骂
        /// Terror 暴恐
        /// Ad 广告
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?
        
        /// 审核建议，可选值：
        /// Pass 通过，
        /// Review 建议人审，
        /// Block 确认违规
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?
        
        /// 得分，分数是 0 ～ 100
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Int64?
        
        enum CodingKeys: String, CodingKey {
            case label = "Label"
            case suggestion = "Suggestion"
            case score = "Score"
        }
    }
    
    /// 创建任务时的返回结果
    public struct TaskResult: TCOutputModel {
        /// 请求时传入的DataId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?
        
        /// TaskId，任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?
        
        /// 错误码。如果code为OK，则表示创建成功，其他则参考公共错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: String?
        
        /// 如果错误，该字段表示错误详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?
        
        enum CodingKeys: String, CodingKey {
            case dataId = "DataId"
            case taskId = "TaskId"
            case code = "Code"
            case message = "Message"
        }
    }
    
    /// 识别量统计
    public struct TrendCount: TCOutputModel {
        /// 总调用量
        public let totalCount: Int64
        
        /// 总调用时长
        public let totalHour: Int64
        
        /// 通过量
        public let passCount: Int64
        
        /// 通过时长
        public let passHour: Int64
        
        /// 违规量
        public let evilCount: Int64
        
        /// 违规时长
        public let evilHour: Int64
        
        /// 疑似违规量
        public let suspectCount: Int64
        
        /// 疑似违规时长
        public let suspectHour: Int64
        
        /// 日期
        public let date: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case totalHour = "TotalHour"
            case passCount = "PassCount"
            case passHour = "PassHour"
            case evilCount = "EvilCount"
            case evilHour = "EvilHour"
            case suspectCount = "SuspectCount"
            case suspectHour = "SuspectHour"
            case date = "Date"
        }
    }
}
