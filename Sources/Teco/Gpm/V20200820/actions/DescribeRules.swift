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

extension Gpm {
    /// DescribeRules请求参数结构体
    public struct DescribeRulesRequest: TCRequestModel {
        /// 当前页号，不传则返回第一页
        public let pageNumber: Int64?

        /// 单页大小，最大 30，不填默认30
        public let pageSize: Int64?

        /// 查询类型（可选）：match表示通过matchCode或者matchName来搜索，rule表示通过ruleCode或者ruleName来搜索，其余类型不做过滤处理。
        public let searchType: String?

        /// 查询关键词，针对SearchType进行具体过滤的内容。
        public let keyword: String?

        /// 标签列表，用于过滤。
        public let tags: [Tag]?

        public init(pageNumber: Int64? = nil, pageSize: Int64? = nil, searchType: String? = nil, keyword: String? = nil, tags: [Tag]? = nil) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.searchType = searchType
            self.keyword = keyword
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case searchType = "SearchType"
            case keyword = "Keyword"
            case tags = "Tags"
        }
    }

    /// DescribeRules返回参数结构体
    public struct DescribeRulesResponse: TCResponseModel {
        /// 规则信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ruleInfoList: [RuleBriefInfo]?

        /// 总记录数
        public let totalCount: Int64

        /// 当前页号
        public let pageNumber: Int64

        /// 单页大小
        public let pageSize: Int64

        /// 查询类型（可选）matchName表示匹配名称，matchCode表示匹配code，ruleName表示规则名称，tag表示标签Key/Value
        public let searchType: String

        /// 查询关键词（可选）
        public let keyword: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleInfoList = "RuleInfoList"
            case totalCount = "TotalCount"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case searchType = "SearchType"
            case keyword = "Keyword"
            case requestId = "RequestId"
        }
    }

    /// 分页查询规则集列表
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 分页查询规则集列表
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRulesResponse > {
        self.client.execute(action: "DescribeRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询规则集列表
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 分页查询规则集列表
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.client.execute(action: "DescribeRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询规则集列表
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 分页查询规则集列表
    @inlinable
    public func describeRules(pageNumber: Int64? = nil, pageSize: Int64? = nil, searchType: String? = nil, keyword: String? = nil, tags: [Tag]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRulesResponse > {
        self.describeRules(DescribeRulesRequest(pageNumber: pageNumber, pageSize: pageSize, searchType: searchType, keyword: keyword, tags: tags), logger: logger, on: eventLoop)
    }

    /// 分页查询规则集列表
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 分页查询规则集列表
    @inlinable
    public func describeRules(pageNumber: Int64? = nil, pageSize: Int64? = nil, searchType: String? = nil, keyword: String? = nil, tags: [Tag]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.describeRules(DescribeRulesRequest(pageNumber: pageNumber, pageSize: pageSize, searchType: searchType, keyword: keyword, tags: tags), logger: logger, on: eventLoop)
    }
}
