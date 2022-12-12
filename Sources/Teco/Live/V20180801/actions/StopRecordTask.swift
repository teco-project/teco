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

extension Live {
    /// StopRecordTask请求参数结构体
    public struct StopRecordTaskRequest: TCRequestModel {
        /// 录制任务ID。
        public let taskId: String
        
        public init (taskId: String) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// StopRecordTask返回参数结构体
    public struct StopRecordTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 终止录制任务（新）
    ///
    /// 提前结束录制，中止运行中的录制任务并生成录制文件。任务被成功终止后，本次任务将不再启动。
    @inlinable
    public func stopRecordTask(_ input: StopRecordTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopRecordTaskResponse > {
        self.client.execute(action: "StopRecordTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 终止录制任务（新）
    ///
    /// 提前结束录制，中止运行中的录制任务并生成录制文件。任务被成功终止后，本次任务将不再启动。
    @inlinable
    public func stopRecordTask(_ input: StopRecordTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopRecordTaskResponse {
        try await self.client.execute(action: "StopRecordTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
