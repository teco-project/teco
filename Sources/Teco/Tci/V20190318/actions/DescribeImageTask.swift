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

extension Tci {
    /// 拉取任务详情
    ///
    /// 拉取任务详情
    @inlinable
    public func describeImageTask(_ input: DescribeImageTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageTaskResponse > {
        self.client.execute(action: "DescribeImageTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 拉取任务详情
    ///
    /// 拉取任务详情
    @inlinable
    public func describeImageTask(_ input: DescribeImageTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageTaskResponse {
        try await self.client.execute(action: "DescribeImageTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeImageTask请求参数结构体
    public struct DescribeImageTaskRequest: TCRequestModel {
        /// 任务标识符
        public let jobId: Int64
        
        /// 限制数目
        public let limit: Int64?
        
        /// 偏移量
        public let offset: Int64?
        
        public init (jobId: Int64, limit: Int64?, offset: Int64?) {
            self.jobId = jobId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeImageTask返回参数结构体
    public struct DescribeImageTaskResponse: TCResponseModel {
        /// 任务处理结果
        public let resultSet: [ImageTaskResult]
        
        /// 任务唯一标识
        public let jobId: Int64
        
        /// 任务执行进度
        public let progress: Int64
        
        /// 任务结果数目
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resultSet = "ResultSet"
            case jobId = "JobId"
            case progress = "Progress"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}