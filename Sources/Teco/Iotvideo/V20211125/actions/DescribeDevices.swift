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

extension Iotvideo {
    /// DescribeDevices请求参数结构体
    public struct DescribeDevicesRequest: TCPaginatedRequest {
        /// 需要查看设备列表的产品 ID
        public let productId: String

        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 分页的大小，最大100
        public let limit: UInt64

        /// 需要过滤的设备名称
        public let deviceName: String?

        public init(productId: String, offset: UInt64, limit: UInt64, deviceName: String? = nil) {
            self.productId = productId
            self.offset = offset
            self.limit = limit
            self.deviceName = deviceName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case offset = "Offset"
            case limit = "Limit"
            case deviceName = "DeviceName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDevicesResponse) -> DescribeDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDevicesRequest(productId: self.productId, offset: self.offset + .init(response.getItems().count), limit: self.limit, deviceName: self.deviceName)
        }
    }

    /// DescribeDevices返回参数结构体
    public struct DescribeDevicesResponse: TCPaginatedResponse {
        /// 设备总数
        public let totalCount: UInt64

        /// 设备详细信息列表
        public let devices: [DeviceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case devices = "Devices"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DeviceInfo] {
            self.devices
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取设备列表
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        try await self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    @inlinable
    public func describeDevices(productId: String, offset: UInt64, limit: UInt64, deviceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        let input = DescribeDevicesRequest(productId: productId, offset: offset, limit: limit, deviceName: deviceName)
        return self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    @inlinable
    public func describeDevices(productId: String, offset: UInt64, limit: UInt64, deviceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        let input = DescribeDevicesRequest(productId: productId, offset: offset, limit: limit, deviceName: deviceName)
        return try await self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    @inlinable
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    @inlinable @discardableResult
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// - Returns: `AsyncSequence`s of `DeviceInfo` and `DescribeDevicesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDevicesPaginator(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }
}
