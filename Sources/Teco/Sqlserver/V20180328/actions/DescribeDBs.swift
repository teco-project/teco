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

extension Sqlserver {
    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable
    public func describeDBs(_ input: DescribeDBsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBsResponse > {
        self.client.execute(action: "DescribeDBs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable
    public func describeDBs(_ input: DescribeDBsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBsResponse {
        try await self.client.execute(action: "DescribeDBs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDBs请求参数结构体
    public struct DescribeDBsRequest: TCRequestModel {
        /// 实例ID
        public let instanceIdSet: [String]
        
        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: UInt64?
        
        /// 分页返回，页编号，默认值为第0页
        public let offset: UInt64?
        
        /// 数据库名称
        public let name: String?
        
        /// 排序规则（desc-降序，asc-升序），默认desc
        public let orderByType: String?
        
        public init (instanceIdSet: [String], limit: UInt64?, offset: UInt64?, name: String?, orderByType: String?) {
            self.instanceIdSet = instanceIdSet
            self.limit = limit
            self.offset = offset
            self.name = name
            self.orderByType = orderByType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case limit = "Limit"
            case offset = "Offset"
            case name = "Name"
            case orderByType = "OrderByType"
        }
    }
    
    /// DescribeDBs返回参数结构体
    public struct DescribeDBsResponse: TCResponseModel {
        /// 数据库数量
        public let totalCount: Int64
        
        /// 实例数据库列表
        public let dbInstances: [InstanceDBDetail]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dbInstances = "DBInstances"
            case requestId = "RequestId"
        }
    }
}