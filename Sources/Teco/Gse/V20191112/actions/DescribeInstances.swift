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

extension Gse {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCRequestModel {
        /// 服务器舰队ID
        public let fleetId: String?

        /// CVM实例ID
        public let instanceId: String?

        /// 结果返回最大数量，最小值0，最大值100
        public let offset: UInt64?

        /// 返回结果偏移，最小值0
        public let limit: UInt64?

        /// CVM实例公网IP
        public let ipAddress: String?

        public init(fleetId: String? = nil, instanceId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ipAddress: String? = nil) {
            self.fleetId = fleetId
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.ipAddress = ipAddress
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case ipAddress = "IpAddress"
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCResponseModel {
        /// 实例信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instances: [Instance]?

        /// 结果返回最大数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询服务器实例列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstances）用于查询服务器实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务器实例列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstances）用于查询服务器实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务器实例列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstances）用于查询服务器实例列表。
    @inlinable
    public func describeInstances(fleetId: String? = nil, instanceId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ipAddress: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.describeInstances(DescribeInstancesRequest(fleetId: fleetId, instanceId: instanceId, offset: offset, limit: limit, ipAddress: ipAddress), logger: logger, on: eventLoop)
    }

    /// 查询服务器实例列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstances）用于查询服务器实例列表。
    @inlinable
    public func describeInstances(fleetId: String? = nil, instanceId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ipAddress: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(DescribeInstancesRequest(fleetId: fleetId, instanceId: instanceId, offset: offset, limit: limit, ipAddress: ipAddress), logger: logger, on: eventLoop)
    }
}
