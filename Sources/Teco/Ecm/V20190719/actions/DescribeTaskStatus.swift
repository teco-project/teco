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

extension Ecm {
    /// 获取任务状态
    ///
    /// 本接口(DescribeTaskStatus)用于获取异步任务状态
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskStatusResponse > {
        self.client.execute(action: "DescribeTaskStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取任务状态
    ///
    /// 本接口(DescribeTaskStatus)用于获取异步任务状态
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.client.execute(action: "DescribeTaskStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTaskStatus请求参数结构体
    public struct DescribeTaskStatusRequest: TCRequestModel {
        /// 任务描述
        public let taskSet: [TaskInput]
        
        public init (taskSet: [TaskInput]) {
            self.taskSet = taskSet
        }
        
        enum CodingKeys: String, CodingKey {
            case taskSet = "TaskSet"
        }
    }
    
    /// DescribeTaskStatus返回参数结构体
    public struct DescribeTaskStatusResponse: TCResponseModel {
        /// 任务描述
        public let taskSet: [TaskOutput]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskSet = "TaskSet"
            case requestId = "RequestId"
        }
    }
}