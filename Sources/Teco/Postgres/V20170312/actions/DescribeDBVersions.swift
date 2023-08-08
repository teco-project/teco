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
    /// DescribeDBVersions请求参数结构体
    public struct DescribeDBVersionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeDBVersions返回参数结构体
    public struct DescribeDBVersionsResponse: TCResponseModel {
        /// 数据库版本号信息列表
        public let versionSet: [Version]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case versionSet = "VersionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询支持的数据库版本
    ///
    /// 本接口（DescribeDBVersions）用于查询支持的数据库版本。
    @inlinable
    public func describeDBVersions(_ input: DescribeDBVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBVersionsResponse> {
        self.client.execute(action: "DescribeDBVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询支持的数据库版本
    ///
    /// 本接口（DescribeDBVersions）用于查询支持的数据库版本。
    @inlinable
    public func describeDBVersions(_ input: DescribeDBVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBVersionsResponse {
        try await self.client.execute(action: "DescribeDBVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询支持的数据库版本
    ///
    /// 本接口（DescribeDBVersions）用于查询支持的数据库版本。
    @inlinable
    public func describeDBVersions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBVersionsResponse> {
        self.describeDBVersions(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询支持的数据库版本
    ///
    /// 本接口（DescribeDBVersions）用于查询支持的数据库版本。
    @inlinable
    public func describeDBVersions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBVersionsResponse {
        try await self.describeDBVersions(.init(), region: region, logger: logger, on: eventLoop)
    }
}
