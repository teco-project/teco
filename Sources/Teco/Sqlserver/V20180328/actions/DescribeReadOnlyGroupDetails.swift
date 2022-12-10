//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Sqlserver {
    /// 查询只读组详情
    ///
    /// 本接口（DescribeReadOnlyGroupDetails）用于查询只读组详情。
    @inlinable
    public func describeReadOnlyGroupDetails(_ input: DescribeReadOnlyGroupDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReadOnlyGroupDetailsResponse > {
        self.client.execute(action: "DescribeReadOnlyGroupDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询只读组详情
    ///
    /// 本接口（DescribeReadOnlyGroupDetails）用于查询只读组详情。
    @inlinable
    public func describeReadOnlyGroupDetails(_ input: DescribeReadOnlyGroupDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupDetailsResponse {
        try await self.client.execute(action: "DescribeReadOnlyGroupDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeReadOnlyGroupDetails请求参数结构体
    public struct DescribeReadOnlyGroupDetailsRequest: TCRequestModel {
        /// 主实例ID，格式如：mssql-3l3fgqn7
        public let instanceId: String
        
        /// 只读组ID，格式如：mssqlrg-3l3fgqn7
        public let readOnlyGroupId: String
        
        public init (instanceId: String, readOnlyGroupId: String) {
            self.instanceId = instanceId
            self.readOnlyGroupId = readOnlyGroupId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case readOnlyGroupId = "ReadOnlyGroupId"
        }
    }
    
    /// DescribeReadOnlyGroupDetails返回参数结构体
    public struct DescribeReadOnlyGroupDetailsResponse: TCResponseModel {
        /// 只读组ID
        public let readOnlyGroupId: String
        
        /// 只读组名称
        public let readOnlyGroupName: String
        
        /// 只读组的地域ID，与主实例相同
        public let regionId: String
        
        /// 只读组的可用区ID，与主实例相同
        public let zoneId: String
        
        /// 是否启动超时剔除功能，0-不开启剔除功能，1-开启剔除功能
        public let isOfflineDelay: Int64
        
        /// 启动超时剔除功能后，使用的超时阈值
        public let readOnlyMaxDelayTime: Int64
        
        /// 启动超时剔除功能后，至少只读组保留的只读副本数
        public let minReadOnlyInGroup: Int64
        
        /// 只读组vip
        public let vip: String
        
        /// 只读组vport
        public let vport: Int64
        
        /// 只读组私有网络ID
        public let vpcId: String
        
        /// 只读组私有网络子网ID
        public let subnetId: String
        
        /// 只读实例副本集合
        public let readOnlyInstanceSet: [ReadOnlyInstance]
        
        /// 只读组状态: 1-申请成功运行中，5-申请中
        public let status: Int64
        
        /// 主实例ID，形如mssql-sgeshe3th
        public let masterInstanceId: String
        
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
            case readOnlyInstanceSet = "ReadOnlyInstanceSet"
            case status = "Status"
            case masterInstanceId = "MasterInstanceId"
            case requestId = "RequestId"
        }
    }
}