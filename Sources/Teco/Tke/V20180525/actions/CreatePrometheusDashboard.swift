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
    /// CreatePrometheusDashboard请求参数结构体
    public struct CreatePrometheusDashboardRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String
        
        /// 面板组名称
        public let dashboardName: String
        
        /// 面板列表
        /// 每一项是一个grafana dashboard的json定义
        public let contents: [String]
        
        public init (instanceId: String, dashboardName: String, contents: [String]) {
            self.instanceId = instanceId
            self.dashboardName = dashboardName
            self.contents = contents
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dashboardName = "DashboardName"
            case contents = "Contents"
        }
    }
    
    /// CreatePrometheusDashboard返回参数结构体
    public struct CreatePrometheusDashboardResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建grafana监控面板
    @inlinable
    public func createPrometheusDashboard(_ input: CreatePrometheusDashboardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePrometheusDashboardResponse > {
        self.client.execute(action: "CreatePrometheusDashboard", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建grafana监控面板
    @inlinable
    public func createPrometheusDashboard(_ input: CreatePrometheusDashboardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusDashboardResponse {
        try await self.client.execute(action: "CreatePrometheusDashboard", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
