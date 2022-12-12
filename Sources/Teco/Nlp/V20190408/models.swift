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

extension Nlp {
    /// 文本纠错结果
    public struct CCIToken: TCInputModel {
        /// 错别字内容
        public let word: String?
        
        /// 错别字的起始位置，从0开始
        public let beginOffset: UInt64?
        
        /// 错别字纠错结果
        public let correctWord: String?
        
        public init (word: String? = nil, beginOffset: UInt64? = nil, correctWord: String? = nil) {
            self.word = word
            self.beginOffset = beginOffset
            self.correctWord = correctWord
        }
        
        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case beginOffset = "BeginOffset"
            case correctWord = "CorrectWord"
        }
    }
    
    /// 文本分类结果
    public struct ClassificationResult: TCInputModel {
        /// 一级分类名称
        public let firstClassName: String?
        
        /// 二级分类名称
        public let secondClassName: String?
        
        /// 一级分类概率
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstClassProbability: Float?
        
        /// 二级分类概率
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secondClassProbability: Float?
        
        /// 三级分类名称，仅有当新闻领域五分类可能出现，详情见文本分类文档
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let thirdClassName: String?
        
        /// 三级分类概率，仅有当新闻领域五分类可能出现，详情见文本分类文档
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let thirdClassProbability: Float?
        
        /// 四级分类名称，仅有当新闻领域五分类可能出现，详情见文本分类文档
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fourthClassName: String?
        
        /// 四级分类概率，仅有当新闻领域五分类可能出现，详情见文本分类文档
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fourthClassProbability: Float?
        
        /// 五级分类名称，仅有当新闻领域五分类可能出现，详情见文本分类文档
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fifthClassName: String?
        
        /// 五级分类概率，仅有当新闻领域五分类可能出现，详情见文本分类文档
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fifthClassProbability: Float?
        
        public init (firstClassName: String? = nil, secondClassName: String? = nil, firstClassProbability: Float? = nil, secondClassProbability: Float? = nil, thirdClassName: String? = nil, thirdClassProbability: Float? = nil, fourthClassName: String? = nil, fourthClassProbability: Float? = nil, fifthClassName: String? = nil, fifthClassProbability: Float? = nil) {
            self.firstClassName = firstClassName
            self.secondClassName = secondClassName
            self.firstClassProbability = firstClassProbability
            self.secondClassProbability = secondClassProbability
            self.thirdClassName = thirdClassName
            self.thirdClassProbability = thirdClassProbability
            self.fourthClassName = fourthClassName
            self.fourthClassProbability = fourthClassProbability
            self.fifthClassName = fifthClassName
            self.fifthClassProbability = fifthClassProbability
        }
        
        enum CodingKeys: String, CodingKey {
            case firstClassName = "FirstClassName"
            case secondClassName = "SecondClassName"
            case firstClassProbability = "FirstClassProbability"
            case secondClassProbability = "SecondClassProbability"
            case thirdClassName = "ThirdClassName"
            case thirdClassProbability = "ThirdClassProbability"
            case fourthClassName = "FourthClassName"
            case fourthClassProbability = "FourthClassProbability"
            case fifthClassName = "FifthClassName"
            case fifthClassProbability = "FifthClassProbability"
        }
    }
    
    /// 自定义词库信息
    public struct DictInfo: TCInputModel {
        /// 自定义词库名称。
        public let name: String
        
        /// 自定义词库ID。
        public let id: String
        
        /// 自定义词库描述信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 自定义词库修改时间，形式为:yyyy-mm-dd hh:mm:ss。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?
        
        /// 自定义词库创建时间，形式为:yyyy-mm-dd hh:mm:ss。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?
        
        public init (name: String, id: String, description: String? = nil, updateTime: String? = nil, createTime: String? = nil) {
            self.name = name
            self.id = id
            self.description = description
            self.updateTime = updateTime
            self.createTime = createTime
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case id = "Id"
            case description = "Description"
            case updateTime = "UpdateTime"
            case createTime = "CreateTime"
        }
    }
    
    /// 句法依存分析结果，包括基础词，基础词的序号，当前词父节点的序号，句法依存关系的类型
    public struct DpToken: TCInputModel {
        /// 句法依存关系的类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let relation: String?
        
        /// 当前词父节点的序号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let headId: UInt64?
        
        /// 基础词
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let word: String?
        
        /// 基础词的序号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: UInt64?
        
        public init (relation: String? = nil, headId: UInt64? = nil, word: String? = nil, id: UInt64? = nil) {
            self.relation = relation
            self.headId = headId
            self.word = word
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case relation = "Relation"
            case headId = "HeadId"
            case word = "Word"
            case id = "Id"
        }
    }
    
    /// 关键词提取结果
    public struct Keyword: TCInputModel {
        /// 权重
        public let score: Float?
        
        /// 关键词
        public let word: String?
        
        public init (score: Float? = nil, word: String? = nil) {
            self.score = score
            self.word = word
        }
        
        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case word = "Word"
        }
    }
    
    /// 命名实体识别结果  
    public struct NerToken: TCOutputModel {
        /// 基础词
        public let word: String
        
        /// 长度
        public let length: Int64
        
        /// 起始位置
        public let beginOffset: Int64
        
        /// 命名实体类型
        public let type: String
        
        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case length = "Length"
            case beginOffset = "BeginOffset"
            case type = "Type"
        }
    }
    
    /// 分词&词性标注结果
    public struct PosToken: TCOutputModel {
        /// 基础词
        public let word: String
        
        /// 长度
        public let length: Int64
        
        /// 起始位置
        public let beginOffset: Int64
        
        /// 词性
        public let pos: String
        
        enum CodingKeys: String, CodingKey {
            case word = "Word"
            case length = "Length"
            case beginOffset = "BeginOffset"
            case pos = "Pos"
        }
    }
    
    /// 词条搜索的结果，主要描述该词条是否存在以及相关的词性。
    public struct SearchResult: TCInputModel {
        /// 被搜索的词条文本。
        public let text: String
        
        /// 0表示词条不存在，1表示存在。
        public let isExist: UInt64
        
        /// 匹配到的词条文本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let matchText: String?
        
        /// 词条的词性。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pos: String?
        
        public init (text: String, isExist: UInt64, matchText: String, pos: String? = nil) {
            self.text = text
            self.isExist = isExist
            self.matchText = matchText
            self.pos = pos
        }
        
        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case isExist = "IsExist"
            case matchText = "MatchText"
            case pos = "Pos"
        }
    }
    
    /// 文本相似度
    public struct Similarity: TCInputModel {
        /// 目标文本句子
        public let text: String
        
        /// 相似度分数
        public let score: Float
        
        public init (text: String, score: Float) {
            self.text = text
            self.score = score
        }
        
        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case score = "Score"
        }
    }
    
    /// 词条信息。
    public struct WordItem: TCInputModel {
        /// 词条文本内容。
        public let text: String
        
        /// 词条创建时间。
        public let createTime: String?
        
        /// 词条的词性。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pos: String?
        
        public init (text: String, createTime: String? = nil, pos: String? = nil) {
            self.text = text
            self.createTime = createTime
            self.pos = pos
        }
        
        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case createTime = "CreateTime"
            case pos = "Pos"
        }
    }
}
