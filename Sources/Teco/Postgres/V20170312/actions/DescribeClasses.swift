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

import TecoCore

extension Postgres {
    /// DescribeClasses请求参数结构体
    public struct DescribeClassesRequest: TCRequestModel {
        /// 可用区ID。可以通过接口DescribeZones获取。
        public let zone: String

        /// 数据库引擎，支持：
        /// 1、postgresql（云数据库PostgreSQL）；
        /// 2、mssql_compatible（MSSQL兼容-云数据库PostgreSQL）；
        public let dbEngine: String

        /// 数据库主版本号。例如12，13，可以通过接口DescribeDBVersions获取。
        public let dbMajorVersion: String

        public init(zone: String, dbEngine: String, dbMajorVersion: String) {
            self.zone = zone
            self.dbEngine = dbEngine
            self.dbMajorVersion = dbMajorVersion
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case dbEngine = "DBEngine"
            case dbMajorVersion = "DBMajorVersion"
        }
    }

    /// DescribeClasses返回参数结构体
    public struct DescribeClassesResponse: TCResponseModel {
        /// 数据库规格列表
        public let classInfoSet: [ClassInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case classInfoSet = "ClassInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 查询售卖规格
    ///
    /// 本接口（DescribeClasses）用于查询实例售卖规格。
    @inlinable
    public func describeClasses(_ input: DescribeClassesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClassesResponse> {
        self.client.execute(action: "DescribeClasses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询售卖规格
    ///
    /// 本接口（DescribeClasses）用于查询实例售卖规格。
    @inlinable
    public func describeClasses(_ input: DescribeClassesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClassesResponse {
        try await self.client.execute(action: "DescribeClasses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询售卖规格
    ///
    /// 本接口（DescribeClasses）用于查询实例售卖规格。
    @inlinable
    public func describeClasses(zone: String, dbEngine: String, dbMajorVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClassesResponse> {
        self.describeClasses(.init(zone: zone, dbEngine: dbEngine, dbMajorVersion: dbMajorVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询售卖规格
    ///
    /// 本接口（DescribeClasses）用于查询实例售卖规格。
    @inlinable
    public func describeClasses(zone: String, dbEngine: String, dbMajorVersion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClassesResponse {
        try await self.describeClasses(.init(zone: zone, dbEngine: dbEngine, dbMajorVersion: dbMajorVersion), region: region, logger: logger, on: eventLoop)
    }
}
