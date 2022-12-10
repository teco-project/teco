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

extension Tke {
    /// 获得节点升级当前的进度
    ///
    /// 获得节点升级当前的进度 
    @inlinable
    public func getUpgradeInstanceProgress(_ input: GetUpgradeInstanceProgressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetUpgradeInstanceProgressResponse > {
        self.client.execute(action: "GetUpgradeInstanceProgress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获得节点升级当前的进度
    ///
    /// 获得节点升级当前的进度 
    @inlinable
    public func getUpgradeInstanceProgress(_ input: GetUpgradeInstanceProgressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeInstanceProgressResponse {
        try await self.client.execute(action: "GetUpgradeInstanceProgress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetUpgradeInstanceProgress请求参数结构体
    public struct GetUpgradeInstanceProgressRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 最多获取多少个节点的进度
        public let limit: Int64?
        
        /// 从第几个节点开始获取进度
        public let offset: Int64?
        
        public init (clusterId: String, limit: Int64?, offset: Int64?) {
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// GetUpgradeInstanceProgress返回参数结构体
    public struct GetUpgradeInstanceProgressResponse: TCResponseModel {
        /// 升级节点总数
        public let total: Int64
        
        /// 已升级节点总数
        public let done: Int64
        
        /// 升级任务生命周期
        /// process 运行中
        /// paused 已停止
        /// pauing 正在停止
        /// done  已完成
        /// timeout 已超时
        /// aborted 已取消
        public let lifeState: String
        
        /// 各节点升级进度详情
        public let instances: [InstanceUpgradeProgressItem]
        
        /// 集群当前状态
        public let clusterStatus: InstanceUpgradeClusterStatus
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case done = "Done"
            case lifeState = "LifeState"
            case instances = "Instances"
            case clusterStatus = "ClusterStatus"
            case requestId = "RequestId"
        }
    }
}
