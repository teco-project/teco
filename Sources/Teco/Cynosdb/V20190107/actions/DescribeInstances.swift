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

extension Cynosdb {
    /// 查询实例列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCRequestModel {
        /// 返回数量，默认为 20，最大值为 100
        public let limit: Int64?
        
        /// 记录偏移量，默认值为0
        public let offset: Int64?
        
        /// 排序字段，取值范围：
        /// <li> CREATETIME：创建时间</li>
        /// <li> PERIODENDTIME：过期时间</li>
        public let orderBy: String?
        
        /// 排序类型，取值范围：
        /// <li> ASC：升序排序 </li>
        /// <li> DESC：降序排序 </li>
        public let orderByType: String?
        
        /// 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        public let filters: [QueryFilter]?
        
        /// 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        public let dbType: String?
        
        /// 实例状态, 可选值:
        /// creating 创建中
        /// running 运行中
        /// isolating 隔离中
        /// isolated 已隔离
        /// activating 恢复中
        /// offlining 下线中
        /// offlined 已下线
        public let status: String?
        
        /// 实例id列表
        public let instanceIds: [String]?
        
        public init (limit: Int64?, offset: Int64?, orderBy: String?, orderByType: String?, filters: [QueryFilter]?, dbType: String?, status: String?, instanceIds: [String]?) {
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.filters = filters
            self.dbType = dbType
            self.status = status
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case filters = "Filters"
            case dbType = "DbType"
            case status = "Status"
            case instanceIds = "InstanceIds"
        }
    }
    
    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCResponseModel {
        /// 实例个数
        public let totalCount: Int64
        
        /// 实例列表
        public let instanceSet: [CynosdbInstance]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }
    }
}
