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

extension Iotcloud {
    /// DescribeDeviceResource请求参数结构体
    public struct DescribeDeviceResourceRequest: TCRequestModel {
        /// 设备名称
        public let deviceName: String

        /// 产品ID
        public let productID: String?

        /// 具体的设备资源名称
        public let name: String?

        public init(deviceName: String, productID: String? = nil, name: String? = nil) {
            self.deviceName = deviceName
            self.productID = productID
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case deviceName = "DeviceName"
            case productID = "ProductID"
            case name = "Name"
        }
    }

    /// DescribeDeviceResource返回参数结构体
    public struct DescribeDeviceResourceResponse: TCResponseModel {
        /// 设备资源详情
        public let result: DeviceResourceInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询设备资源详情
    ///
    /// 本接口（DescribeDeviceResource）用于查询设备资源详情。
    @inlinable
    public func describeDeviceResource(_ input: DescribeDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceResourceResponse> {
        self.client.execute(action: "DescribeDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备资源详情
    ///
    /// 本接口（DescribeDeviceResource）用于查询设备资源详情。
    @inlinable
    public func describeDeviceResource(_ input: DescribeDeviceResourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResourceResponse {
        try await self.client.execute(action: "DescribeDeviceResource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备资源详情
    ///
    /// 本接口（DescribeDeviceResource）用于查询设备资源详情。
    @inlinable
    public func describeDeviceResource(deviceName: String, productID: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceResourceResponse> {
        self.describeDeviceResource(.init(deviceName: deviceName, productID: productID, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备资源详情
    ///
    /// 本接口（DescribeDeviceResource）用于查询设备资源详情。
    @inlinable
    public func describeDeviceResource(deviceName: String, productID: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceResourceResponse {
        try await self.describeDeviceResource(.init(deviceName: deviceName, productID: productID, name: name), region: region, logger: logger, on: eventLoop)
    }
}
