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

extension Cdb {
    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable
    public func describeRollbackTaskDetail(_ input: DescribeRollbackTaskDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRollbackTaskDetailResponse > {
        self.client.execute(action: "DescribeRollbackTaskDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable
    public func describeRollbackTaskDetail(_ input: DescribeRollbackTaskDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackTaskDetailResponse {
        try await self.client.execute(action: "DescribeRollbackTaskDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRollbackTaskDetail请求参数结构体
    public struct DescribeRollbackTaskDetailRequest: TCRequestModel {
        /// 实例 ID。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872)。
        public let instanceId: String
        
        /// 异步任务 ID。
        public let asyncRequestId: String?
        
        /// 分页参数，每次请求返回的记录数。默认值为 20，最大值为 100。
        public let limit: Int64?
        
        /// 分页偏移量。默认为 0。
        public let offset: Int64?
        
        public init (instanceId: String, asyncRequestId: String?, limit: Int64?, offset: Int64?) {
            self.instanceId = instanceId
            self.asyncRequestId = asyncRequestId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case asyncRequestId = "AsyncRequestId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeRollbackTaskDetail返回参数结构体
    public struct DescribeRollbackTaskDetailResponse: TCResponseModel {
        /// 符合条件的记录总数。
        public let totalCount: Int64
        
        /// 回档任务详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [RollbackTask]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}