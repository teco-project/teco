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

extension Cynosdb {
    /// DescribeInstanceSpecs请求参数结构体
    public struct DescribeInstanceSpecsRequest: TCRequestModel {
        /// 数据库类型，取值范围:
        /// <li> MYSQL </li>
        public let dbType: String

        /// 是否需要返回可用区信息
        public let includeZoneStocks: Bool?

        public init(dbType: String, includeZoneStocks: Bool? = nil) {
            self.dbType = dbType
            self.includeZoneStocks = includeZoneStocks
        }

        enum CodingKeys: String, CodingKey {
            case dbType = "DbType"
            case includeZoneStocks = "IncludeZoneStocks"
        }
    }

    /// DescribeInstanceSpecs返回参数结构体
    public struct DescribeInstanceSpecsResponse: TCResponseModel {
        /// 规格信息
        public let instanceSpecSet: [InstanceSpec]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceSpecSet = "InstanceSpecSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例规格
    ///
    /// 本接口（DescribeInstanceSpecs）用于查询实例规格
    @inlinable
    public func describeInstanceSpecs(_ input: DescribeInstanceSpecsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceSpecsResponse> {
        self.client.execute(action: "DescribeInstanceSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例规格
    ///
    /// 本接口（DescribeInstanceSpecs）用于查询实例规格
    @inlinable
    public func describeInstanceSpecs(_ input: DescribeInstanceSpecsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceSpecsResponse {
        try await self.client.execute(action: "DescribeInstanceSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例规格
    ///
    /// 本接口（DescribeInstanceSpecs）用于查询实例规格
    @inlinable
    public func describeInstanceSpecs(dbType: String, includeZoneStocks: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceSpecsResponse> {
        self.describeInstanceSpecs(.init(dbType: dbType, includeZoneStocks: includeZoneStocks), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例规格
    ///
    /// 本接口（DescribeInstanceSpecs）用于查询实例规格
    @inlinable
    public func describeInstanceSpecs(dbType: String, includeZoneStocks: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceSpecsResponse {
        try await self.describeInstanceSpecs(.init(dbType: dbType, includeZoneStocks: includeZoneStocks), region: region, logger: logger, on: eventLoop)
    }
}
