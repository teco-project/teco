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

import Logging
import NIOCore
import TecoCore

extension Sqlserver {
    /// DescribeReadOnlyGroupByReadOnlyInstance请求参数结构体
    public struct DescribeReadOnlyGroupByReadOnlyInstanceRequest: TCRequest {
        /// 实例ID，格式如：mssqlro-3l3fgqn7
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeReadOnlyGroupByReadOnlyInstance返回参数结构体
    public struct DescribeReadOnlyGroupByReadOnlyInstanceResponse: TCResponse {
        /// 只读组ID
        public let readOnlyGroupId: String

        /// 只读组名称
        public let readOnlyGroupName: String

        /// 只读组的地域ID
        public let regionId: String

        /// 只读组的可用区ID
        public let zoneId: String

        /// 是否启动超时剔除功能 ,0-不开启剔除功能，1-开启剔除功能
        public let isOfflineDelay: Int64

        /// 启动超时剔除功能后，使用的超时阈值，单位是秒
        public let readOnlyMaxDelayTime: Int64

        /// 启动超时剔除功能后，只读组至少保留的只读副本数
        public let minReadOnlyInGroup: Int64

        /// 只读组vip
        public let vip: String

        /// 只读组vport
        public let vport: Int64

        /// 只读组在私有网络ID
        public let vpcId: String

        /// 只读组在私有网络子网ID
        public let subnetId: String

        /// 主实例ID，形如mssql-sgeshe3th
        public let masterInstanceId: String

        /// 主实例的地域ID
        public let masterRegionId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case readOnlyGroupId = "ReadOnlyGroupId"
            case readOnlyGroupName = "ReadOnlyGroupName"
            case regionId = "RegionId"
            case zoneId = "ZoneId"
            case isOfflineDelay = "IsOfflineDelay"
            case readOnlyMaxDelayTime = "ReadOnlyMaxDelayTime"
            case minReadOnlyInGroup = "MinReadOnlyInGroup"
            case vip = "Vip"
            case vport = "Vport"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case masterInstanceId = "MasterInstanceId"
            case masterRegionId = "MasterRegionId"
            case requestId = "RequestId"
        }
    }

    /// 通过只读实例查询只读组
    ///
    /// 本接口（DescribeReadOnlyGroupByReadOnlyInstance）用于通过只读副本实例ID查询其所在的只读组。
    @inlinable
    public func describeReadOnlyGroupByReadOnlyInstance(_ input: DescribeReadOnlyGroupByReadOnlyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReadOnlyGroupByReadOnlyInstanceResponse> {
        self.client.execute(action: "DescribeReadOnlyGroupByReadOnlyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过只读实例查询只读组
    ///
    /// 本接口（DescribeReadOnlyGroupByReadOnlyInstance）用于通过只读副本实例ID查询其所在的只读组。
    @inlinable
    public func describeReadOnlyGroupByReadOnlyInstance(_ input: DescribeReadOnlyGroupByReadOnlyInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupByReadOnlyInstanceResponse {
        try await self.client.execute(action: "DescribeReadOnlyGroupByReadOnlyInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过只读实例查询只读组
    ///
    /// 本接口（DescribeReadOnlyGroupByReadOnlyInstance）用于通过只读副本实例ID查询其所在的只读组。
    @inlinable
    public func describeReadOnlyGroupByReadOnlyInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReadOnlyGroupByReadOnlyInstanceResponse> {
        self.describeReadOnlyGroupByReadOnlyInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 通过只读实例查询只读组
    ///
    /// 本接口（DescribeReadOnlyGroupByReadOnlyInstance）用于通过只读副本实例ID查询其所在的只读组。
    @inlinable
    public func describeReadOnlyGroupByReadOnlyInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupByReadOnlyInstanceResponse {
        try await self.describeReadOnlyGroupByReadOnlyInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
