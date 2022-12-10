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

extension Tcss {
    /// 查询workload类型的影响范围
    ///
    /// 查询workload类型的影响范围，返回workload列表
    @inlinable
    public func describeAffectedWorkloadList(_ input: DescribeAffectedWorkloadListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAffectedWorkloadListResponse > {
        self.client.execute(action: "DescribeAffectedWorkloadList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询workload类型的影响范围
    ///
    /// 查询workload类型的影响范围，返回workload列表
    @inlinable
    public func describeAffectedWorkloadList(_ input: DescribeAffectedWorkloadListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAffectedWorkloadListResponse {
        try await self.client.execute(action: "DescribeAffectedWorkloadList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAffectedWorkloadList请求参数结构体
    public struct DescribeAffectedWorkloadListRequest: TCRequestModel {
        /// 唯一的检测项的ID
        public let checkItemId: Int64
        
        /// 偏移量
        public let offset: UInt64?
        
        /// 每次查询的最大记录数量
        public let limit: UInt64?
        
        /// Name - String
        /// Name 可取值：WorkloadType,ClusterId
        public let filters: [ComplianceFilters]?
        
        /// 排序字段
        public let by: String?
        
        /// 排序方式 asc,desc
        public let order: String?
        
        public init (checkItemId: Int64, offset: UInt64?, limit: UInt64?, filters: [ComplianceFilters]?, by: String?, order: String?) {
            self.checkItemId = checkItemId
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.by = by
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case checkItemId = "CheckItemId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }
    
    /// DescribeAffectedWorkloadList返回参数结构体
    public struct DescribeAffectedWorkloadListResponse: TCResponseModel {
        /// 受影响的workload列表数量
        public let totalCount: UInt64
        
        /// 受影响的workload列表
        public let affectedWorkloadList: [AffectedWorkloadItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case affectedWorkloadList = "AffectedWorkloadList"
            case requestId = "RequestId"
        }
    }
}