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

extension Ckafka {
    /// 查询Datahub任务信息
    @inlinable
    public func describeDatahubTask(_ input: DescribeDatahubTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDatahubTaskResponse > {
        self.client.execute(action: "DescribeDatahubTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Datahub任务信息
    @inlinable
    public func describeDatahubTask(_ input: DescribeDatahubTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatahubTaskResponse {
        try await self.client.execute(action: "DescribeDatahubTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDatahubTask请求参数结构体
    public struct DescribeDatahubTaskRequest: TCRequestModel {
        /// 任务id
        public let taskId: String
        
        public init (taskId: String) {
            self.taskId = taskId
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
    
    /// DescribeDatahubTask返回参数结构体
    public struct DescribeDatahubTaskResponse: TCResponseModel {
        /// 返回结果
        public let result: DescribeDatahubTaskRes
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
