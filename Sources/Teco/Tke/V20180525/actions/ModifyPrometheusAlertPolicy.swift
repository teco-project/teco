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
    /// 修改2.0实例告警策略
    ///
    /// 修改2.0实例告警策略
    @inlinable
    public func modifyPrometheusAlertPolicy(_ input: ModifyPrometheusAlertPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPrometheusAlertPolicyResponse > {
        self.client.execute(action: "ModifyPrometheusAlertPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改2.0实例告警策略
    ///
    /// 修改2.0实例告警策略
    @inlinable
    public func modifyPrometheusAlertPolicy(_ input: ModifyPrometheusAlertPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusAlertPolicyResponse {
        try await self.client.execute(action: "ModifyPrometheusAlertPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyPrometheusAlertPolicy请求参数结构体
    public struct ModifyPrometheusAlertPolicyRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String
        
        /// 告警配置
        public let alertRule: PrometheusAlertPolicyItem
        
        public init (instanceId: String, alertRule: PrometheusAlertPolicyItem) {
            self.instanceId = instanceId
            self.alertRule = alertRule
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case alertRule = "AlertRule"
        }
    }
    
    /// ModifyPrometheusAlertPolicy返回参数结构体
    public struct ModifyPrometheusAlertPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}