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

extension Cdb {
    /// UpgradeCDBProxy请求参数结构体
    public struct UpgradeCDBProxyRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 数据库代理ID
        public let proxyGroupId: String
        
        /// 代理节点个数
        public let proxyCount: Int64
        
        /// 代理节点核数
        public let cpu: Int64
        
        /// 代理节点内存大小
        public let mem: Int64
        
        /// 重新负载均衡：auto（自动），manual（手动）
        public let reloadBalance: String
        
        /// 升级时间 nowTime（升级完成时）timeWindow（实例维护时间）
        public let upgradeTime: String
        
        public init (instanceId: String, proxyGroupId: String, proxyCount: Int64, cpu: Int64, mem: Int64, reloadBalance: String, upgradeTime: String) {
            self.instanceId = instanceId
            self.proxyGroupId = proxyGroupId
            self.proxyCount = proxyCount
            self.cpu = cpu
            self.mem = mem
            self.reloadBalance = reloadBalance
            self.upgradeTime = upgradeTime
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case proxyGroupId = "ProxyGroupId"
            case proxyCount = "ProxyCount"
            case cpu = "Cpu"
            case mem = "Mem"
            case reloadBalance = "ReloadBalance"
            case upgradeTime = "UpgradeTime"
        }
    }
    
    /// UpgradeCDBProxy返回参数结构体
    public struct UpgradeCDBProxyResponse: TCResponseModel {
        /// 异步处理ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncRequestId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }
    
    /// 升级数据库代理配置
    ///
    /// 调整数据库代理配置
    @inlinable
    public func upgradeCDBProxy(_ input: UpgradeCDBProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeCDBProxyResponse > {
        self.client.execute(action: "UpgradeCDBProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 升级数据库代理配置
    ///
    /// 调整数据库代理配置
    @inlinable
    public func upgradeCDBProxy(_ input: UpgradeCDBProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeCDBProxyResponse {
        try await self.client.execute(action: "UpgradeCDBProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
