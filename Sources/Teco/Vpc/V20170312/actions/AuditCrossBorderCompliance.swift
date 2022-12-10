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

extension Vpc {
    /// 合规化审批
    ///
    /// 本接口（AuditCrossBorderCompliance）用于服务商操作合规化资质审批。
    /// * 服务商只能操作提交到本服务商的审批单，后台会校验身份。即只授权给服务商的`APPID` 调用本接口。
    /// * `APPROVED` 状态的审批单，可以再次操作为 `DENY`；`DENY` 状态的审批单，也可以再次操作为 `APPROVED`。
    @inlinable
    public func auditCrossBorderCompliance(_ input: AuditCrossBorderComplianceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AuditCrossBorderComplianceResponse > {
        self.client.execute(action: "AuditCrossBorderCompliance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 合规化审批
    ///
    /// 本接口（AuditCrossBorderCompliance）用于服务商操作合规化资质审批。
    /// * 服务商只能操作提交到本服务商的审批单，后台会校验身份。即只授权给服务商的`APPID` 调用本接口。
    /// * `APPROVED` 状态的审批单，可以再次操作为 `DENY`；`DENY` 状态的审批单，也可以再次操作为 `APPROVED`。
    @inlinable
    public func auditCrossBorderCompliance(_ input: AuditCrossBorderComplianceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuditCrossBorderComplianceResponse {
        try await self.client.execute(action: "AuditCrossBorderCompliance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AuditCrossBorderCompliance请求参数结构体
    public struct AuditCrossBorderComplianceRequest: TCRequestModel {
        /// 服务商, 可选值：`UNICOM`。
        public let serviceProvider: String
        
        /// 表单唯一`ID`。
        public let complianceId: UInt64
        
        /// 通过：`APPROVED `，拒绝：`DENY`。
        public let auditBehavior: String
        
        public init (serviceProvider: String, complianceId: UInt64, auditBehavior: String) {
            self.serviceProvider = serviceProvider
            self.complianceId = complianceId
            self.auditBehavior = auditBehavior
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceProvider = "ServiceProvider"
            case complianceId = "ComplianceId"
            case auditBehavior = "AuditBehavior"
        }
    }
    
    /// AuditCrossBorderCompliance返回参数结构体
    public struct AuditCrossBorderComplianceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
