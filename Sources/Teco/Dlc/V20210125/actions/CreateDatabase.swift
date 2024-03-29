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

import Logging
import NIOCore
import TecoCore

extension Dlc {
    /// CreateDatabase请求参数结构体
    public struct CreateDatabaseRequest: TCRequest {
        /// 数据库基础信息
        public let databaseInfo: DatabaseInfo

        /// 数据源名称，默认为DataLakeCatalog
        public let datasourceConnectionName: String?

        public init(databaseInfo: DatabaseInfo, datasourceConnectionName: String? = nil) {
            self.databaseInfo = databaseInfo
            self.datasourceConnectionName = datasourceConnectionName
        }

        enum CodingKeys: String, CodingKey {
            case databaseInfo = "DatabaseInfo"
            case datasourceConnectionName = "DatasourceConnectionName"
        }
    }

    /// CreateDatabase返回参数结构体
    public struct CreateDatabaseResponse: TCResponse {
        /// 生成的建库执行语句对象。
        public let execution: Execution

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case execution = "Execution"
            case requestId = "RequestId"
        }
    }

    /// 生成建库SQL语句
    ///
    /// 本接口（CreateDatabase）用于生成建库SQL语句。
    @inlinable
    public func createDatabase(_ input: CreateDatabaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatabaseResponse> {
        self.client.execute(action: "CreateDatabase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成建库SQL语句
    ///
    /// 本接口（CreateDatabase）用于生成建库SQL语句。
    @inlinable
    public func createDatabase(_ input: CreateDatabaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatabaseResponse {
        try await self.client.execute(action: "CreateDatabase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成建库SQL语句
    ///
    /// 本接口（CreateDatabase）用于生成建库SQL语句。
    @inlinable
    public func createDatabase(databaseInfo: DatabaseInfo, datasourceConnectionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatabaseResponse> {
        self.createDatabase(.init(databaseInfo: databaseInfo, datasourceConnectionName: datasourceConnectionName), region: region, logger: logger, on: eventLoop)
    }

    /// 生成建库SQL语句
    ///
    /// 本接口（CreateDatabase）用于生成建库SQL语句。
    @inlinable
    public func createDatabase(databaseInfo: DatabaseInfo, datasourceConnectionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatabaseResponse {
        try await self.createDatabase(.init(databaseInfo: databaseInfo, datasourceConnectionName: datasourceConnectionName), region: region, logger: logger, on: eventLoop)
    }
}
