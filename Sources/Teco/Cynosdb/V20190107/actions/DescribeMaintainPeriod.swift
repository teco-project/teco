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

extension Cynosdb {
    /// 查询实例维护时间窗
    @inlinable
    public func describeMaintainPeriod(_ input: DescribeMaintainPeriodRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMaintainPeriodResponse > {
        self.client.execute(action: "DescribeMaintainPeriod", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例维护时间窗
    @inlinable
    public func describeMaintainPeriod(_ input: DescribeMaintainPeriodRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaintainPeriodResponse {
        try await self.client.execute(action: "DescribeMaintainPeriod", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMaintainPeriod请求参数结构体
    public struct DescribeMaintainPeriodRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeMaintainPeriod返回参数结构体
    public struct DescribeMaintainPeriodResponse: TCResponseModel {
        /// 维护week days
        public let maintainWeekDays: [String]
        
        /// 维护开始时间，单位秒
        public let maintainStartTime: Int64
        
        /// 维护时长，单位秒
        public let maintainDuration: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case maintainWeekDays = "MaintainWeekDays"
            case maintainStartTime = "MaintainStartTime"
            case maintainDuration = "MaintainDuration"
            case requestId = "RequestId"
        }
    }
}
