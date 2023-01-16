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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Asr {
    /// 音频流异步识别任务信息
    public struct AsyncRecognitionTaskInfo: TCOutputModel {
        /// 任务ID
        public let taskId: Int64

        /// 音频流Url
        public let url: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case url = "Url"
        }
    }

    /// 音频流异步识别任务列表
    public struct AsyncRecognitionTasks: TCOutputModel {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tasks: [AsyncRecognitionTaskInfo]?

        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
        }
    }

    /// 热词的词和权重
    public struct HotWord: TCInputModel {
        /// 热词
        public let word: String

        /// 权重
        public let weight: Int64

        public init(word: String, weight: Int64) {
            self.word = word
            self.weight = weight
        }

        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case weight = "Weight"
        }
    }

    /// 自学习模型信息
    public struct Model: TCOutputModel {
        /// 模型名称
        public let modelName: String

        /// 模型文件名称
        public let dictName: String

        /// 模型Id
        public let modelId: String

        /// 模型类型，“8k”或者”16k“
        public let modelType: String

        /// 服务类型
        public let serviceType: String

        /// 模型状态，-1下线状态，1上线状态, 0训练中, -2 训练失败
        public let modelState: Int64

        /// 最后更新时间
        public let atUpdated: String

        /// 标签信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagInfos: [String]?

        enum CodingKeys: String, CodingKey {
            case modelName = "ModelName"
            case dictName = "DictName"
            case modelId = "ModelId"
            case modelType = "ModelType"
            case serviceType = "ServiceType"
            case modelState = "ModelState"
            case atUpdated = "AtUpdated"
            case tagInfos = "TagInfos"
        }
    }

    /// 单句的详细识别结果，包含单个词的时间偏移，一般用于生成字幕的场景。
    public struct SentenceDetail: TCOutputModel {
        /// 单句最终识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let finalSentence: String?

        /// 单句中间识别结果，使用空格拆分为多个词
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sliceSentence: String?

        /// 单句开始时间（毫秒）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let startMs: Int64?

        /// 单句结束时间（毫秒）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endMs: Int64?

        /// 单句中词个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wordsNum: Int64?

        /// 单句中词详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let words: [SentenceWords]?

        /// 单句语速，单位：字数/秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let speechSpeed: Float?

        /// 声道或说话人 Id（请求中如果设置了 speaker_diarization或者ChannelNum为双声道，可区分说话人或声道）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let speakerId: Int64?

        /// 情绪能量值，取值为音量分贝值/10。取值范围：[1,10]。值越高情绪越强烈。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let emotionalEnergy: Float?

        /// 本句与上一句之间的静音时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let silenceTime: Int64?

        enum CodingKeys: String, CodingKey {
            case finalSentence = "FinalSentence"
            case sliceSentence = "SliceSentence"
            case startMs = "StartMs"
            case endMs = "EndMs"
            case wordsNum = "WordsNum"
            case words = "Words"
            case speechSpeed = "SpeechSpeed"
            case speakerId = "SpeakerId"
            case emotionalEnergy = "EmotionalEnergy"
            case silenceTime = "SilenceTime"
        }
    }

    /// 一句话识别返回的词时间戳
    public struct SentenceWord: TCOutputModel {
        /// 词结果
        public let word: String

        /// 词在音频中的开始时间
        public let startTime: Int64

        /// 词在音频中的结束时间
        public let endTime: Int64

        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// 识别结果中词文本，以及对应时间偏移
    public struct SentenceWords: TCOutputModel {
        /// 词文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let word: String?

        /// 在句子中的开始时间偏移量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offsetStartMs: Int64?

        /// 在句子中的结束时间偏移量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offsetEndMs: Int64?

        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case offsetStartMs = "OffsetStartMs"
            case offsetEndMs = "OffsetEndMs"
        }
    }

    /// 录音文件识别、实时语音异步识别请求的返回数据
    public struct Task: TCOutputModel {
        /// 任务ID，可通过此ID在轮询接口获取识别状态与结果。注意：TaskId数据类型为uint64
        public let taskId: UInt64

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// 获取录音识别结果的返回参数
    public struct TaskStatus: TCOutputModel {
        /// 任务标识。
        public let taskId: UInt64

        /// 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        public let status: Int64

        /// 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        public let statusStr: String

        /// 识别结果。
        public let result: String

        /// 失败原因说明。
        public let errorMsg: String

        /// 识别结果详情，包含每个句子中的词时间偏移，一般用于生成字幕的场景。(录音识别请求中ResTextFormat=1时该字段不为空)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultDetail: [SentenceDetail]?

        /// 音频时长(秒)。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioDuration: Float?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case statusStr = "StatusStr"
            case result = "Result"
            case errorMsg = "ErrorMsg"
            case resultDetail = "ResultDetail"
            case audioDuration = "AudioDuration"
        }
    }

    /// 词表内容
    public struct Vocab: TCOutputModel {
        /// 热词表名称
        public let name: String

        /// 热词表描述
        public let description: String

        /// 热词表ID
        public let vocabId: String

        /// 词权重列表
        public let wordWeights: [HotWord]

        /// 词表创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createTime: Date

        /// 词表更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updateTime: Date

        /// 热词表状态，1为默认状态即在识别时默认加载该热词表进行识别，0为初始状态
        public let state: Int64

        /// 标签数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagInfos: [String]?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case vocabId = "VocabId"
            case wordWeights = "WordWeights"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case state = "State"
            case tagInfos = "TagInfos"
        }
    }
}
