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
    /// 停止模型加速任务
    @inlinable
    public func stopModelAccelerateTask(_ input: StopModelAccelerateTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopModelAccelerateTaskResponse > {
        self.client.execute(action: "StopModelAccelerateTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 停止模型加速任务
    @inlinable
    public func stopModelAccelerateTask(_ input: StopModelAccelerateTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopModelAccelerateTaskResponse {
        try await self.client.execute(action: "StopModelAccelerateTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopModelAccelerateTask请求参数结构体
    public struct StopModelAccelerateTaskRequest: TCRequestModel {
        /// 模型加速任务ID
        public let modelAccTaskId: String
        
        public init (modelAccTaskId: String) {
            self.modelAccTaskId = modelAccTaskId
        }
        
        enum CodingKeys: String, CodingKey {
            case modelAccTaskId = "ModelAccTaskId"
        }
    }
    
    /// StopModelAccelerateTask返回参数结构体
    public struct StopModelAccelerateTaskResponse: TCResponseModel {
        /// 模型加速任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccTaskId: String?
        
        /// 异步任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncTaskId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case modelAccTaskId = "ModelAccTaskId"
            case asyncTaskId = "AsyncTaskId"
            case requestId = "RequestId"
        }
    }
}
