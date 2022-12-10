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

extension Es {
    /// 更新智能运维配置
    ///
    /// 更新智能运维配置
    @inlinable
    public func updateDiagnoseSettings(_ input: UpdateDiagnoseSettingsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateDiagnoseSettingsResponse > {
        self.client.execute(action: "UpdateDiagnoseSettings", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新智能运维配置
    ///
    /// 更新智能运维配置
    @inlinable
    public func updateDiagnoseSettings(_ input: UpdateDiagnoseSettingsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDiagnoseSettingsResponse {
        try await self.client.execute(action: "UpdateDiagnoseSettings", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateDiagnoseSettings请求参数结构体
    public struct UpdateDiagnoseSettingsRequest: TCRequestModel {
        /// ES实例ID
        public let instanceId: String
        
        /// 0：开启智能运维；-1：关闭智能运维
        public let status: Int64?
        
        /// 智能运维每天定时巡检时间
        public let cronTime: String?
        
        public init (instanceId: String, status: Int64?, cronTime: String?) {
            self.instanceId = instanceId
            self.status = status
            self.cronTime = cronTime
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case status = "Status"
            case cronTime = "CronTime"
        }
    }
    
    /// UpdateDiagnoseSettings返回参数结构体
    public struct UpdateDiagnoseSettingsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}