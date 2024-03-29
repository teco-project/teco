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

extension Iecp {
    /// DescribeIotDevices请求参数结构体
    public struct DescribeIotDevicesRequest: TCPaginatedRequest {
        /// 页偏移
        public let offset: Int64

        /// 每页数量
        public let limit: Int64

        /// 产品id
        public let productId: String?

        /// 设备名称模糊查找
        public let namePattern: String?

        /// 版本列表
        public let versions: [String]?

        /// ASC 或 DESC
        public let order: String?

        public init(offset: Int64, limit: Int64, productId: String? = nil, namePattern: String? = nil, versions: [String]? = nil, order: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.productId = productId
            self.namePattern = namePattern
            self.versions = versions
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case productId = "ProductId"
            case namePattern = "NamePattern"
            case versions = "Versions"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIotDevicesResponse) -> DescribeIotDevicesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, productId: self.productId, namePattern: self.namePattern, versions: self.versions, order: self.order)
        }
    }

    /// DescribeIotDevices返回参数结构体
    public struct DescribeIotDevicesResponse: TCPaginatedResponse {
        /// 符合查找条件的总数量
        public let totalCount: Int64

        /// 设备列表
        public let deviceSet: [IotDevicesInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deviceSet = "DeviceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``IotDevicesInfo`` list from the paginated response.
        public func getItems() -> [IotDevicesInfo] {
            self.deviceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(_ input: DescribeIotDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIotDevicesResponse> {
        self.client.execute(action: "DescribeIotDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(_ input: DescribeIotDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotDevicesResponse {
        try await self.client.execute(action: "DescribeIotDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(offset: Int64, limit: Int64, productId: String? = nil, namePattern: String? = nil, versions: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIotDevicesResponse> {
        self.describeIotDevices(.init(offset: offset, limit: limit, productId: productId, namePattern: namePattern, versions: versions, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevices(offset: Int64, limit: Int64, productId: String? = nil, namePattern: String? = nil, versions: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotDevicesResponse {
        try await self.describeIotDevices(.init(offset: offset, limit: limit, productId: productId, namePattern: namePattern, versions: versions, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备列表信息
    @inlinable
    public func describeIotDevicesPaginated(_ input: DescribeIotDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [IotDevicesInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeIotDevices, logger: logger, on: eventLoop)
    }

    /// 获取设备列表信息
    @inlinable @discardableResult
    public func describeIotDevicesPaginated(_ input: DescribeIotDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIotDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIotDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备列表信息
    ///
    /// - Returns: `AsyncSequence`s of ``IotDevicesInfo`` and ``DescribeIotDevicesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIotDevicesPaginator(_ input: DescribeIotDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIotDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIotDevices, logger: logger, on: eventLoop)
    }
}
