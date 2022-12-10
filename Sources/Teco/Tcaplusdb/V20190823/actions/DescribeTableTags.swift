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

extension Tcaplusdb {
    /// 获取表格标签
    @inlinable
    public func describeTableTags(_ input: DescribeTableTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTableTagsResponse > {
        self.client.execute(action: "DescribeTableTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取表格标签
    @inlinable
    public func describeTableTags(_ input: DescribeTableTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableTagsResponse {
        try await self.client.execute(action: "DescribeTableTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTableTags请求参数结构体
    public struct DescribeTableTagsRequest: TCRequestModel {
        /// 表格所属集群ID
        public let clusterId: String
        
        /// 表格列表
        public let selectedTables: [SelectedTableInfoNew]
        
        public init (clusterId: String, selectedTables: [SelectedTableInfoNew]) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
        }
    }
    
    /// DescribeTableTags返回参数结构体
    public struct DescribeTableTagsResponse: TCResponseModel {
        /// 返回结果总数
        public let totalCount: Int64
        
        /// 表格标签信息列表
        public let rows: [TagsInfoOfTable]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case rows = "Rows"
            case requestId = "RequestId"
        }
    }
}
