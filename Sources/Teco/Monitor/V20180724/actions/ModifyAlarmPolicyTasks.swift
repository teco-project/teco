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

extension Monitor {
    /// 修改告警策略的触发任务
    ///
    /// 云监控告警修改告警策略的触发任务，TriggerTasks字段放触发任务列表，TriggerTasks传空数组时，代表解绑该策略的所有触发任务。
    @inlinable
    public func modifyAlarmPolicyTasks(_ input: ModifyAlarmPolicyTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAlarmPolicyTasksResponse > {
        self.client.execute(action: "ModifyAlarmPolicyTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改告警策略的触发任务
    ///
    /// 云监控告警修改告警策略的触发任务，TriggerTasks字段放触发任务列表，TriggerTasks传空数组时，代表解绑该策略的所有触发任务。
    @inlinable
    public func modifyAlarmPolicyTasks(_ input: ModifyAlarmPolicyTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyTasksResponse {
        try await self.client.execute(action: "ModifyAlarmPolicyTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAlarmPolicyTasks请求参数结构体
    public struct ModifyAlarmPolicyTasksRequest: TCRequestModel {
        /// 模块名，这里填“monitor”
        public let module: String
        
        /// 告警策略 ID
        public let policyId: String
        
        /// 告警策略触发任务列表，空数据代表解绑
        public let triggerTasks: [AlarmPolicyTriggerTask]?
        
        public init (module: String, policyId: String, triggerTasks: [AlarmPolicyTriggerTask]?) {
            self.module = module
            self.policyId = policyId
            self.triggerTasks = triggerTasks
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
            case triggerTasks = "TriggerTasks"
        }
    }
    
    /// ModifyAlarmPolicyTasks返回参数结构体
    public struct ModifyAlarmPolicyTasksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}