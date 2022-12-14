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
    /// DescribeInstancesExtend请求参数结构体
    public struct DescribeInstancesExtendRequest: TCRequestModel {
        /// 服务器舰队ID
        public let fleetId: String

        /// 返回结果偏移，最小值0
        public let offset: Int64

        /// 结果返回最大数量，最小值0，最大值100
        public let limit: Int64

        /// CVM实例公网IP
        public let ipAddress: String?

        public init(fleetId: String, offset: Int64, limit: Int64, ipAddress: String? = nil) {
            self.fleetId = fleetId
            self.offset = offset
            self.limit = limit
            self.ipAddress = ipAddress
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case offset = "Offset"
            case limit = "Limit"
            case ipAddress = "IpAddress"
        }
    }

    /// DescribeInstancesExtend返回参数结构体
    public struct DescribeInstancesExtendResponse: TCResponseModel {
        /// 实例信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instances: [InstanceExtend]?

        /// 梳理信息总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询实例扩展信息列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstancesExtend）用于查询实例扩展信息列表。
    @inlinable
    public func describeInstancesExtend(_ input: DescribeInstancesExtendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesExtendResponse > {
        self.client.execute(action: "DescribeInstancesExtend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例扩展信息列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstancesExtend）用于查询实例扩展信息列表。
    @inlinable
    public func describeInstancesExtend(_ input: DescribeInstancesExtendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesExtendResponse {
        try await self.client.execute(action: "DescribeInstancesExtend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例扩展信息列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstancesExtend）用于查询实例扩展信息列表。
    @inlinable
    public func describeInstancesExtend(fleetId: String, offset: Int64, limit: Int64, ipAddress: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesExtendResponse > {
        self.describeInstancesExtend(DescribeInstancesExtendRequest(fleetId: fleetId, offset: offset, limit: limit, ipAddress: ipAddress), logger: logger, on: eventLoop)
    }

    /// 查询实例扩展信息列表
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeInstancesExtend）用于查询实例扩展信息列表。
    @inlinable
    public func describeInstancesExtend(fleetId: String, offset: Int64, limit: Int64, ipAddress: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesExtendResponse {
        try await self.describeInstancesExtend(DescribeInstancesExtendRequest(fleetId: fleetId, offset: offset, limit: limit, ipAddress: ipAddress), logger: logger, on: eventLoop)
    }
}
