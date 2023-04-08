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

import TecoPaginationHelpers

extension Gpm {
    /// DescribeMatches请求参数结构体
    public struct DescribeMatchesRequest: TCPaginatedRequest {
        /// 当前页号，不传则获取所有有权限的资源。
        public let pageNumber: Int64?

        /// 单页大小，不传则获取所有有权限的资源。
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

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMatchesResponse) -> DescribeMatchesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMatchesRequest(pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, searchType: self.searchType, keyword: self.keyword, tags: self.tags)
        }
    }

    /// DescribeMatches返回参数结构体
    public struct DescribeMatchesResponse: TCPaginatedResponse {
        /// 匹配信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let matchInfoList: [MatchInfo]?

        /// 总记录数
        public let totalCount: Int64

        /// 当前页号，不填默认返回第一页
        public let pageNumber: Int64

        /// 单页大小，不填默认取 30，最大值不能超过 30
        public let pageSize: Int64

        /// 查询类型（可选）：matchName表示匹配名称，matchCode表示匹配code，ruleName表示规则名称，tag表示标签Key/Value
        public let searchType: String

        /// 查询关键词（可选）
        public let keyword: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case matchInfoList = "MatchInfoList"
            case totalCount = "TotalCount"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case searchType = "SearchType"
            case keyword = "Keyword"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MatchInfo] {
            self.matchInfoList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 分页查询匹配列表
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatches(_ input: DescribeMatchesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMatchesResponse> {
        fatalError("DescribeMatches is no longer available.")
    }

    /// 分页查询匹配列表
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatches(_ input: DescribeMatchesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMatchesResponse {
        fatalError("DescribeMatches is no longer available.")
    }

    /// 分页查询匹配列表
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatches(pageNumber: Int64? = nil, pageSize: Int64? = nil, searchType: String? = nil, keyword: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMatchesResponse> {
        fatalError("DescribeMatches is no longer available.")
    }

    /// 分页查询匹配列表
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatches(pageNumber: Int64? = nil, pageSize: Int64? = nil, searchType: String? = nil, keyword: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMatchesResponse {
        fatalError("DescribeMatches is no longer available.")
    }

    /// 分页查询匹配列表
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchesPaginated(_ input: DescribeMatchesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MatchInfo])> {
        fatalError("DescribeMatches is no longer available.")
    }

    /// 分页查询匹配列表
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func describeMatchesPaginated(_ input: DescribeMatchesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMatchesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeMatches is no longer available.")
    }

    /// 分页查询匹配列表
    ///
    /// - Returns: `AsyncSequence`s of `MatchInfo` and `DescribeMatchesResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchesPaginator(_ input: DescribeMatchesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMatchesRequest> {
        fatalError("DescribeMatches is no longer available.")
    }
}
