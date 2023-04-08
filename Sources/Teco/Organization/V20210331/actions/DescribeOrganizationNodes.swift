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

extension Organization {
    /// DescribeOrganizationNodes请求参数结构体
    public struct DescribeOrganizationNodesRequest: TCPaginatedRequest {
        /// 限制数目。最大50
        public let limit: Int64

        /// 偏移量。
        public let offset: Int64

        public init(limit: Int64, offset: Int64) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOrganizationNodesResponse) -> DescribeOrganizationNodesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOrganizationNodesRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeOrganizationNodes返回参数结构体
    public struct DescribeOrganizationNodesResponse: TCPaginatedResponse {
        /// 总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 列表详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [OrgNode]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [OrgNode] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取组织节点列表
    @inlinable
    public func describeOrganizationNodes(_ input: DescribeOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationNodesResponse> {
        self.client.execute(action: "DescribeOrganizationNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组织节点列表
    @inlinable
    public func describeOrganizationNodes(_ input: DescribeOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationNodesResponse {
        try await self.client.execute(action: "DescribeOrganizationNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组织节点列表
    @inlinable
    public func describeOrganizationNodes(limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationNodesResponse> {
        self.describeOrganizationNodes(.init(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组织节点列表
    @inlinable
    public func describeOrganizationNodes(limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationNodesResponse {
        try await self.describeOrganizationNodes(.init(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组织节点列表
    @inlinable
    public func describeOrganizationNodesPaginated(_ input: DescribeOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [OrgNode])> {
        self.client.paginate(input: input, region: region, command: self.describeOrganizationNodes, logger: logger, on: eventLoop)
    }

    /// 获取组织节点列表
    @inlinable @discardableResult
    public func describeOrganizationNodesPaginated(_ input: DescribeOrganizationNodesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOrganizationNodesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOrganizationNodes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取组织节点列表
    ///
    /// - Returns: `AsyncSequence`s of `OrgNode` and `DescribeOrganizationNodesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOrganizationNodesPaginator(_ input: DescribeOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOrganizationNodesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOrganizationNodes, logger: logger, on: eventLoop)
    }
}
