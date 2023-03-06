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
    /// DescribeDevices请求参数结构体
    public struct DescribeDevicesRequest: TCPaginatedRequest {
        /// 需要查看设备列表的产品 ID
        public let productId: String

        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 分页的大小，数值范围 10-250
        public let limit: UInt64

        /// 设备固件版本号，若不带此参数会返回所有固件版本的设备。传"None-FirmwareVersion"查询无版本号的设备
        public let firmwareVersion: String?

        /// 需要过滤的设备名称
        public let deviceName: String?

        /// 设备是否启用，0禁用状态1启用状态，默认不区分
        public let enableState: UInt64?

        public init(productId: String, offset: UInt64, limit: UInt64, firmwareVersion: String? = nil, deviceName: String? = nil, enableState: UInt64? = nil) {
            self.productId = productId
            self.offset = offset
            self.limit = limit
            self.firmwareVersion = firmwareVersion
            self.deviceName = deviceName
            self.enableState = enableState
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case offset = "Offset"
            case limit = "Limit"
            case firmwareVersion = "FirmwareVersion"
            case deviceName = "DeviceName"
            case enableState = "EnableState"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDevicesResponse) -> DescribeDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDevicesRequest(productId: self.productId, offset: self.offset + .init(response.getItems().count), limit: self.limit, firmwareVersion: self.firmwareVersion, deviceName: self.deviceName, enableState: self.enableState)
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
    ///
    /// 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        try await self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    ///
    /// 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。
    @inlinable
    public func describeDevices(productId: String, offset: UInt64, limit: UInt64, firmwareVersion: String? = nil, deviceName: String? = nil, enableState: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        let input = DescribeDevicesRequest(productId: productId, offset: offset, limit: limit, firmwareVersion: firmwareVersion, deviceName: deviceName, enableState: enableState)
        return self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。
    @inlinable
    public func describeDevices(productId: String, offset: UInt64, limit: UInt64, firmwareVersion: String? = nil, deviceName: String? = nil, enableState: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        let input = DescribeDevicesRequest(productId: productId, offset: offset, limit: limit, firmwareVersion: firmwareVersion, deviceName: deviceName, enableState: enableState)
        return try await self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备列表
    ///
    /// 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。
    @inlinable
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DeviceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。
    @inlinable @discardableResult
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取设备列表
    ///
    /// 本接口（DescribeDevices）用于查询物联网通信设备的设备列表。
    @inlinable
    public func describeDevicesPaginator(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeDevicesRequest, DescribeDevicesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeDevicesRequest, DescribeDevicesResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }
}
