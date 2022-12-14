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
    /// DescribeDatabases请求参数结构体
    public struct DescribeDatabasesRequest: TCRequestModel {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 数据偏移量，从0开始，默认为0。
        public let offset: Int64?

        /// 模糊匹配，库名关键字。
        public let keyWord: String?

        /// 数据源唯名称，该名称可以通过DescribeDatasourceConnection接口查询到。默认为DataLakeCatalog
        public let datasourceConnectionName: String?

        /// 排序字段，当前版本仅支持按库名排序
        public let sort: String?

        /// 排序类型：false：降序（默认）、true：升序
        public let asc: Bool?

        public init(limit: UInt64? = nil, offset: Int64? = nil, keyWord: String? = nil, datasourceConnectionName: String? = nil, sort: String? = nil, asc: Bool? = nil) {
            self.limit = limit
            self.offset = offset
            self.keyWord = keyWord
            self.datasourceConnectionName = datasourceConnectionName
            self.sort = sort
            self.asc = asc
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case keyWord = "KeyWord"
            case datasourceConnectionName = "DatasourceConnectionName"
            case sort = "Sort"
            case asc = "Asc"
        }
    }

    /// DescribeDatabases返回参数结构体
    public struct DescribeDatabasesResponse: TCResponseModel {
        /// 数据库对象列表。
        public let databaseList: [DatabaseResponseInfo]

        /// 实例总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case databaseList = "DatabaseList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDatabasesResponse > {
        self.client.execute(action: "DescribeDatabases", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        try await self.client.execute(action: "DescribeDatabases", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(limit: UInt64? = nil, offset: Int64? = nil, keyWord: String? = nil, datasourceConnectionName: String? = nil, sort: String? = nil, asc: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDatabasesResponse > {
        self.describeDatabases(DescribeDatabasesRequest(limit: limit, offset: offset, keyWord: keyWord, datasourceConnectionName: datasourceConnectionName, sort: sort, asc: asc), logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询数据库列表。
    @inlinable
    public func describeDatabases(limit: UInt64? = nil, offset: Int64? = nil, keyWord: String? = nil, datasourceConnectionName: String? = nil, sort: String? = nil, asc: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        try await self.describeDatabases(DescribeDatabasesRequest(limit: limit, offset: offset, keyWord: keyWord, datasourceConnectionName: datasourceConnectionName, sort: sort, asc: asc), logger: logger, on: eventLoop)
    }
}
