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

extension Dlc {
    /// DescribeDMSTables请求参数结构体
    public struct DescribeDMSTablesRequest: TCRequestModel {
        /// 数据库名称
        public let dbName: String?

        /// 数据库schema名称
        public let schemaName: String?

        /// 表名称
        public let name: String?

        /// 数据目录
        public let catalog: String?

        /// 查询关键词
        public let keyword: String?

        /// 查询模式
        public let pattern: String?

        /// 表类型
        public let type: String?

        /// 筛选参数：更新开始时间
        public let startTime: String?

        /// 筛选参数：更新结束时间
        public let endTime: String?

        /// 分页参数
        public let limit: Int64?

        /// 分页参数
        public let offset: Int64?

        /// 排序字段：create_time：创建时间
        public let sort: String?

        /// 排序字段：true：升序（默认），false：降序
        public let asc: Bool?

        public init(dbName: String? = nil, schemaName: String? = nil, name: String? = nil, catalog: String? = nil, keyword: String? = nil, pattern: String? = nil, type: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sort: String? = nil, asc: Bool? = nil) {
            self.dbName = dbName
            self.schemaName = schemaName
            self.name = name
            self.catalog = catalog
            self.keyword = keyword
            self.pattern = pattern
            self.type = type
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.sort = sort
            self.asc = asc
        }

        enum CodingKeys: String, CodingKey {
            case dbName = "DbName"
            case schemaName = "SchemaName"
            case name = "Name"
            case catalog = "Catalog"
            case keyword = "Keyword"
            case pattern = "Pattern"
            case type = "Type"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case sort = "Sort"
            case asc = "Asc"
        }
    }

    /// DescribeDMSTables返回参数结构体
    public struct DescribeDMSTablesResponse: TCResponseModel {
        /// DMS元数据列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tableList: [DMSTableInfo]?

        /// 统计值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tableList = "TableList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// DMS元数据获取表列表
    @inlinable
    public func describeDMSTables(_ input: DescribeDMSTablesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDMSTablesResponse > {
        self.client.execute(action: "DescribeDMSTables", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据获取表列表
    @inlinable
    public func describeDMSTables(_ input: DescribeDMSTablesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSTablesResponse {
        try await self.client.execute(action: "DescribeDMSTables", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据获取表列表
    @inlinable
    public func describeDMSTables(dbName: String? = nil, schemaName: String? = nil, name: String? = nil, catalog: String? = nil, keyword: String? = nil, pattern: String? = nil, type: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sort: String? = nil, asc: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDMSTablesResponse > {
        self.describeDMSTables(DescribeDMSTablesRequest(dbName: dbName, schemaName: schemaName, name: name, catalog: catalog, keyword: keyword, pattern: pattern, type: type, startTime: startTime, endTime: endTime, limit: limit, offset: offset, sort: sort, asc: asc), logger: logger, on: eventLoop)
    }

    /// DMS元数据获取表列表
    @inlinable
    public func describeDMSTables(dbName: String? = nil, schemaName: String? = nil, name: String? = nil, catalog: String? = nil, keyword: String? = nil, pattern: String? = nil, type: String? = nil, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sort: String? = nil, asc: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDMSTablesResponse {
        try await self.describeDMSTables(DescribeDMSTablesRequest(dbName: dbName, schemaName: schemaName, name: name, catalog: catalog, keyword: keyword, pattern: pattern, type: type, startTime: startTime, endTime: endTime, limit: limit, offset: offset, sort: sort, asc: asc), logger: logger, on: eventLoop)
    }
}
