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
    /// ModifyAlarmPolicyNotice请求参数结构体
    public struct ModifyAlarmPolicyNoticeRequest: TCRequestModel {
        /// 模块名，这里填“monitor”。
        public let module: String
        
        /// 告警策略 ID，如果该参数与PolicyIds参数同时存在，则以PolicyIds为准。
        public let policyId: String?
        
        /// 告警通知模板 ID 列表。
        public let noticeIds: [String]?
        
        /// 告警策略ID数组，支持给多个告警策略批量绑定通知模板。最多30个。
        public let policyIds: [String]?
        
        public init (module: String, policyId: String? = nil, noticeIds: [String]? = nil, policyIds: [String]? = nil) {
            self.module = module
            self.policyId = policyId
            self.noticeIds = noticeIds
            self.policyIds = policyIds
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case policyId = "PolicyId"
            case noticeIds = "NoticeIds"
            case policyIds = "PolicyIds"
        }
    }
    
    /// ModifyAlarmPolicyNotice返回参数结构体
    public struct ModifyAlarmPolicyNoticeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改告警策略绑定的告警通知模板
    ///
    /// 云监控告警修改告警策略绑定的告警通知模板
    @inlinable
    public func modifyAlarmPolicyNotice(_ input: ModifyAlarmPolicyNoticeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAlarmPolicyNoticeResponse > {
        self.client.execute(action: "ModifyAlarmPolicyNotice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改告警策略绑定的告警通知模板
    ///
    /// 云监控告警修改告警策略绑定的告警通知模板
    @inlinable
    public func modifyAlarmPolicyNotice(_ input: ModifyAlarmPolicyNoticeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmPolicyNoticeResponse {
        try await self.client.execute(action: "ModifyAlarmPolicyNotice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
