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
    /// DescribeGatewayBindDevices请求参数结构体
    public struct DescribeGatewayBindDevicesRequest: TCPaginatedRequest {
        /// 网关设备的产品ID
        public let gatewayProductId: String

        /// 网关设备的设备名
        public let gatewayDeviceName: String

        /// 偏移量，Offset从0开始
        public let offset: UInt64

        /// 分页的页大小
        public let limit: UInt64

        /// LoRa产品的ID
        public let productId: String?

        public init(gatewayProductId: String, gatewayDeviceName: String, offset: UInt64, limit: UInt64, productId: String? = nil) {
            self.gatewayProductId = gatewayProductId
            self.gatewayDeviceName = gatewayDeviceName
            self.offset = offset
            self.limit = limit
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case gatewayDeviceName = "GatewayDeviceName"
            case offset = "Offset"
            case limit = "Limit"
            case productId = "ProductId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeGatewayBindDevicesResponse) -> DescribeGatewayBindDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGatewayBindDevicesRequest(gatewayProductId: self.gatewayProductId, gatewayDeviceName: self.gatewayDeviceName, offset: self.offset + .init(response.getItems().count), limit: self.limit, productId: self.productId)
        }
    }

    /// DescribeGatewayBindDevices返回参数结构体
    public struct DescribeGatewayBindDevicesResponse: TCPaginatedResponse {
        /// 子设备总数
        public let totalCount: UInt64

        /// 子设备信息
        public let devices: [BindDeviceInfo]

        /// 子设备所属的产品名
        public let productName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case devices = "Devices"
            case productName = "ProductName"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BindDeviceInfo] {
            self.devices
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取网关绑定的子设备列表
    ///
    /// 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表
    @inlinable
    public func describeGatewayBindDevices(_ input: DescribeGatewayBindDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayBindDevicesResponse> {
        self.client.execute(action: "DescribeGatewayBindDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取网关绑定的子设备列表
    ///
    /// 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表
    @inlinable
    public func describeGatewayBindDevices(_ input: DescribeGatewayBindDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayBindDevicesResponse {
        try await self.client.execute(action: "DescribeGatewayBindDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取网关绑定的子设备列表
    ///
    /// 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表
    @inlinable
    public func describeGatewayBindDevices(gatewayProductId: String, gatewayDeviceName: String, offset: UInt64, limit: UInt64, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayBindDevicesResponse> {
        let input = DescribeGatewayBindDevicesRequest(gatewayProductId: gatewayProductId, gatewayDeviceName: gatewayDeviceName, offset: offset, limit: limit, productId: productId)
        return self.client.execute(action: "DescribeGatewayBindDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取网关绑定的子设备列表
    ///
    /// 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表
    @inlinable
    public func describeGatewayBindDevices(gatewayProductId: String, gatewayDeviceName: String, offset: UInt64, limit: UInt64, productId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayBindDevicesResponse {
        let input = DescribeGatewayBindDevicesRequest(gatewayProductId: gatewayProductId, gatewayDeviceName: gatewayDeviceName, offset: offset, limit: limit, productId: productId)
        return try await self.client.execute(action: "DescribeGatewayBindDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取网关绑定的子设备列表
    ///
    /// 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表
    @inlinable
    public func describeGatewayBindDevicesPaginated(_ input: DescribeGatewayBindDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BindDeviceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeGatewayBindDevices, logger: logger, on: eventLoop)
    }

    /// 获取网关绑定的子设备列表
    ///
    /// 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表
    @inlinable
    public func describeGatewayBindDevicesPaginated(_ input: DescribeGatewayBindDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGatewayBindDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGatewayBindDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取网关绑定的子设备列表
    ///
    /// 本接口（DescribeGatewayBindDevices）用于获取网关绑定的子设备列表
    @inlinable
    public func describeGatewayBindDevicesPaginator(_ input: DescribeGatewayBindDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeGatewayBindDevicesRequest, DescribeGatewayBindDevicesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeGatewayBindDevicesRequest, DescribeGatewayBindDevicesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeGatewayBindDevicesRequest, DescribeGatewayBindDevicesResponse>.ResultSequence(input: input, region: region, command: self.describeGatewayBindDevices, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeGatewayBindDevicesRequest, DescribeGatewayBindDevicesResponse>.ResponseSequence(input: input, region: region, command: self.describeGatewayBindDevices, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
