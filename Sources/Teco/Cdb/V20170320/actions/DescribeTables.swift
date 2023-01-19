//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdb {
    /// DescribeTables请求参数结构体
    public struct DescribeTablesRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 数据库的名称。
        public let database: String

        /// 记录偏移量，默认值为0。
        public let offset: Int64?

        /// 单次请求返回的数量，默认值为20，最大值为2000。
        public let limit: Int64?

        /// 匹配数据库表名的正则表达式，规则同 MySQL 官网
        public let tableRegexp: String?

        public init(instanceId: String, database: String, offset: Int64? = nil, limit: Int64? = nil, tableRegexp: String? = nil) {
            self.instanceId = instanceId
            self.database = database
            self.offset = offset
            self.limit = limit
            self.tableRegexp = tableRegexp
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case database = "Database"
            case offset = "Offset"
            case limit = "Limit"
            case tableRegexp = "TableRegexp"
        }
    }

    /// DescribeTables返回参数结构体
    public struct DescribeTablesResponse: TCResponseModel {
        /// 符合查询条件的数据库表总数。
        public let totalCount: Int64

        /// 返回的数据库表信息。
        public let items: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库表
    ///
    /// 本接口(DescribeTables)用于查询云数据库实例的数据库表信息，仅支持主实例和灾备实例，不支持只读实例。
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库表
    ///
    /// 本接口(DescribeTables)用于查询云数据库实例的数据库表信息，仅支持主实例和灾备实例，不支持只读实例。
    @inlinable
    public func describeTables(_ input: DescribeTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        try await self.client.execute(action: "DescribeTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库表
    ///
    /// 本接口(DescribeTables)用于查询云数据库实例的数据库表信息，仅支持主实例和灾备实例，不支持只读实例。
    @inlinable
    public func describeTables(instanceId: String, database: String, offset: Int64? = nil, limit: Int64? = nil, tableRegexp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTablesResponse> {
        self.describeTables(DescribeTablesRequest(instanceId: instanceId, database: database, offset: offset, limit: limit, tableRegexp: tableRegexp), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库表
    ///
    /// 本接口(DescribeTables)用于查询云数据库实例的数据库表信息，仅支持主实例和灾备实例，不支持只读实例。
    @inlinable
    public func describeTables(instanceId: String, database: String, offset: Int64? = nil, limit: Int64? = nil, tableRegexp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTablesResponse {
        try await self.describeTables(DescribeTablesRequest(instanceId: instanceId, database: database, offset: offset, limit: limit, tableRegexp: tableRegexp), region: region, logger: logger, on: eventLoop)
    }
}
