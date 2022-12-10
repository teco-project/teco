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

extension Ckafka {
    /// 修改Datahub任务
    ///
    /// 修改Datahub任务
    @inlinable
    public func modifyDatahubTask(_ input: ModifyDatahubTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDatahubTaskResponse > {
        self.client.execute(action: "ModifyDatahubTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改Datahub任务
    ///
    /// 修改Datahub任务
    @inlinable
    public func modifyDatahubTask(_ input: ModifyDatahubTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatahubTaskResponse {
        try await self.client.execute(action: "ModifyDatahubTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDatahubTask请求参数结构体
    public struct ModifyDatahubTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: String
        
        /// 任务名称
        public let taskName: String?
        
        public init (taskId: String, taskName: String?) {
            self.taskId = taskId
            self.taskName = taskName
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case taskName = "TaskName"
        }
    }
    
    /// ModifyDatahubTask返回参数结构体
    public struct ModifyDatahubTaskResponse: TCResponseModel {
        /// 任务id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DatahubTaskIdRes
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}