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
import TecoPaginationHelpers

extension Bmvpc {
    /// DescribeSubnetByDevice请求参数结构体
    public struct DescribeSubnetByDeviceRequest: TCPaginatedRequest {
        /// 物理机ID
        public let instanceId: String

        /// 子网类型。0: 物理机子网; 7: DOCKER子网 8: 虚拟子网
        public let types: [UInt64]?

        /// 查询的起始位置。
        public let offset: UInt64?

        /// 查询的个数。
        public let limit: UInt64?

        public init(instanceId: String, types: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.types = types
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case types = "Types"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSubnetByDeviceResponse) -> DescribeSubnetByDeviceRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSubnetByDeviceRequest(instanceId: self.instanceId, types: self.types, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSubnetByDevice返回参数结构体
    public struct DescribeSubnetByDeviceResponse: TCPaginatedResponse {
        /// 子网个数
        public let totalCount: UInt64

        /// 子网列表
        public let data: [SubnetInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SubnetInfo] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询物理机加入的子网列表
    ///
    /// 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。
    @inlinable
    public func describeSubnetByDevice(_ input: DescribeSubnetByDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetByDeviceResponse> {
        self.client.execute(action: "DescribeSubnetByDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询物理机加入的子网列表
    ///
    /// 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。
    @inlinable
    public func describeSubnetByDevice(_ input: DescribeSubnetByDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetByDeviceResponse {
        try await self.client.execute(action: "DescribeSubnetByDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询物理机加入的子网列表
    ///
    /// 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。
    @inlinable
    public func describeSubnetByDevice(instanceId: String, types: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubnetByDeviceResponse> {
        self.describeSubnetByDevice(.init(instanceId: instanceId, types: types, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询物理机加入的子网列表
    ///
    /// 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。
    @inlinable
    public func describeSubnetByDevice(instanceId: String, types: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetByDeviceResponse {
        try await self.describeSubnetByDevice(.init(instanceId: instanceId, types: types, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询物理机加入的子网列表
    ///
    /// 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。
    @inlinable
    public func describeSubnetByDevicePaginated(_ input: DescribeSubnetByDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SubnetInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSubnetByDevice, logger: logger, on: eventLoop)
    }

    /// 查询物理机加入的子网列表
    ///
    /// 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。
    @inlinable @discardableResult
    public func describeSubnetByDevicePaginated(_ input: DescribeSubnetByDeviceRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSubnetByDeviceResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSubnetByDevice, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询物理机加入的子网列表
    ///
    /// 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。
    ///
    /// - Returns: `AsyncSequence`s of `SubnetInfo` and `DescribeSubnetByDeviceResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSubnetByDevicePaginator(_ input: DescribeSubnetByDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSubnetByDeviceRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSubnetByDevice, logger: logger, on: eventLoop)
    }
}
