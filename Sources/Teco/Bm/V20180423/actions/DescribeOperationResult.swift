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

extension Bm {
    /// 查询异步任务状态
    ///
    /// 获取异步操作状态的完成状态
    @inlinable
    public func describeOperationResult(_ input: DescribeOperationResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOperationResultResponse > {
        self.client.execute(action: "DescribeOperationResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询异步任务状态
    ///
    /// 获取异步操作状态的完成状态
    @inlinable
    public func describeOperationResult(_ input: DescribeOperationResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOperationResultResponse {
        try await self.client.execute(action: "DescribeOperationResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeOperationResult请求参数结构体
    public struct DescribeOperationResultRequest: TCRequestModel {
        /// 异步任务ID
        public let taskId: UInt64
        
        public init (taskId: UInt64) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// DescribeOperationResult返回参数结构体
    public struct DescribeOperationResultResponse: TCResponseModel {
        /// 任务的整体状态，取值如下：<br>
        /// 1：成功<br>
        /// 2：失败<br>
        /// 3：部分成功，部分失败<br>
        /// 4：未完成<br>
        /// 5：部分成功，部分未完成<br>
        /// 6：部分未完成，部分失败<br>
        /// 7：部分未完成，部分失败，部分成功
        public let taskStatus: UInt64
        
        /// 各实例对应任务的状态ID
        public let subtaskStatusSet: [SubtaskStatus]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskStatus = "TaskStatus"
            case subtaskStatusSet = "SubtaskStatusSet"
            case requestId = "RequestId"
        }
    }
}
