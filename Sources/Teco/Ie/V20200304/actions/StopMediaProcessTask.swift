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

extension Ie {
    /// 停止编辑处理任务
    ///
    /// 用于停止正在进行中的编辑处理任务。
    @inlinable
    public func stopMediaProcessTask(_ input: StopMediaProcessTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopMediaProcessTaskResponse > {
        self.client.execute(action: "StopMediaProcessTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 停止编辑处理任务
    ///
    /// 用于停止正在进行中的编辑处理任务。
    @inlinable
    public func stopMediaProcessTask(_ input: StopMediaProcessTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMediaProcessTaskResponse {
        try await self.client.execute(action: "StopMediaProcessTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopMediaProcessTask请求参数结构体
    public struct StopMediaProcessTaskRequest: TCRequestModel {
        /// 编辑处理任务ID。
        public let taskId: String
        
        public init (taskId: String) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// StopMediaProcessTask返回参数结构体
    public struct StopMediaProcessTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}