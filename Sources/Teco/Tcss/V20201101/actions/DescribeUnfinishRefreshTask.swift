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

extension Tcss {
    /// DescribeUnfinishRefreshTask请求参数结构体
    public struct DescribeUnfinishRefreshTaskRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeUnfinishRefreshTask返回参数结构体
    public struct DescribeUnfinishRefreshTaskResponse: TCResponseModel {
        /// 返回最近的一次任务ID
        public let taskId: UInt64
        
        /// 任务状态，为Task_New,Task_Running,Task_Finish,Task_Error,Task_NoExist.Task_New,Task_Running表示有任务存在，不允许新下发
        public let taskStatus: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case taskStatus = "TaskStatus"
            case requestId = "RequestId"
        }
    }
    
    /// 查询未完成的刷新资产任务信息
    @inlinable
    public func describeUnfinishRefreshTask(_ input: DescribeUnfinishRefreshTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUnfinishRefreshTaskResponse > {
        self.client.execute(action: "DescribeUnfinishRefreshTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询未完成的刷新资产任务信息
    @inlinable
    public func describeUnfinishRefreshTask(_ input: DescribeUnfinishRefreshTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnfinishRefreshTaskResponse {
        try await self.client.execute(action: "DescribeUnfinishRefreshTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
