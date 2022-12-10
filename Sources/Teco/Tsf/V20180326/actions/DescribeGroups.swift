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

extension Tsf {
    /// 获取虚拟机部署组列表
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupsResponse > {
        self.client.execute(action: "DescribeGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取虚拟机部署组列表
    @inlinable
    public func describeGroups(_ input: DescribeGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupsResponse {
        try await self.client.execute(action: "DescribeGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroups请求参数结构体
    public struct DescribeGroupsRequest: TCRequestModel {
        /// 搜索字段
        public let searchWord: String?
        
        /// 应用ID
        public let applicationId: String?
        
        /// 排序字段
        public let orderBy: String?
        
        /// 排序方式
        public let orderType: Int64?
        
        /// 偏移量
        public let offset: Int64?
        
        /// 分页个数
        public let limit: Int64?
        
        /// 命名空间ID
        public let namespaceId: String?
        
        /// 集群ID
        public let clusterId: String?
        
        /// 部署组资源类型列表
        public let groupResourceTypeList: [String]?
        
        /// 部署组状态过滤字段
        public let status: String?
        
        /// 无
        public let groupIdList: [String]?
        
        public init (searchWord: String?, applicationId: String?, orderBy: String?, orderType: Int64?, offset: Int64?, limit: Int64?, namespaceId: String?, clusterId: String?, groupResourceTypeList: [String]?, status: String?, groupIdList: [String]?) {
            self.searchWord = searchWord
            self.applicationId = applicationId
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.namespaceId = namespaceId
            self.clusterId = clusterId
            self.groupResourceTypeList = groupResourceTypeList
            self.status = status
            self.groupIdList = groupIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case applicationId = "ApplicationId"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case namespaceId = "NamespaceId"
            case clusterId = "ClusterId"
            case groupResourceTypeList = "GroupResourceTypeList"
            case status = "Status"
            case groupIdList = "GroupIdList"
        }
    }
    
    /// DescribeGroups返回参数结构体
    public struct DescribeGroupsResponse: TCResponseModel {
        /// 虚拟机部署组分页信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageVmGroup
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
