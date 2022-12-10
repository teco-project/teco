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

extension Tione {
    /// 增量修改模型服务
    ///
    /// 增量更新在线推理服务的部分配置，不更新的配置项不需要传入
    @inlinable
    public func modifyModelServicePartialConfig(_ input: ModifyModelServicePartialConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyModelServicePartialConfigResponse > {
        self.client.execute(action: "ModifyModelServicePartialConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 增量修改模型服务
    ///
    /// 增量更新在线推理服务的部分配置，不更新的配置项不需要传入
    @inlinable
    public func modifyModelServicePartialConfig(_ input: ModifyModelServicePartialConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModelServicePartialConfigResponse {
        try await self.client.execute(action: "ModifyModelServicePartialConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyModelServicePartialConfig请求参数结构体
    public struct ModifyModelServicePartialConfigRequest: TCRequestModel {
        /// 在线推理服务Id，需已存在
        public let serviceId: String
        
        /// 更新后服务不重启，定时停止的配置
        public let scheduledAction: ScheduledAction
        
        /// 更新后服务不重启，服务对应限流限频配置
        public let serviceLimit: ServiceLimit
        
        public init (serviceId: String, scheduledAction: ScheduledAction, serviceLimit: ServiceLimit) {
            self.serviceId = serviceId
            self.scheduledAction = scheduledAction
            self.serviceLimit = serviceLimit
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case scheduledAction = "ScheduledAction"
            case serviceLimit = "ServiceLimit"
        }
    }
    
    /// ModifyModelServicePartialConfig返回参数结构体
    public struct ModifyModelServicePartialConfigResponse: TCResponseModel {
        /// 被修改后的服务配置
        public let service: Service
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case requestId = "RequestId"
        }
    }
}
