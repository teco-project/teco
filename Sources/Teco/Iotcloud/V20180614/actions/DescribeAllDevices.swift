//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeAllDevices请求参数结构体
    public struct DescribeAllDevicesRequest: TCRequestModel {
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
    }

    /// DescribeAllDevices返回参数结构体
    public struct DescribeAllDevicesResponse: TCResponseModel {
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
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(_ input: DescribeAllDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAllDevicesResponse > {
        self.client.execute(action: "DescribeAllDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(_ input: DescribeAllDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllDevicesResponse {
        try await self.client.execute(action: "DescribeAllDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(offset: UInt64, limit: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAllDevicesResponse > {
        self.describeAllDevices(DescribeAllDevicesRequest(offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询所有设备列表
    @inlinable
    public func describeAllDevices(offset: UInt64, limit: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllDevicesResponse {
        try await self.describeAllDevices(DescribeAllDevicesRequest(offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
