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

extension Ms {
    /// DescribeShieldInstances请求参数结构体
    public struct DescribeShieldInstancesRequest: TCRequestModel {
        /// 支持通过app名称，app包名，加固的服务版本，提交的渠道进行筛选。
        public let filters: [Filter]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 数量限制，默认为20，最大值为100。
        public let limit: UInt64?
        
        /// 可以提供ItemId数组来查询一个或者多个结果。注意不可以同时指定ItemIds和Filters。
        public let itemIds: [String]?
        
        /// 按某个字段排序，目前仅支持TaskTime排序。
        public let orderField: String?
        
        /// 升序（asc）还是降序（desc），默认：desc。
        public let orderDirection: String?
        
        public init (filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, itemIds: [String]? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.itemIds = itemIds
            self.orderField = orderField
            self.orderDirection = orderDirection
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case itemIds = "ItemIds"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }
    }
    
    /// DescribeShieldInstances返回参数结构体
    public struct DescribeShieldInstancesResponse: TCResponseModel {
        /// 符合要求的app数量
        public let totalCount: UInt64
        
        /// 一个关于app详细信息的结构体，主要包括app的基本信息和加固信息。
        public let appSet: [AppSetInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case appSet = "AppSet"
            case requestId = "RequestId"
        }
    }
    
    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstances(_ input: DescribeShieldInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeShieldInstancesResponse > {
        self.client.execute(action: "DescribeShieldInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 用户查询提交过的app列表
    ///
    /// 本接口用于查看app列表。
    /// 可以通过指定任务唯一标识ItemId来查询指定app的详细信息，或通过设定过滤器来查询满足过滤条件的app的详细信息。 指定偏移(Offset)和限制(Limit)来选择结果中的一部分，默认返回满足条件的前20个app信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeShieldInstances(_ input: DescribeShieldInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeShieldInstancesResponse {
        try await self.client.execute(action: "DescribeShieldInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
