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

extension Postgres {
    /// DescribeDefaultParameters请求参数结构体
    public struct DescribeDefaultParametersRequest: TCRequestModel {
        /// 数据库版本，大版本号，例如11，12，13
        public let dbMajorVersion: String

        /// 数据库引擎，例如：postgresql,mssql_compatible
        public let dbEngine: String

        public init(dbMajorVersion: String, dbEngine: String) {
            self.dbMajorVersion = dbMajorVersion
            self.dbEngine = dbEngine
        }

        enum CodingKeys: String, CodingKey {
            case dbMajorVersion = "DBMajorVersion"
            case dbEngine = "DBEngine"
        }
    }

    /// DescribeDefaultParameters返回参数结构体
    public struct DescribeDefaultParametersResponse: TCResponseModel {
        /// 参数个数
        public let totalCount: Int64

        /// 参数信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let paramInfoSet: [ParamInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case paramInfoSet = "ParamInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 查询默认参数列表
    ///
    /// 本接口（DescribeDefaultParameters）主要用于查询某个数据库版本和引擎支持的所有参数。
    @inlinable
    public func describeDefaultParameters(_ input: DescribeDefaultParametersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultParametersResponse> {
        self.client.execute(action: "DescribeDefaultParameters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询默认参数列表
    ///
    /// 本接口（DescribeDefaultParameters）主要用于查询某个数据库版本和引擎支持的所有参数。
    @inlinable
    public func describeDefaultParameters(_ input: DescribeDefaultParametersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultParametersResponse {
        try await self.client.execute(action: "DescribeDefaultParameters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询默认参数列表
    ///
    /// 本接口（DescribeDefaultParameters）主要用于查询某个数据库版本和引擎支持的所有参数。
    @inlinable
    public func describeDefaultParameters(dbMajorVersion: String, dbEngine: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultParametersResponse> {
        self.describeDefaultParameters(DescribeDefaultParametersRequest(dbMajorVersion: dbMajorVersion, dbEngine: dbEngine), region: region, logger: logger, on: eventLoop)
    }

    /// 查询默认参数列表
    ///
    /// 本接口（DescribeDefaultParameters）主要用于查询某个数据库版本和引擎支持的所有参数。
    @inlinable
    public func describeDefaultParameters(dbMajorVersion: String, dbEngine: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultParametersResponse {
        try await self.describeDefaultParameters(DescribeDefaultParametersRequest(dbMajorVersion: dbMajorVersion, dbEngine: dbEngine), region: region, logger: logger, on: eventLoop)
    }
}