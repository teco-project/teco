//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

extension Mariadb {
    /// DescribeDatabaseTable请求参数结构体
    public struct DescribeDatabaseTableRequest: TCRequestModel {
        /// 实例 ID，形如：dcdbt-ow7t8lmc。
        public let instanceId: String

        /// 数据库名称，通过 DescribeDatabases 接口获取。
        public let dbName: String

        /// 表名称，通过 DescribeDatabaseObjects 接口获取。
        public let table: String

        public init(instanceId: String, dbName: String, table: String) {
            self.instanceId = instanceId
            self.dbName = dbName
            self.table = table
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dbName = "DbName"
            case table = "Table"
        }
    }

    /// DescribeDatabaseTable返回参数结构体
    public struct DescribeDatabaseTableResponse: TCResponseModel {
        /// 实例名称。
        public let instanceId: String

        /// 数据库名称。
        public let dbName: String

        /// 表名称。
        public let table: String

        /// 列信息。
        public let cols: [TableColumn]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dbName = "DbName"
            case table = "Table"
            case cols = "Cols"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库表信息
    ///
    /// 本接口（DescribeDatabaseTable）用于查询云数据库实例的表信息。
    @inlinable
    public func describeDatabaseTable(_ input: DescribeDatabaseTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseTableResponse> {
        self.client.execute(action: "DescribeDatabaseTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库表信息
    ///
    /// 本接口（DescribeDatabaseTable）用于查询云数据库实例的表信息。
    @inlinable
    public func describeDatabaseTable(_ input: DescribeDatabaseTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseTableResponse {
        try await self.client.execute(action: "DescribeDatabaseTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库表信息
    ///
    /// 本接口（DescribeDatabaseTable）用于查询云数据库实例的表信息。
    @inlinable
    public func describeDatabaseTable(instanceId: String, dbName: String, table: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseTableResponse> {
        self.describeDatabaseTable(.init(instanceId: instanceId, dbName: dbName, table: table), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库表信息
    ///
    /// 本接口（DescribeDatabaseTable）用于查询云数据库实例的表信息。
    @inlinable
    public func describeDatabaseTable(instanceId: String, dbName: String, table: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseTableResponse {
        try await self.describeDatabaseTable(.init(instanceId: instanceId, dbName: dbName, table: table), region: region, logger: logger, on: eventLoop)
    }
}
