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

extension Nlp {
    /// 基础粒度分词和词性标注的结果
    public struct BasicParticiple: TCOutputModel {
        /// 基础词。
        public let word: String?

        /// 基础词在NormalText中的起始位置。
        public let beginOffset: Int64?

        /// 基础词的长度。
        public let length: Int64?

        /// 词性。
        public let pos: String?

        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case beginOffset = "BeginOffset"
            case length = "Length"
            case pos = "Pos"
        }
    }

    /// 分类详细信息
    public struct Category: TCOutputModel {
        /// 分类id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: Int64?

        /// 分类英文名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 分类中文名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 分类置信度。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let score: Float?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case label = "Label"
            case name = "Name"
            case score = "Score"
        }
    }

    /// 复合粒度分词和词性标注的结果。
    public struct CompoundParticiple: TCOutputModel {
        /// 基础词。
        public let word: String?

        /// 基础词在NormalText中的起始位置。
        public let beginOffset: Int64?

        /// 基础词的长度。
        public let length: Int64?

        /// 词性。
        public let pos: String?

        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case beginOffset = "BeginOffset"
            case length = "Length"
            case pos = "Pos"
        }
    }

    /// 纠错结果列表
    public struct CorrectionItem: TCOutputModel {
        /// 纠错句子的序号。
        public let order: Int64?

        /// 错误的起始位置，从0开始。
        public let beginOffset: Int64?

        /// 错误内容长度。
        public let len: Int64?

        /// 错误内容。
        public let word: String?

        /// 纠错结果，当为删除类错误时，结果为null。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let correctWord: [String]?

        /// 纠错类型。0：替换；1：插入；2：删除。
        public let correctionType: Int64?

        /// 纠错信息置信度。0：error；1：warning；error的置信度更高。（仅供参考）
        public let confidence: Int64?

        /// 纠错信息中文描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let descriptionZh: String?

        /// 纠错信息英文描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let descriptionEn: String?

        enum CodingKeys: String, CodingKey {
            case order = "Order"
            case beginOffset = "BeginOffset"
            case len = "Len"
            case word = "Word"
            case correctWord = "CorrectWord"
            case correctionType = "CorrectionType"
            case confidence = "Confidence"
            case descriptionZh = "DescriptionZh"
            case descriptionEn = "DescriptionEn"
        }
    }

    /// 文本润色结果
    public struct Embellish: TCOutputModel {
        /// 润色后的文本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: String?

        /// 润色类型。类型如下：
        /// expansion：扩写
        /// rewriting：改写
        /// translation_m2a：从现代文改写为古文
        /// translation_a2m：从古文改写为现代文
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let embellishType: String?

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case embellishType = "EmbellishType"
        }
    }

    /// 实体识别结果。
    public struct Entity: TCOutputModel {
        /// 基础词。
        public let word: String?

        /// 基础词在NormalText中的起始位置。
        public let beginOffset: Int64?

        /// 基础词的长度。
        public let length: Int64?

        /// 实体类型的标准名字。
        public let type: String?

        /// 类型名字的自然语言表达。（中文或英文）
        public let name: String?

        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case beginOffset = "BeginOffset"
            case length = "Length"
            case type = "Type"
            case name = "Name"
        }
    }

    /// 通过关键词生成的句子信息
    public struct KeywordSentence: TCOutputModel {
        /// 通过关键词生成的句子。
        public let targetText: String?

        enum CodingKeys: String, CodingKey {
            case targetText = "TargetText"
        }
    }

    /// 待分析的句子对
    public struct SentencePair: TCInputModel {
        /// 需要与目标句子计算相似度的源句子。（仅支持UTF-8格式，不超过500字符）
        public let sourceText: String?

        /// 目标句子。（仅支持UTF-8格式，不超过500字符）
        public let targetText: String?

        public init(sourceText: String, targetText: String) {
            self.sourceText = sourceText
            self.targetText = targetText
        }

        enum CodingKeys: String, CodingKey {
            case sourceText = "SourceText"
            case targetText = "TargetText"
        }
    }

    /// TextGenerationChoices
    public struct TextGenerationChoices: TCOutputModel {
        /// 内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: TextGenerationMessage?

        enum CodingKeys: String, CodingKey {
            case message = "Message"
        }
    }

    /// TextGenerationMessage
    public struct TextGenerationMessage: TCInputModel, TCOutputModel {
        /// 角色支持 system, user, assistant。默认为user。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let role: String?

        /// 消息的内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: String?

        public init(role: String? = nil, content: String? = nil) {
            self.role = role
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case role = "Role"
            case content = "Content"
        }
    }

    /// TextGenerationUsage
    public struct TextGenerationUsage: TCOutputModel {
        /// 输入tokens数量
        public let promptTokens: Int64?

        /// 输出tokens数量
        public let completionTokens: Int64?

        /// 总token数量
        public let totalTokens: Int64?

        enum CodingKeys: String, CodingKey {
            case promptTokens = "PromptTokens"
            case completionTokens = "CompletionTokens"
            case totalTokens = "TotalTokens"
        }
    }

    /// 文本续写结果
    public struct Writing: TCOutputModel {
        /// 续写的文本。
        public let targetText: String?

        /// 续写的前缀。
        public let prefixText: String?

        enum CodingKeys: String, CodingKey {
            case targetText = "TargetText"
            case prefixText = "PrefixText"
        }
    }
}
