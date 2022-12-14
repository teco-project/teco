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

extension Bmvpc {
    /// DescribeSubnetByHostedDevice请求参数结构体
    public struct DescribeSubnetByHostedDeviceRequest: TCRequestModel {
        /// 托管机器ID, 如chm-xasdfx2j
        public let instanceId: String

        /// 子网类型。0: 物理机子网; 7: DOCKER子网 8: 虚拟子网
        public let types: [UInt64]?

        /// 查询的起始位置。
        public let offset: UInt64?

        /// 查询的个数。
        public let limit: UInt64?

        public init(instanceId: String, types: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.types = types
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case types = "Types"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSubnetByHostedDevice返回参数结构体
    public struct DescribeSubnetByHostedDeviceResponse: TCResponseModel {
        /// 子网个数
        public let totalCount: UInt64

        /// 子网列表
        public let data: [SubnetInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询托管机器加入的子网列表
    ///
    /// 托管可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询托管加入的子网。
    @inlinable
    public func describeSubnetByHostedDevice(_ input: DescribeSubnetByHostedDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSubnetByHostedDeviceResponse > {
        self.client.execute(action: "DescribeSubnetByHostedDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询托管机器加入的子网列表
    ///
    /// 托管可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询托管加入的子网。
    @inlinable
    public func describeSubnetByHostedDevice(_ input: DescribeSubnetByHostedDeviceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetByHostedDeviceResponse {
        try await self.client.execute(action: "DescribeSubnetByHostedDevice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询托管机器加入的子网列表
    ///
    /// 托管可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询托管加入的子网。
    @inlinable
    public func describeSubnetByHostedDevice(instanceId: String, types: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSubnetByHostedDeviceResponse > {
        self.describeSubnetByHostedDevice(DescribeSubnetByHostedDeviceRequest(instanceId: instanceId, types: types, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询托管机器加入的子网列表
    ///
    /// 托管可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询托管加入的子网。
    @inlinable
    public func describeSubnetByHostedDevice(instanceId: String, types: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubnetByHostedDeviceResponse {
        try await self.describeSubnetByHostedDevice(DescribeSubnetByHostedDeviceRequest(instanceId: instanceId, types: types, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
