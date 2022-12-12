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

extension Antiddos {
    /// CreateIPAlarmThresholdConfig请求参数结构体
    public struct CreateIPAlarmThresholdConfigRequest: TCRequestModel {
        /// IP告警阈值配置列表
        public let ipAlarmThresholdConfigList: [IPAlarmThresholdRelation]
        
        public init (ipAlarmThresholdConfigList: [IPAlarmThresholdRelation]) {
            self.ipAlarmThresholdConfigList = ipAlarmThresholdConfigList
        }
        
        enum CodingKeys: String, CodingKey {
            case ipAlarmThresholdConfigList = "IpAlarmThresholdConfigList"
        }
    }
    
    /// CreateIPAlarmThresholdConfig返回参数结构体
    public struct CreateIPAlarmThresholdConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 设置单IP告警阈值配置
    @inlinable
    public func createIPAlarmThresholdConfig(_ input: CreateIPAlarmThresholdConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateIPAlarmThresholdConfigResponse > {
        self.client.execute(action: "CreateIPAlarmThresholdConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置单IP告警阈值配置
    @inlinable
    public func createIPAlarmThresholdConfig(_ input: CreateIPAlarmThresholdConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIPAlarmThresholdConfigResponse {
        try await self.client.execute(action: "CreateIPAlarmThresholdConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
