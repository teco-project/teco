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
    /// DescribeMatchCodes请求参数结构体
    public struct DescribeMatchCodesRequest: TCPaginatedRequest {
        /// 偏移量，页码
        public let offset: Int64

        /// 每页数量
        public let limit: Int64

        /// 搜索的字符串
        public let matchCode: String?

        public init(offset: Int64, limit: Int64, matchCode: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.matchCode = matchCode
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case matchCode = "MatchCode"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMatchCodesResponse) -> DescribeMatchCodesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMatchCodesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, matchCode: self.matchCode)
        }
    }

    /// DescribeMatchCodes返回参数结构体
    public struct DescribeMatchCodesResponse: TCPaginatedResponse {
        /// 匹配Code
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let matchCodes: [MatchCodeAttr]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case matchCodes = "MatchCodes"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MatchCodeAttr] {
            self.matchCodes ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 分页查询匹配Code
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchCodes(_ input: DescribeMatchCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMatchCodesResponse> {
        fatalError("DescribeMatchCodes is no longer available.")
    }

    /// 分页查询匹配Code
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchCodes(_ input: DescribeMatchCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMatchCodesResponse {
        fatalError("DescribeMatchCodes is no longer available.")
    }

    /// 分页查询匹配Code
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchCodes(offset: Int64, limit: Int64, matchCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMatchCodesResponse> {
        fatalError("DescribeMatchCodes is no longer available.")
    }

    /// 分页查询匹配Code
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchCodes(offset: Int64, limit: Int64, matchCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMatchCodesResponse {
        fatalError("DescribeMatchCodes is no longer available.")
    }

    /// 分页查询匹配Code
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchCodesPaginated(_ input: DescribeMatchCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MatchCodeAttr])> {
        fatalError("DescribeMatchCodes is no longer available.")
    }

    /// 分页查询匹配Code
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func describeMatchCodesPaginated(_ input: DescribeMatchCodesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMatchCodesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("DescribeMatchCodes is no longer available.")
    }

    /// 分页查询匹配Code
    ///
    /// - Returns: `AsyncSequence`s of `MatchCodeAttr` and `DescribeMatchCodesResponse` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeMatchCodesPaginator(_ input: DescribeMatchCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMatchCodesRequest> {
        fatalError("DescribeMatchCodes is no longer available.")
    }
}
