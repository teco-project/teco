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

extension Ecc {
    /// 作文批改每个维度名字与得分
    public struct Aspect: TCOutputModel {
        /// 维度名字
        public let name: String

        /// 维度得分
        public let score: Float

        /// 维度分数占比
        public let percentage: Float

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case score = "Score"
            case percentage = "Percentage"
        }
    }

    /// 图像识别批改接口返回的作文文本信息或批改信息
    public struct CompositionContext: TCOutputModel {
        /// 作文内容
        public let content: String

        /// 批改结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let correctData: CorrectData?

        /// 任务 id，用于查询接口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 图像识别唯一标识，一次识别一个 SessionId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessionId: String?

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case correctData = "CorrectData"
            case taskId = "TaskId"
            case sessionId = "SessionId"
        }
    }

    /// 图像识别批改接口返回的作文文本信息或批改信息
    public struct CompostionContext: TCOutputModel {
        /// 作文内容
        public let content: String

        /// 批改结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let correctData: CorrectData?

        /// 任务 id，用于查询接口
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 图像识别唯一标识，一次识别一个 SessionId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessionId: String?

        enum CodingKeys: String, CodingKey {
            case content = "Content"
            case correctData = "CorrectData"
            case taskId = "TaskId"
            case sessionId = "SessionId"
        }
    }

    /// 批改的结果
    public struct CorrectData: TCOutputModel {
        /// 总得分
        public let score: Float

        /// 各项得分详情
        public let scoreCat: ScoreCategory

        /// 综合评价
        public let comment: String

        /// 句子点评
        public let sentenceComments: [SentenceCom]

        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case scoreCat = "ScoreCat"
            case comment = "Comment"
            case sentenceComments = "SentenceComments"
        }
    }

    /// 维度单词坐标
    public struct ErrorCoordinate: TCOutputModel {
        /// 维度单词坐标
        public let coordinate: [Int64]

        enum CodingKeys: String, CodingKey {
            case coordinate = "Coordinate"
        }
    }

    /// 四个维度的得分
    public struct ScoreCategory: TCOutputModel {
        /// 词汇维度
        public let words: Aspect

        /// 句子维度
        public let sentences: Aspect

        /// 篇章结构维度
        public let structure: Aspect

        /// 内容维度
        public let content: Aspect

        /// 维度得分
        public let score: Float

        /// 维度分数占比
        public let percentage: Float

        enum CodingKeys: String, CodingKey {
            case words = "Words"
            case sentences = "Sentences"
            case structure = "Structure"
            case content = "Content"
            case score = "Score"
            case percentage = "Percentage"
        }
    }

    /// 批改结果按句点评的详细信息
    public struct SentenceCom: TCOutputModel {
        /// 句子错误纠正信息
        public let suggestions: [SentenceSuggest]

        /// 句子信息
        public let sentence: SentenceItem

        enum CodingKeys: String, CodingKey {
            case suggestions = "Suggestions"
            case sentence = "Sentence"
        }
    }

    /// 句子的相关信息
    public struct SentenceItem: TCOutputModel {
        /// 英语句子
        public let sentence: String

        /// 段落id
        public let paraID: Int64

        /// 句子id
        public let sentenceID: Int64

        enum CodingKeys: String, CodingKey {
            case sentence = "Sentence"
            case paraID = "ParaID"
            case sentenceID = "SentenceID"
        }
    }

    /// 句子批阅建议
    public struct SentenceSuggest: TCOutputModel {
        /// 类型
        public let type: String

        /// 错误类型
        public let errorType: String

        /// 原始单词
        public let origin: String

        /// 替换成 的单词
        public let replace: String

        /// 提示信息
        public let message: String

        /// 维度单词位置，在句子的第几个到第几个单词之间
        public let errorPosition: [Int64]

        /// 维度单词坐标，错误单词在图片中的坐标，只有传图片时正常返回，传文字时返回[ ]
        public let errorCoordinates: [ErrorCoordinate]

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case errorType = "ErrorType"
            case origin = "Origin"
            case replace = "Replace"
            case message = "Message"
            case errorPosition = "ErrorPosition"
            case errorCoordinates = "ErrorCoordinates"
        }
    }
}
