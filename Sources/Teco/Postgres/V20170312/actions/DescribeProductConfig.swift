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

extension Postgres {
    /// DescribeProductConfig请求参数结构体
    public struct DescribeProductConfigRequest: TCRequest {
        /// 可用区名称
        public let zone: String?

        /// 数据库引擎，支持：
        /// 1、postgresql（云数据库PostgreSQL）；
        /// 2、mssql_compatible（MSSQL兼容-云数据库PostgreSQL）；
        /// 如不指定默认使用postgresql。
        public let dbEngine: String?

        public init(zone: String? = nil, dbEngine: String? = nil) {
            self.zone = zone
            self.dbEngine = dbEngine
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case dbEngine = "DBEngine"
        }
    }

    /// DescribeProductConfig返回参数结构体
    public struct DescribeProductConfigResponse: TCResponse {
        /// 售卖规格列表。
        public let specInfoList: [SpecInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case specInfoList = "SpecInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询售卖规格配置（废弃）
    ///
    /// 本接口（DescribeProductConfig）用于查询售卖规格配置。本接口已废弃，推荐使用新接口[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)。
    @inlinable
    public func describeProductConfig(_ input: DescribeProductConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductConfigResponse> {
        self.client.execute(action: "DescribeProductConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询售卖规格配置（废弃）
    ///
    /// 本接口（DescribeProductConfig）用于查询售卖规格配置。本接口已废弃，推荐使用新接口[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)。
    @inlinable
    public func describeProductConfig(_ input: DescribeProductConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductConfigResponse {
        try await self.client.execute(action: "DescribeProductConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询售卖规格配置（废弃）
    ///
    /// 本接口（DescribeProductConfig）用于查询售卖规格配置。本接口已废弃，推荐使用新接口[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)。
    @inlinable
    public func describeProductConfig(zone: String? = nil, dbEngine: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductConfigResponse> {
        self.describeProductConfig(.init(zone: zone, dbEngine: dbEngine), region: region, logger: logger, on: eventLoop)
    }

    /// 查询售卖规格配置（废弃）
    ///
    /// 本接口（DescribeProductConfig）用于查询售卖规格配置。本接口已废弃，推荐使用新接口[DescribeClasses](https://cloud.tencent.com/document/api/409/89019)。
    @inlinable
    public func describeProductConfig(zone: String? = nil, dbEngine: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductConfigResponse {
        try await self.describeProductConfig(.init(zone: zone, dbEngine: dbEngine), region: region, logger: logger, on: eventLoop)
    }
}
