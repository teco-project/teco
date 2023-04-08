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

extension Iotexplorer {
    /// DescribeDeviceData请求参数结构体
    public struct DescribeDeviceDataRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 设备ID，该字段有值将代替 ProductId/DeviceName
        public let deviceId: String?

        public init(productId: String, deviceName: String, deviceId: String? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case deviceId = "DeviceId"
        }
    }

    /// DescribeDeviceData返回参数结构体
    public struct DescribeDeviceDataResponse: TCResponseModel {
        /// 设备数据
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取设备属性数据
    ///
    /// 根据设备产品ID、设备名称，获取设备上报的属性数据。
    @inlinable
    public func describeDeviceData(_ input: DescribeDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceDataResponse> {
        self.client.execute(action: "DescribeDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备属性数据
    ///
    /// 根据设备产品ID、设备名称，获取设备上报的属性数据。
    @inlinable
    public func describeDeviceData(_ input: DescribeDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceDataResponse {
        try await self.client.execute(action: "DescribeDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备属性数据
    ///
    /// 根据设备产品ID、设备名称，获取设备上报的属性数据。
    @inlinable
    public func describeDeviceData(productId: String, deviceName: String, deviceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceDataResponse> {
        self.describeDeviceData(.init(productId: productId, deviceName: deviceName, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备属性数据
    ///
    /// 根据设备产品ID、设备名称，获取设备上报的属性数据。
    @inlinable
    public func describeDeviceData(productId: String, deviceName: String, deviceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceDataResponse {
        try await self.describeDeviceData(.init(productId: productId, deviceName: deviceName, deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
