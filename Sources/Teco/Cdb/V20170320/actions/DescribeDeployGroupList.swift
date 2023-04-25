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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Cdb {
    /// DescribeDeployGroupList请求参数结构体
    public struct DescribeDeployGroupListRequest: TCPaginatedRequest {
        /// 置放群组 ID。
        public let deployGroupId: String?

        /// 置放群组名称。
        public let deployGroupName: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?

        /// 偏移量，默认为0。
        public let offset: Int64?

        public init(deployGroupId: String? = nil, deployGroupName: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.deployGroupId = deployGroupId
            self.deployGroupName = deployGroupName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case deployGroupId = "DeployGroupId"
            case deployGroupName = "DeployGroupName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDeployGroupListResponse) -> DescribeDeployGroupListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeployGroupListRequest(deployGroupId: self.deployGroupId, deployGroupName: self.deployGroupName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDeployGroupList返回参数结构体
    public struct DescribeDeployGroupListResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let total: Int64

        /// 返回列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DeployGroupInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DeployGroupInfo] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询置放群组列表
    ///
    /// 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。
    @inlinable
    public func describeDeployGroupList(_ input: DescribeDeployGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeployGroupListResponse> {
        self.client.execute(action: "DescribeDeployGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询置放群组列表
    ///
    /// 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。
    @inlinable
    public func describeDeployGroupList(_ input: DescribeDeployGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeployGroupListResponse {
        try await self.client.execute(action: "DescribeDeployGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询置放群组列表
    ///
    /// 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。
    @inlinable
    public func describeDeployGroupList(deployGroupId: String? = nil, deployGroupName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeployGroupListResponse> {
        self.describeDeployGroupList(.init(deployGroupId: deployGroupId, deployGroupName: deployGroupName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询置放群组列表
    ///
    /// 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。
    @inlinable
    public func describeDeployGroupList(deployGroupId: String? = nil, deployGroupName: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeployGroupListResponse {
        try await self.describeDeployGroupList(.init(deployGroupId: deployGroupId, deployGroupName: deployGroupName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询置放群组列表
    ///
    /// 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。
    @inlinable
    public func describeDeployGroupListPaginated(_ input: DescribeDeployGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DeployGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDeployGroupList, logger: logger, on: eventLoop)
    }

    /// 查询置放群组列表
    ///
    /// 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。
    @inlinable @discardableResult
    public func describeDeployGroupListPaginated(_ input: DescribeDeployGroupListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeployGroupListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeployGroupList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询置放群组列表
    ///
    /// 本接口(DescribeDeployGroupList)用于查询用户的置放群组列表，可以指定置放群组 ID 或置放群组名称。
    ///
    /// - Returns: `AsyncSequence`s of `DeployGroupInfo` and `DescribeDeployGroupListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeployGroupListPaginator(_ input: DescribeDeployGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeployGroupListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeployGroupList, logger: logger, on: eventLoop)
    }
}
