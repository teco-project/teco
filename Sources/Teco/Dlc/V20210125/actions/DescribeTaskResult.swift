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

extension Dlc {
    /// DescribeTaskResult请求参数结构体
    public struct DescribeTaskResultRequest: TCRequestModel {
        /// 任务唯一ID
        public let taskId: String
        
        /// 上一次请求响应返回的分页信息。第一次可以不带，从头开始返回数据，每次返回MaxResults字段设置的数据量。
        public let nextToken: String?
        
        /// 返回结果的最大行数，范围0~1000，默认为1000.
        public let maxResults: Int64?
        
        public init (taskId: String, nextToken: String? = nil, maxResults: Int64? = nil) {
            self.taskId = taskId
            self.nextToken = nextToken
            self.maxResults = maxResults
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
        }
    }
    
    /// DescribeTaskResult返回参数结构体
    public struct DescribeTaskResultResponse: TCResponseModel {
        /// 查询的任务信息，返回为空表示输入任务ID对应的任务不存在。只有当任务状态为成功（2）的时候，才会返回任务的结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskInfo: TaskResultInfo?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskInfo = "TaskInfo"
            case requestId = "RequestId"
        }
    }
    
    /// 查询任务结果
    @inlinable
    public func describeTaskResult(_ input: DescribeTaskResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskResultResponse > {
        self.client.execute(action: "DescribeTaskResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询任务结果
    @inlinable
    public func describeTaskResult(_ input: DescribeTaskResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResultResponse {
        try await self.client.execute(action: "DescribeTaskResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
