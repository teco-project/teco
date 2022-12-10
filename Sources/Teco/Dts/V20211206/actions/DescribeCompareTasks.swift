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

extension Dts {
    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable
    public func describeCompareTasks(_ input: DescribeCompareTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCompareTasksResponse > {
        self.client.execute(action: "DescribeCompareTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable
    public func describeCompareTasks(_ input: DescribeCompareTasksRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompareTasksResponse {
        try await self.client.execute(action: "DescribeCompareTasks", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCompareTasks请求参数结构体
    public struct DescribeCompareTasksRequest: TCRequestModel {
        /// 迁移任务 Id
        public let jobId: String
        
        /// 分页设置，表示每页显示多少条任务，默认为 20
        public let limit: UInt64?
        
        /// 分页偏移量
        public let offset: UInt64?
        
        public init (jobId: String, limit: UInt64?, offset: UInt64?) {
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
    
    /// DescribeCompareTasks返回参数结构体
    public struct DescribeCompareTasksResponse: TCResponseModel {
        /// 数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 一致性校验列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [CompareTaskItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}
