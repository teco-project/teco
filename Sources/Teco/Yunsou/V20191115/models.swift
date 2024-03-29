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

extension Yunsou {
    /// 数据操作结果
    public struct DataManipulationResult: TCOutputModel {
        /// 应用ID
        public let appId: UInt64

        /// 序号
        public let seq: Int64

        /// 结果
        public let totalResult: String

        /// 操作结果明细
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [DataManipulationResultItem]?

        /// 异常信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorResult: String?

        enum CodingKeys: String, CodingKey {
            case appId = "AppId"
            case seq = "Seq"
            case totalResult = "TotalResult"
            case result = "Result"
            case errorResult = "ErrorResult"
        }
    }

    /// 数据操作结果明细
    public struct DataManipulationResultItem: TCOutputModel {
        /// 结果
        public let result: String

        /// 文档ID
        public let docId: String

        /// 错误码
        public let errno: Int64

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case docId = "DocId"
            case errno = "Errno"
        }
    }

    /// 搜索结果
    public struct SearchResult: TCOutputModel {
        /// 检索耗时，单位ms
        public let costTime: UInt64

        /// 搜索最多可以展示的结果数，多页
        public let displayNum: UInt64

        /// 和检索请求中的echo相对应
        public let echo: String

        /// 检索结果的估算篇数，由索引平台估算
        public let eResultNum: UInt64

        /// 检索返回的当前页码结果数
        public let resultNum: UInt64

        /// 检索结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultList: [SearchResultItem]?

        /// 检索的分词结果，array类型，可包含多个
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let segList: [SearchResultSeg]?

        enum CodingKeys: String, CodingKey {
            case costTime = "CostTime"
            case displayNum = "DisplayNum"
            case echo = "Echo"
            case eResultNum = "EResultNum"
            case resultNum = "ResultNum"
            case resultList = "ResultList"
            case segList = "SegList"
        }
    }

    /// 搜索结果元素
    public struct SearchResultItem: TCOutputModel {
        /// 动态摘要信息
        public let docAbs: String

        /// 检索文档id
        public let docId: String

        /// 原始文档信息
        public let docMeta: String

        /// 精计算得分
        public let l2Score: Float

        /// 文档级回传信息
        public let searchDebuginfo: String

        enum CodingKeys: String, CodingKey {
            case docAbs = "DocAbs"
            case docId = "DocId"
            case docMeta = "DocMeta"
            case l2Score = "L2Score"
            case searchDebuginfo = "SearchDebuginfo"
        }
    }

    /// SearchResultSeg
    public struct SearchResultSeg: TCOutputModel {
        /// 分词
        public let segStr: String

        enum CodingKeys: String, CodingKey {
            case segStr = "SegStr"
        }
    }
}
