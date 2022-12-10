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

extension Ie {
    /// 获取编辑理解任务结果
    ///
    /// 获取编辑理解任务结果。
    @inlinable
    public func describeEditingTaskResult(_ input: DescribeEditingTaskResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEditingTaskResultResponse > {
        self.client.execute(action: "DescribeEditingTaskResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取编辑理解任务结果
    ///
    /// 获取编辑理解任务结果。
    @inlinable
    public func describeEditingTaskResult(_ input: DescribeEditingTaskResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEditingTaskResultResponse {
        try await self.client.execute(action: "DescribeEditingTaskResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEditingTaskResult请求参数结构体
    public struct DescribeEditingTaskResultRequest: TCRequestModel {
        /// 编辑任务 ID。
        public let taskId: String
        
        public init (taskId: String) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// DescribeEditingTaskResult返回参数结构体
    public struct DescribeEditingTaskResultResponse: TCResponseModel {
        /// 编辑任务结果信息。
        public let taskResult: EditingTaskResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskResult = "TaskResult"
            case requestId = "RequestId"
        }
    }
}
