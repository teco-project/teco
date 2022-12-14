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

extension Postgres {
    /// DescribeDatabases请求参数结构体
    public struct DescribeDatabasesRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// DescribeDatabases返回参数结构体
    public struct DescribeDatabasesResponse: TCResponseModel {
        /// 数据库信息
        public let items: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 拉取数据库列表
    ///
    /// 接口（DescribeDatabases）用来拉取数据库列表
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDatabasesResponse > {
        self.client.execute(action: "DescribeDatabases", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取数据库列表
    ///
    /// 接口（DescribeDatabases）用来拉取数据库列表
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        try await self.client.execute(action: "DescribeDatabases", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取数据库列表
    ///
    /// 接口（DescribeDatabases）用来拉取数据库列表
    @inlinable
    public func describeDatabases(dbInstanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDatabasesResponse > {
        self.describeDatabases(DescribeDatabasesRequest(dbInstanceId: dbInstanceId), logger: logger, on: eventLoop)
    }

    /// 拉取数据库列表
    ///
    /// 接口（DescribeDatabases）用来拉取数据库列表
    @inlinable
    public func describeDatabases(dbInstanceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        try await self.describeDatabases(DescribeDatabasesRequest(dbInstanceId: dbInstanceId), logger: logger, on: eventLoop)
    }
}
