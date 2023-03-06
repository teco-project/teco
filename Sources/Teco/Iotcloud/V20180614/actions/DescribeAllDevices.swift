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

extension Iotcloud {
    /// DescribeAllDevices请求参数结构体
    public struct DescribeAllDevicesRequest: TCPaginatedRequest {
        /// 查询偏移量。
        public let offset: UInt64

        /// 查询设备数量。最大支持250个
        public let limit: UInt64

        public init(offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAllDevicesResponse) -> DescribeAllDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAllDevicesRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAllDevices返回参数结构体
    public struct DescribeAllDevicesResponse: TCPaginatedResponse {
        /// 设备总数。
        public let totalCount: Int64

        /// 查询的设备列表信息。
        public let devices: [DeviceProperty]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case devices = "Devices"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DeviceProperty] {
            self.devices
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(_ input: DescribeAllDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllDevicesResponse> {
        self.client.execute(action: "DescribeAllDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(_ input: DescribeAllDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllDevicesResponse {
        try await self.client.execute(action: "DescribeAllDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllDevicesResponse> {
        let input = DescribeAllDevicesRequest(offset: offset, limit: limit)
        return self.client.execute(action: "DescribeAllDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllDevicesResponse {
        let input = DescribeAllDevicesRequest(offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeAllDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevicesPaginated(_ input: DescribeAllDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DeviceProperty])> {
        self.client.paginate(input: input, region: region, command: self.describeAllDevices, logger: logger, on: eventLoop)
    }

    /// 查询所有设备列表
    @inlinable @discardableResult
    public func describeAllDevicesPaginated(_ input: DescribeAllDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAllDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAllDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevicesPaginator(_ input: DescribeAllDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAllDevicesRequest, DescribeAllDevicesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAllDevicesRequest, DescribeAllDevicesResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAllDevices, logger: logger, on: eventLoop)
    }
}
