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
    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecords(_ input: DescribeDBSwitchRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBSwitchRecordsResponse > {
        self.client.execute(action: "DescribeDBSwitchRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecords(_ input: DescribeDBSwitchRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSwitchRecordsResponse {
        try await self.client.execute(action: "DescribeDBSwitchRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDBSwitchRecords请求参数结构体
    public struct DescribeDBSwitchRecordsRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String
        
        /// 分页偏移量。
        public let offset: Int64?
        
        /// 分页大小，默认值为 50，最小值为 1，最大值为 2000。
        public let limit: Int64?
        
        public init (instanceId: String, offset: Int64?, limit: Int64?) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDBSwitchRecords返回参数结构体
    public struct DescribeDBSwitchRecordsResponse: TCResponseModel {
        /// 实例切换记录的总数。
        public let totalCount: Int64
        
        /// 实例切换记录详情。
        public let items: [DBSwitchInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}