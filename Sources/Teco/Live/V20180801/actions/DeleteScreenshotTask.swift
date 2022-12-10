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
    /// 删除截图任务
    ///
    /// 删除截图任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。
    @inlinable
    public func deleteScreenshotTask(_ input: DeleteScreenshotTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteScreenshotTaskResponse > {
        self.client.execute(action: "DeleteScreenshotTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除截图任务
    ///
    /// 删除截图任务配置。删除操作不影响正在运行当中的任务，仅对删除之后新的推流有效。
    @inlinable
    public func deleteScreenshotTask(_ input: DeleteScreenshotTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScreenshotTaskResponse {
        try await self.client.execute(action: "DeleteScreenshotTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteScreenshotTask请求参数结构体
    public struct DeleteScreenshotTaskRequest: TCRequestModel {
        /// 任务ID，CreateScreenshotTask返回。删除TaskId指定的截图任务。
        public let taskId: String
        
        public init (taskId: String) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// DeleteScreenshotTask返回参数结构体
    public struct DeleteScreenshotTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
