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
    /// DescribeDatabaseObjects请求参数结构体
    public struct DescribeDatabaseObjectsRequest: TCRequestModel {
        /// 实例 ID，形如：dcdbt-ow7t8lmc。
        public let instanceId: String

        /// 数据库名称，通过 DescribeDatabases 接口获取。
        public let dbName: String

        public init(instanceId: String, dbName: String) {
            self.instanceId = instanceId
            self.dbName = dbName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dbName = "DbName"
        }
    }

    /// DescribeDatabaseObjects返回参数结构体
    public struct DescribeDatabaseObjectsResponse: TCResponseModel {
        /// 透传入参。
        public let instanceId: String

        /// 数据库名称。
        public let dbName: String

        /// 表列表。
        public let tables: [DatabaseTable]

        /// 视图列表。
        public let views: [DatabaseView]

        /// 存储过程列表。
        public let procs: [DatabaseProcedure]

        /// 函数列表。
        public let funcs: [DatabaseFunction]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dbName = "DbName"
            case tables = "Tables"
            case views = "Views"
            case procs = "Procs"
            case funcs = "Funcs"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库对象列表
    ///
    /// 本接口（DescribeDatabaseObjects）用于查询云数据库实例的数据库中的对象列表，包含表、存储过程、视图和函数。
    @inlinable
    public func describeDatabaseObjects(_ input: DescribeDatabaseObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseObjectsResponse> {
        self.client.execute(action: "DescribeDatabaseObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库对象列表
    ///
    /// 本接口（DescribeDatabaseObjects）用于查询云数据库实例的数据库中的对象列表，包含表、存储过程、视图和函数。
    @inlinable
    public func describeDatabaseObjects(_ input: DescribeDatabaseObjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseObjectsResponse {
        try await self.client.execute(action: "DescribeDatabaseObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库对象列表
    ///
    /// 本接口（DescribeDatabaseObjects）用于查询云数据库实例的数据库中的对象列表，包含表、存储过程、视图和函数。
    @inlinable
    public func describeDatabaseObjects(instanceId: String, dbName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabaseObjectsResponse> {
        let input = DescribeDatabaseObjectsRequest(instanceId: instanceId, dbName: dbName)
        return self.client.execute(action: "DescribeDatabaseObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库对象列表
    ///
    /// 本接口（DescribeDatabaseObjects）用于查询云数据库实例的数据库中的对象列表，包含表、存储过程、视图和函数。
    @inlinable
    public func describeDatabaseObjects(instanceId: String, dbName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabaseObjectsResponse {
        let input = DescribeDatabaseObjectsRequest(instanceId: instanceId, dbName: dbName)
        return try await self.client.execute(action: "DescribeDatabaseObjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
