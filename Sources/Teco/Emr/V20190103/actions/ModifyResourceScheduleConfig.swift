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

extension Emr {
    /// ModifyResourceScheduleConfig请求参数结构体
    public struct ModifyResourceScheduleConfigRequest: TCRequestModel {
        /// emr集群的英文id
        public let instanceId: String
        
        /// 业务标识，fair表示编辑公平的配置项，fairPlan表示编辑执行计划，capacity表示编辑容量的配置项
        public let key: String
        
        /// 修改后的模块消息
        public let value: String
        
        public init (instanceId: String, key: String, value: String) {
            self.instanceId = instanceId
            self.key = key
            self.value = value
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case key = "Key"
            case value = "Value"
        }
    }
    
    /// ModifyResourceScheduleConfig返回参数结构体
    public struct ModifyResourceScheduleConfigResponse: TCResponseModel {
        /// true为草稿，表示还没有刷新资源池
        public let isDraft: Bool
        
        /// 校验错误信息，如果不为空，则说明校验失败，配置没有成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?
        
        /// 返回数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case isDraft = "IsDraft"
            case errorMsg = "ErrorMsg"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 修改YARN资源调度的资源配置
    @inlinable
    public func modifyResourceScheduleConfig(_ input: ModifyResourceScheduleConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyResourceScheduleConfigResponse > {
        self.client.execute(action: "ModifyResourceScheduleConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改YARN资源调度的资源配置
    @inlinable
    public func modifyResourceScheduleConfig(_ input: ModifyResourceScheduleConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourceScheduleConfigResponse {
        try await self.client.execute(action: "ModifyResourceScheduleConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
