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

extension Pts {
    /// DescribeProjects请求参数结构体
    public struct DescribeProjectsRequest: TCRequestModel {
        /// 分页offset
        public let offset: Int64?
        
        /// 每页limit
        public let limit: Int64?
        
        /// 项目ID数组
        public let projectIds: [String]?
        
        /// 项目名
        public let projectName: String?
        
        /// 按字段排序
        public let orderBy: String?
        
        /// 升序/降序
        public let ascend: Bool?
        
        /// 标签数组
        public let tagFilters: [TagSpec]?
        
        public init (offset: Int64? = nil, limit: Int64? = nil, projectIds: [String]? = nil, projectName: String? = nil, orderBy: String? = nil, ascend: Bool? = nil, tagFilters: [TagSpec]? = nil) {
            self.offset = offset
            self.limit = limit
            self.projectIds = projectIds
            self.projectName = projectName
            self.orderBy = orderBy
            self.ascend = ascend
            self.tagFilters = tagFilters
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case projectIds = "ProjectIds"
            case projectName = "ProjectName"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
            case tagFilters = "TagFilters"
        }
    }
    
    /// DescribeProjects返回参数结构体
    public struct DescribeProjectsResponse: TCResponseModel {
        /// 项目数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectSet: [Project]?
        
        /// 项目数量
        public let total: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case projectSet = "ProjectSet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 查询项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProjectsResponse > {
        self.client.execute(action: "DescribeProjects", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询项目列表
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.client.execute(action: "DescribeProjects", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
