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

extension Postgres {
    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable
    public func describeReadOnlyGroups(_ input: DescribeReadOnlyGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReadOnlyGroupsResponse > {
        self.client.execute(action: "DescribeReadOnlyGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable
    public func describeReadOnlyGroups(_ input: DescribeReadOnlyGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupsResponse {
        try await self.client.execute(action: "DescribeReadOnlyGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeReadOnlyGroups请求参数结构体
    public struct DescribeReadOnlyGroupsRequest: TCRequestModel {
        /// 过滤条件，必须传入主实例ID进行过滤，否则返回值将为空，过滤参数为：db-master-instance-id
        public let filters: [Filter]?
        
        /// 查询每一页的条数，默认为10
        public let pageSize: Int64?
        
        /// 查询的页码，默认为1
        public let pageNumber: Int64?
        
        /// 查询排序依据，目前支持:ROGroupId,CreateTime,Name
        public let orderBy: String?
        
        /// 查询排序依据类型，目前支持:desc,asc
        public let orderByType: String?
        
        public init (filters: [Filter]?, pageSize: Int64?, pageNumber: Int64?, orderBy: String?, orderByType: String?) {
            self.filters = filters
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.orderBy = orderBy
            self.orderByType = orderByType
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }
    }
    
    /// DescribeReadOnlyGroups返回参数结构体
    public struct DescribeReadOnlyGroupsResponse: TCResponseModel {
        /// 只读组列表
        public let readOnlyGroupList: [ReadOnlyGroup]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case readOnlyGroupList = "ReadOnlyGroupList"
            case requestId = "RequestId"
        }
    }
}