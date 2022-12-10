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

extension Sqlserver {
    /// 修改可维护时间窗
    ///
    /// 本接口（ModifyMaintenanceSpan）用于修改实例的可维护时间窗
    @inlinable
    public func modifyMaintenanceSpan(_ input: ModifyMaintenanceSpanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMaintenanceSpanResponse > {
        self.client.execute(action: "ModifyMaintenanceSpan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改可维护时间窗
    ///
    /// 本接口（ModifyMaintenanceSpan）用于修改实例的可维护时间窗
    @inlinable
    public func modifyMaintenanceSpan(_ input: ModifyMaintenanceSpanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMaintenanceSpanResponse {
        try await self.client.execute(action: "ModifyMaintenanceSpan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyMaintenanceSpan请求参数结构体
    public struct ModifyMaintenanceSpanRequest: TCRequestModel {
        /// 实例ID，形如mssql-k8voqdlz
        public let instanceId: String
        
        /// 以周为单位，表示允许周几维护，例如：[1,2,3,4,5,6,7]表示周一到周日均为可维护日，本参数不填，则不修改此值。
        public let weekly: [Int64]?
        
        /// 每天可维护的开始时间，例如：10:24标识可维护时间窗10点24分开始，本参数不填，则不修改此值。
        public let startTime: String?
        
        /// 每天可维护的持续时间，单位是h，例如：1 表示从可维护的开始时间起持续1小时，本参数不填，则不修改此值。
        public let span: UInt64?
        
        public init (instanceId: String, weekly: [Int64]?, startTime: String?, span: UInt64?) {
            self.instanceId = instanceId
            self.weekly = weekly
            self.startTime = startTime
            self.span = span
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case weekly = "Weekly"
            case startTime = "StartTime"
            case span = "Span"
        }
    }
    
    /// ModifyMaintenanceSpan返回参数结构体
    public struct ModifyMaintenanceSpanResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
