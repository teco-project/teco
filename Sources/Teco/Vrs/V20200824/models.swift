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

import TecoCore

extension Vrs {
    /// 取消任务响应
    public struct CancelVRSTaskRsp: TCOutputModel {
    }

    /// 声音复刻任务创建响应
    public struct CreateVRSTaskRespData: TCOutputModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// 任务结果
    public struct DescribeVRSTaskStatusRespData: TCOutputModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusStr: String?

        /// 音色id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voiceType: Int64?

        /// 失败原因说明。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case statusStr = "StatusStr"
            case voiceType = "VoiceType"
            case errorMsg = "ErrorMsg"
        }
    }

    /// 环境检测和音频检测响应
    public struct DetectionEnvAndSoundQualityRespData: TCOutputModel {
        /// 音频ID （用于创建任务接口AudioIds）,环境检测该值为空，仅在音质检测情况下返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioId: String?

        /// 检测code
        ///
        /// 0 表示当前语音通过
        /// -1 表示检测失败，需要重试
        /// -2 表示语音检测不通过，提示用户再重新录制一下（通常漏读，错读，或多读）
        /// -3 表示语音中噪声较大，不通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detectionCode: Int64?

        /// 检测提示信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detectionMsg: String?

        /// 检测提示信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detectionTip: [Words]?

        enum CodingKeys: String, CodingKey {
            case audioId = "AudioId"
            case detectionCode = "DetectionCode"
            case detectionMsg = "DetectionMsg"
            case detectionTip = "DetectionTip"
        }
    }

    /// 离线声音复刻模型下载响应
    public struct DownloadVRSModelRsp: TCOutputModel {
        /// 模型cos地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let model: String?

        /// 音色名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voiceName: String?

        /// 音色性别:
        /// 1-male
        /// 2-female
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voiceGender: Int64?

        /// 语言类型：
        /// 1-中文
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voiceLanguage: Int64?

        /// 任务ID
        public let taskId: String

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case voiceName = "VoiceName"
            case voiceGender = "VoiceGender"
            case voiceLanguage = "VoiceLanguage"
            case taskId = "TaskId"
        }
    }

    /// 训练文本
    public struct TrainingText: TCOutputModel {
        /// 文本ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let textId: String?

        /// 文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: String?

        enum CodingKeys: String, CodingKey {
            case textId = "TextId"
            case text = "Text"
        }
    }

    /// 训练文本列表
    public struct TrainingTexts: TCOutputModel {
        /// 训练文本列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trainingTextList: [TrainingText]?

        enum CodingKeys: String, CodingKey {
            case trainingTextList = "TrainingTextList"
        }
    }

    /// 音频检测提示信息：
    /// 1.检测字是否存在多读、 少读、 错读等
    /// 2.检测准确度和流畅度
    public struct Words: TCOutputModel {
        /// 准确度 (<75则认为不合格)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pronAccuracy: Float?

        /// 流畅度 (<0.95则认为不合格)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pronFluency: Float?

        /// tag:
        /// 0: match  匹配
        /// 1: insert   多读
        /// 2: delete  少读
        /// 3: replace 错读
        /// 4: oov  待评估字不在发音评估的词库
        /// 5: unknown 未知错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tag: Int64?

        /// 字
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let word: String?

        enum CodingKeys: String, CodingKey {
            case pronAccuracy = "PronAccuracy"
            case pronFluency = "PronFluency"
            case tag = "Tag"
            case word = "Word"
        }
    }
}
