//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Bm {
    /// DescribeDevicePosition请求参数结构体
    public struct DescribeDevicePositionRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64?

        /// 数量限制
        public let limit: UInt64?

        /// 私有网络ID
        public let vpcId: String?

        /// 子网ID
        public let subnetId: String?

        /// 实例ID列表
        public let instanceIds: [String]?

        /// 实例别名
        public let alias: String?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceIds: [String]? = nil, alias: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.instanceIds = instanceIds
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case instanceIds = "InstanceIds"
            case alias = "Alias"
        }
    }

    /// DescribeDevicePosition返回参数结构体
    public struct DescribeDevicePositionResponse: TCResponseModel {
        /// 返回数量
        public let totalCount: UInt64

        /// 设备所在机架信息
        public let devicePositionInfoSet: [DevicePositionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case devicePositionInfoSet = "DevicePositionInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(_ input: DescribeDevicePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePositionResponse> {
        self.client.execute(action: "DescribeDevicePosition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(_ input: DescribeDevicePositionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePositionResponse {
        try await self.client.execute(action: "DescribeDevicePosition", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceIds: [String]? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePositionResponse> {
        self.describeDevicePosition(DescribeDevicePositionRequest(offset: offset, limit: limit, vpcId: vpcId, subnetId: subnetId, instanceIds: instanceIds, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备位置信息
    ///
    /// 查询服务器所在的位置，如机架，上联交换机等信息
    @inlinable
    public func describeDevicePosition(offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceIds: [String]? = nil, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePositionResponse {
        try await self.describeDevicePosition(DescribeDevicePositionRequest(offset: offset, limit: limit, vpcId: vpcId, subnetId: subnetId, instanceIds: instanceIds, alias: alias), region: region, logger: logger, on: eventLoop)
    }
}
