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

import Logging
import NIOCore
import TecoCore

extension Ckafka {
    /// DescribeRegion请求参数结构体
    public struct DescribeRegionRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: Int64?

        /// 返回最大结果数
        public let limit: Int64?

        /// 业务字段，可忽略
        public let business: String?

        /// cdc专有集群业务字段，可忽略
        public let cdcId: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, business: String? = nil, cdcId: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.business = business
            self.cdcId = cdcId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case business = "Business"
            case cdcId = "CdcId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRegionResponse) -> DescribeRegionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, business: self.business, cdcId: self.cdcId)
        }
    }

    /// DescribeRegion返回参数结构体
    public struct DescribeRegionResponse: TCPaginatedResponse {
        /// 返回地域枚举结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [Region]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Region`` list from the paginated response.
        public func getItems() -> [Region] {
            self.result ?? []
        }
    }

    /// 枚举地域
    ///
    /// 枚举地域,只支持广州地域
    @inlinable
    public func describeRegion(_ input: DescribeRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionResponse> {
        self.client.execute(action: "DescribeRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 枚举地域
    ///
    /// 枚举地域,只支持广州地域
    @inlinable
    public func describeRegion(_ input: DescribeRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionResponse {
        try await self.client.execute(action: "DescribeRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 枚举地域
    ///
    /// 枚举地域,只支持广州地域
    @inlinable
    public func describeRegion(offset: Int64? = nil, limit: Int64? = nil, business: String? = nil, cdcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionResponse> {
        self.describeRegion(.init(offset: offset, limit: limit, business: business, cdcId: cdcId), region: region, logger: logger, on: eventLoop)
    }

    /// 枚举地域
    ///
    /// 枚举地域,只支持广州地域
    @inlinable
    public func describeRegion(offset: Int64? = nil, limit: Int64? = nil, business: String? = nil, cdcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionResponse {
        try await self.describeRegion(.init(offset: offset, limit: limit, business: business, cdcId: cdcId), region: region, logger: logger, on: eventLoop)
    }

    /// 枚举地域
    ///
    /// 枚举地域,只支持广州地域
    @inlinable
    public func describeRegionPaginated(_ input: DescribeRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [Region])> {
        self.client.paginate(input: input, region: region, command: self.describeRegion, logger: logger, on: eventLoop)
    }

    /// 枚举地域
    ///
    /// 枚举地域,只支持广州地域
    @inlinable @discardableResult
    public func describeRegionPaginated(_ input: DescribeRegionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRegionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRegion, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 枚举地域
    ///
    /// 枚举地域,只支持广州地域
    ///
    /// - Returns: `AsyncSequence`s of ``Region`` and ``DescribeRegionResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRegionPaginator(_ input: DescribeRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRegionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRegion, logger: logger, on: eventLoop)
    }
}
