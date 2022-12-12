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

extension Cwp {
    /// DescribeAssetDatabaseList请求参数结构体
    public struct DescribeAssetDatabaseListRequest: TCRequestModel {
        /// 查询指定Quuid主机的信息
        public let quuid: String?
        
        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>User- string - 是否必填：否 - 运行用户</li>
        /// <li>Ip - String - 是否必填：否 - 绑定IP</li>
        /// <li>Port - Int - 是否必填：否 - 端口</li>
        /// <li>Name - Int - 是否必填：否 - 数据库名称
        /// 0:全部
        /// 1:MySQL
        /// 2:Redis
        /// 3:Oracle
        /// 4:MongoDB
        /// 5:MemCache
        /// 6:PostgreSQL
        /// 7:HBase
        /// 8:DB2
        /// 9:Sybase
        /// 10:TiDB</li>
        /// <li>Proto - String - 是否必填：否 - 协议：1:TCP, 2:UDP, 3:未知</li>
        /// <li>OsType - String - 是否必填：否 - 操作系统: linux/windows</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [AssetFilters]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 排序方式，asc升序 或 desc降序
        public let order: String?
        
        /// 排序方式：[FirstTime]
        public let by: String?
        
        public init (quuid: String? = nil, filters: [AssetFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeAssetDatabaseList返回参数结构体
    public struct DescribeAssetDatabaseListResponse: TCResponseModel {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let databases: [AssetDatabaseBaseInfo]?
        
        /// 总数量
        public let total: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case databases = "Databases"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
    
    /// 查询资产管理数据库列表
    @inlinable
    public func describeAssetDatabaseList(_ input: DescribeAssetDatabaseListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetDatabaseListResponse > {
        self.client.execute(action: "DescribeAssetDatabaseList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询资产管理数据库列表
    @inlinable
    public func describeAssetDatabaseList(_ input: DescribeAssetDatabaseListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetDatabaseListResponse {
        try await self.client.execute(action: "DescribeAssetDatabaseList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
