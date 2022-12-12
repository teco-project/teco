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

extension Ams {
    /// CancelTask请求参数结构体
    public struct CancelTaskRequest: TCRequestModel {
        /// 该字段表示创建音频审核任务后返回的任务ID（在Results参数中），用于标识需要取消的审核任务。
        public let taskId: String
        
        public init (taskId: String) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// CancelTask返回参数结构体
    public struct CancelTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 取消任务
    ///
    /// 可使用该接口取消审核任务。请求成功后，接口返回RequestId则说明取消成功。<br>默认接口请求频率限制：**20次/秒**。
    @inlinable
    public func cancelTask(_ input: CancelTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelTaskResponse > {
        self.client.execute(action: "CancelTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 取消任务
    ///
    /// 可使用该接口取消审核任务。请求成功后，接口返回RequestId则说明取消成功。<br>默认接口请求频率限制：**20次/秒**。
    @inlinable
    public func cancelTask(_ input: CancelTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTaskResponse {
        try await self.client.execute(action: "CancelTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
