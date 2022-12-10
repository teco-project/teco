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

extension Tke {
    /// 集群节点升级
    ///
    /// 给集群的一批work节点进行升级 
    @inlinable
    public func upgradeClusterInstances(_ input: UpgradeClusterInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeClusterInstancesResponse > {
        self.client.execute(action: "UpgradeClusterInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 集群节点升级
    ///
    /// 给集群的一批work节点进行升级 
    @inlinable
    public func upgradeClusterInstances(_ input: UpgradeClusterInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeClusterInstancesResponse {
        try await self.client.execute(action: "UpgradeClusterInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpgradeClusterInstances请求参数结构体
    public struct UpgradeClusterInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// create 表示开始一次升级任务
        /// pause 表示停止任务
        /// resume表示继续任务
        /// abort表示终止任务
        public let operation: String
        
        /// 升级类型，只有Operation是create需要设置
        /// reset 大版本重装升级
        /// hot 小版本热升级
        /// major 大版本原地升级
        public let upgradeType: String?
        
        /// 需要升级的节点列表
        public let instanceIds: [String]?
        
        /// 当节点重新加入集群时候所使用的参数，参考添加已有节点接口
        public let resetParam: UpgradeNodeResetParam
        
        /// 是否忽略节点升级前检查
        public let skipPreCheck: Bool?
        
        /// 最大可容忍的不可用Pod比例
        public let maxNotReadyPercent: Float?
        
        public init (clusterId: String, operation: String, upgradeType: String?, instanceIds: [String]?, resetParam: UpgradeNodeResetParam, skipPreCheck: Bool?, maxNotReadyPercent: Float?) {
            self.clusterId = clusterId
            self.operation = operation
            self.upgradeType = upgradeType
            self.instanceIds = instanceIds
            self.resetParam = resetParam
            self.skipPreCheck = skipPreCheck
            self.maxNotReadyPercent = maxNotReadyPercent
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case operation = "Operation"
            case upgradeType = "UpgradeType"
            case instanceIds = "InstanceIds"
            case resetParam = "ResetParam"
            case skipPreCheck = "SkipPreCheck"
            case maxNotReadyPercent = "MaxNotReadyPercent"
        }
    }
    
    /// UpgradeClusterInstances返回参数结构体
    public struct UpgradeClusterInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}