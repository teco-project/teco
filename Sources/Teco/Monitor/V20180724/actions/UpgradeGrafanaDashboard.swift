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

extension Monitor {
    /// UpgradeGrafanaDashboard请求参数结构体
    public struct UpgradeGrafanaDashboardRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        /// Prometheus 集成项 Code，升级对应的 Dashboard，取值如下：
        /// <li>spring_mvc</li>
        /// <li>mysql</li>
        /// <li>go</li>
        /// <li>redis</li>
        /// <li>jvm</li>
        /// <li>pgsql</li>
        /// <li>mongo</li>
        /// <li>kafka</li>
        /// <li>es</li>
        /// <li>flink</li>
        /// <li>blackbox</li>
        /// <li>consule</li>
        /// <li>memcached</li>
        /// <li>zk</li>
        /// <li>tps</li>
        /// <li>istio</li>
        /// <li>etcd</li>
        public let integrationCodes: [String]?
        
        public init (instanceId: String, integrationCodes: [String]? = nil) {
            self.instanceId = instanceId
            self.integrationCodes = integrationCodes
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case integrationCodes = "IntegrationCodes"
        }
    }
    
    /// UpgradeGrafanaDashboard返回参数结构体
    public struct UpgradeGrafanaDashboardResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 升级 Grafana Dashboard
    @inlinable
    public func upgradeGrafanaDashboard(_ input: UpgradeGrafanaDashboardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeGrafanaDashboardResponse > {
        self.client.execute(action: "UpgradeGrafanaDashboard", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 升级 Grafana Dashboard
    @inlinable
    public func upgradeGrafanaDashboard(_ input: UpgradeGrafanaDashboardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeGrafanaDashboardResponse {
        try await self.client.execute(action: "UpgradeGrafanaDashboard", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
