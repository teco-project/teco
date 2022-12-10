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

extension Teo {
    /// 修改告警默认阈值
    ///
    /// 此接口（ModifyAlarmDefaultThreshold）用于修改告警默认阈值。
    @inlinable
    public func modifyAlarmDefaultThreshold(_ input: ModifyAlarmDefaultThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAlarmDefaultThresholdResponse > {
        self.client.execute(action: "ModifyAlarmDefaultThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改告警默认阈值
    ///
    /// 此接口（ModifyAlarmDefaultThreshold）用于修改告警默认阈值。
    @inlinable
    public func modifyAlarmDefaultThreshold(_ input: ModifyAlarmDefaultThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmDefaultThresholdResponse {
        try await self.client.execute(action: "ModifyAlarmDefaultThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAlarmDefaultThreshold请求参数结构体
    public struct ModifyAlarmDefaultThresholdRequest: TCRequestModel {
        /// 告警服务类型，取值有：
        /// <li>ddos：ddos告警服务。</li>
        public let serviceType: String
        
        /// 站点ID。
        public let zoneId: String
        
        /// 新的阈值，单位为Mbps，最小阈值为10。
        public let threshold: Int64
        
        /// 防护实体，如果是四层防护，防护实体为通道ID。如果是七层防护，防护实体为站点名称。
        public let entity: String?
        
        public init (serviceType: String, zoneId: String, threshold: Int64, entity: String?) {
            self.serviceType = serviceType
            self.zoneId = zoneId
            self.threshold = threshold
            self.entity = entity
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceType = "ServiceType"
            case zoneId = "ZoneId"
            case threshold = "Threshold"
            case entity = "Entity"
        }
    }
    
    /// ModifyAlarmDefaultThreshold返回参数结构体
    public struct ModifyAlarmDefaultThresholdResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
