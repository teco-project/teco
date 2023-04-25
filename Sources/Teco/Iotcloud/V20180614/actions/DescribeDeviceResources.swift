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

extension Iotcloud {
    /// DescribeDeviceResources请求参数结构体
    public struct DescribeDeviceResourcesRequest: TCPaginatedRequest {
        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 分页的大小，数值范围 10-250
        public let limit: UInt64

        /// 产品ID
        public let productID: String?

        /// 需要过滤的设备名称
        public let deviceName: String?

        /// 资源搜索开始时间
        public let startTime: String?

        /// 资源搜索结束时间
        public let endTime: String?

        public init(offset: UInt64, limit: UInt64, productID: String? = nil, deviceName: String? = nil, startTime: String? = nil, endTime: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.productID = productID
            self.deviceName = deviceName
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case productID = "ProductID"
            case deviceName = "DeviceName"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDeviceResourcesResponse) -> DescribeDeviceResourcesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeviceResourcesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, productID: self.productID, deviceName: self.deviceName, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeDeviceResources返回参数结构体
    public struct DescribeDeviceResourcesResponse: TCPaginatedResponse {
        /// 资源总数
        public let totalCount: UInt64

        /// 资源列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [DeviceResourceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DeviceResourceInfo] {
            self.result ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取设备资源列表
    ///
    /// 本接口（DescribeDeviceResources）用于查询设备资源列表。
    @inlinable
    public func describeDeviceResources(_ input: DescribeDeviceResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceResourcesResponse> {
        self.client.execute(action: "DescribeDeviceResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备资源列表
    ///
    /// 本接口（DescribeDeviceResources）用于查询设备资源列表。
    @inlinable
    public func describeDeviceResources(_ input: DescribeDeviceResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResourcesResponse {
        try await self.client.execute(action: "DescribeDeviceResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备资源列表
    ///
    /// 本接口（DescribeDeviceResources）用于查询设备资源列表。
    @inlinable
    public func describeDeviceResources(offset: UInt64, limit: UInt64, productID: String? = nil, deviceName: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceResourcesResponse> {
        self.describeDeviceResources(.init(offset: offset, limit: limit, productID: productID, deviceName: deviceName, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备资源列表
    ///
    /// 本接口（DescribeDeviceResources）用于查询设备资源列表。
    @inlinable
    public func describeDeviceResources(offset: UInt64, limit: UInt64, productID: String? = nil, deviceName: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResourcesResponse {
        try await self.describeDeviceResources(.init(offset: offset, limit: limit, productID: productID, deviceName: deviceName, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备资源列表
    ///
    /// 本接口（DescribeDeviceResources）用于查询设备资源列表。
    @inlinable
    public func describeDeviceResourcesPaginated(_ input: DescribeDeviceResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceResourceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceResources, logger: logger, on: eventLoop)
    }

    /// 获取设备资源列表
    ///
    /// 本接口（DescribeDeviceResources）用于查询设备资源列表。
    @inlinable @discardableResult
    public func describeDeviceResourcesPaginated(_ input: DescribeDeviceResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备资源列表
    ///
    /// 本接口（DescribeDeviceResources）用于查询设备资源列表。
    ///
    /// - Returns: `AsyncSequence`s of `DeviceResourceInfo` and `DescribeDeviceResourcesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDeviceResourcesPaginator(_ input: DescribeDeviceResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDeviceResourcesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeviceResources, logger: logger, on: eventLoop)
    }
}
