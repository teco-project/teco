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

extension Tcss {
    /// 运行时停止木马查杀任务
    ///
    /// 运行时停止木马查杀任务
    @inlinable
    public func stopVirusScanTask(_ input: StopVirusScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopVirusScanTaskResponse > {
        self.client.execute(action: "StopVirusScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时停止木马查杀任务
    ///
    /// 运行时停止木马查杀任务
    @inlinable
    public func stopVirusScanTask(_ input: StopVirusScanTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopVirusScanTaskResponse {
        try await self.client.execute(action: "StopVirusScanTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopVirusScanTask请求参数结构体
    public struct StopVirusScanTaskRequest: TCRequestModel {
        /// 任务ID
        public let taskId: String
        
        /// 需要停止的容器id 为空默认停止整个任务
        public let containerIds: [String]?
        
        public init (taskId: String, containerIds: [String]?) {
            self.taskId = taskId
            self.containerIds = containerIds
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case containerIds = "ContainerIds"
        }
    }
    
    /// StopVirusScanTask返回参数结构体
    public struct StopVirusScanTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}