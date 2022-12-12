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
    /// RecycleReadOnlyGroup请求参数结构体
    public struct RecycleReadOnlyGroupRequest: TCRequestModel {
        /// 主实例的ID
        public let instanceId: String
        
        /// 只读组的ID
        public let readOnlyGroupId: String
        
        public init (instanceId: String, readOnlyGroupId: String) {
            self.instanceId = instanceId
            self.readOnlyGroupId = readOnlyGroupId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case readOnlyGroupId = "ReadOnlyGroupId"
        }
    }
    
    /// RecycleReadOnlyGroup返回参数结构体
    public struct RecycleReadOnlyGroupResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
    
    /// 立即回收只读组的资源
    ///
    /// 本接口（RecycleReadOnlyGroup）立即回收只读组的资源，只读组占用的vip等资源将立即释放且不可找回。
    @inlinable
    public func recycleReadOnlyGroup(_ input: RecycleReadOnlyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RecycleReadOnlyGroupResponse > {
        self.client.execute(action: "RecycleReadOnlyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 立即回收只读组的资源
    ///
    /// 本接口（RecycleReadOnlyGroup）立即回收只读组的资源，只读组占用的vip等资源将立即释放且不可找回。
    @inlinable
    public func recycleReadOnlyGroup(_ input: RecycleReadOnlyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecycleReadOnlyGroupResponse {
        try await self.client.execute(action: "RecycleReadOnlyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
