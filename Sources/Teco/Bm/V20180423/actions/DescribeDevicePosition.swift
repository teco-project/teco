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
import TecoPaginationHelpers

extension Bm {
    /// DescribeDevicePosition请求参数结构体
    public struct DescribeDevicePositionRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64?

        /// 数量限制
        public let limit: UInt64?

        /// 私有网络ID
        public let vpcId: String?

        /// 子网ID
        public let subnetId: String?

        /// 实例ID列表
        public let instanceIds: [String]?

        /// 实例别名
        public let alias: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceIds: [String]? = nil, alias: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.instanceIds = instanceIds
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case instanceIds = "InstanceIds"
            case alias = "Alias"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDevicePositionResponse) -> DescribeDevicePositionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDevicePositionRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, vpcId: self.vpcId, subnetId: self.subnetId, instanceIds: self.instanceIds, alias: self.alias)
        }
    }

    /// DescribeDevicePosition返回参数结构体
    public struct DescribeDevicePositionResponse: TCPaginatedResponse {
        /// 返回数量
        public let totalCount: UInt64

        /// 设备所在机架信息
        public let devicePositionInfoSet: [DevicePositionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case devicePositionInfoSet = "DevicePositionInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DevicePositionInfo`` list from the paginated response.
        public func getItems() -> [DevicePositionInfo] {
            self.devicePositionInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(_ input: DescribeDevicePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePositionResponse> {
        self.client.execute(action: "DescribeDevicePosition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(_ input: DescribeDevicePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePositionResponse {
        try await self.client.execute(action: "DescribeDevicePosition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceIds: [String]? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePositionResponse> {
        self.describeDevicePosition(.init(offset: offset, limit: limit, vpcId: vpcId, subnetId: subnetId, instanceIds: instanceIds, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceIds: [String]? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePositionResponse {
        try await self.describeDevicePosition(.init(offset: offset, limit: limit, vpcId: vpcId, subnetId: subnetId, instanceIds: instanceIds, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePositionPaginated(_ input: DescribeDevicePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DevicePositionInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDevicePosition, logger: logger, on: eventLoop)
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable @discardableResult
    public func describeDevicePositionPaginated(_ input: DescribeDevicePositionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDevicePositionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDevicePosition, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    ///
    /// - Returns: `AsyncSequence`s of ``DevicePositionInfo`` and ``DescribeDevicePositionResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDevicePositionPaginator(_ input: DescribeDevicePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDevicePositionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDevicePosition, logger: logger, on: eventLoop)
    }
}
