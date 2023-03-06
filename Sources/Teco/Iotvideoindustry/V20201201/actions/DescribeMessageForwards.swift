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

extension Iotvideoindustry {
    /// DescribeMessageForwards请求参数结构体
    public struct DescribeMessageForwardsRequest: TCPaginatedRequest {
        /// 数量限制
        public let limit: Int64

        /// 偏移
        public let offset: Int64?

        public init(limit: Int64, offset: Int64? = nil) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeMessageForwardsResponse) -> DescribeMessageForwardsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMessageForwardsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeMessageForwards返回参数结构体
    public struct DescribeMessageForwardsResponse: TCPaginatedResponse {
        /// 配置总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 配置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [MessageForward]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MessageForward] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查看消息转发配置列表
    @inlinable
    public func describeMessageForwards(_ input: DescribeMessageForwardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageForwardsResponse> {
        self.client.execute(action: "DescribeMessageForwards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看消息转发配置列表
    @inlinable
    public func describeMessageForwards(_ input: DescribeMessageForwardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageForwardsResponse {
        try await self.client.execute(action: "DescribeMessageForwards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看消息转发配置列表
    @inlinable
    public func describeMessageForwards(limit: Int64, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMessageForwardsResponse> {
        let input = DescribeMessageForwardsRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribeMessageForwards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看消息转发配置列表
    @inlinable
    public func describeMessageForwards(limit: Int64, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageForwardsResponse {
        let input = DescribeMessageForwardsRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeMessageForwards", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看消息转发配置列表
    @inlinable
    public func describeMessageForwardsPaginated(_ input: DescribeMessageForwardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MessageForward])> {
        self.client.paginate(input: input, region: region, command: self.describeMessageForwards, logger: logger, on: eventLoop)
    }

    /// 查看消息转发配置列表
    @inlinable @discardableResult
    public func describeMessageForwardsPaginated(_ input: DescribeMessageForwardsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMessageForwardsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMessageForwards, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看消息转发配置列表
    @inlinable
    public func describeMessageForwardsPaginator(_ input: DescribeMessageForwardsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMessageForwardsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMessageForwards, logger: logger, on: eventLoop)
    }
}
