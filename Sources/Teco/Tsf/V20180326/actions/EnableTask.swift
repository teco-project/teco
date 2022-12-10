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

extension Tsf {
    /// 启用任务
    @inlinable
    public func enableTask(_ input: EnableTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableTaskResponse > {
        self.client.execute(action: "EnableTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启用任务
    @inlinable
    public func enableTask(_ input: EnableTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableTaskResponse {
        try await self.client.execute(action: "EnableTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// EnableTask请求参数结构体
    public struct EnableTaskRequest: TCRequestModel {
        /// 启用任务
        public let taskId: String
        
        public init (taskId: String) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// EnableTask返回参数结构体
    public struct EnableTaskResponse: TCResponseModel {
        /// 操作成功or失败
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
