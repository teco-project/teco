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

extension Ckafka {
    /// 创建cdc-ckafka集群
    ///
    /// 用于cdc的专用ckafka集群
    @inlinable
    public func createCdcCluster(_ input: CreateCdcClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCdcClusterResponse > {
        self.client.execute(action: "CreateCdcCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建cdc-ckafka集群
    ///
    /// 用于cdc的专用ckafka集群
    @inlinable
    public func createCdcCluster(_ input: CreateCdcClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCdcClusterResponse {
        try await self.client.execute(action: "CreateCdcCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCdcCluster请求参数结构体
    public struct CreateCdcClusterRequest: TCRequestModel {
        /// cdc的id
        public let cdcId: String
        
        /// vpcId,一个地域只有唯一一个vpcid用于CDC
        public let cdcVpcId: String
        
        /// 每个CDC集群有唯一一个子网ID
        public let cdcSubnetId: String
        
        /// 所在可用区ID
        public let zoneId: Int64
        
        /// cdc集群的总带宽
        public let bandwidth: Int64
        
        /// cdc集群的总磁盘
        public let diskSize: Int64
        
        /// 数据盘类型
        public let diskType: String
        
        /// 系统盘类型
        public let systemDiskType: String
        
        public init (cdcId: String, cdcVpcId: String, cdcSubnetId: String, zoneId: Int64, bandwidth: Int64, diskSize: Int64, diskType: String, systemDiskType: String) {
            self.cdcId = cdcId
            self.cdcVpcId = cdcVpcId
            self.cdcSubnetId = cdcSubnetId
            self.zoneId = zoneId
            self.bandwidth = bandwidth
            self.diskSize = diskSize
            self.diskType = diskType
            self.systemDiskType = systemDiskType
        }
        
        enum CodingKeys: String, CodingKey {
            case cdcId = "CdcId"
            case cdcVpcId = "CdcVpcId"
            case cdcSubnetId = "CdcSubnetId"
            case zoneId = "ZoneId"
            case bandwidth = "Bandwidth"
            case diskSize = "DiskSize"
            case diskType = "DiskType"
            case systemDiskType = "SystemDiskType"
        }
    }
    
    /// CreateCdcCluster返回参数结构体
    public struct CreateCdcClusterResponse: TCResponseModel {
        /// 无
        public let result: CdcClusterResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
