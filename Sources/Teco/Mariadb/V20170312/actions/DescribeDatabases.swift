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

extension Mariadb {
    /// DescribeDatabases请求参数结构体
    public struct DescribeDatabasesRequest: TCRequestModel {
        /// 实例 ID，形如：dcdbt-ow7t8lmc。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDatabases返回参数结构体
    public struct DescribeDatabasesResponse: TCResponseModel {
        /// 该实例上的数据库列表。
        public let databases: [Database]

        /// 透传入参。
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case databases = "Databases"
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询云数据库实例的数据库列表。
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabasesResponse> {
        self.client.execute(action: "DescribeDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询云数据库实例的数据库列表。
    @inlinable
    public func describeDatabases(_ input: DescribeDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        try await self.client.execute(action: "DescribeDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询云数据库实例的数据库列表。
    @inlinable
    public func describeDatabases(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatabasesResponse> {
        self.describeDatabases(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDatabases）用于查询云数据库实例的数据库列表。
    @inlinable
    public func describeDatabases(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatabasesResponse {
        try await self.describeDatabases(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
