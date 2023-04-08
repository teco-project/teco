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

extension Sqlserver {
    /// DescribeDBCharsets请求参数结构体
    public struct DescribeDBCharsetsRequest: TCRequestModel {
        /// 实例ID，形如mssql-j8kv137v
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBCharsets返回参数结构体
    public struct DescribeDBCharsetsResponse: TCResponseModel {
        /// 数据库字符集列表
        public let databaseCharsets: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case databaseCharsets = "DatabaseCharsets"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库字符集
    ///
    /// 本接口（DescribeDBCharsets）用于查询实例支持的数据库字符集。
    @inlinable
    public func describeDBCharsets(_ input: DescribeDBCharsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBCharsetsResponse> {
        self.client.execute(action: "DescribeDBCharsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库字符集
    ///
    /// 本接口（DescribeDBCharsets）用于查询实例支持的数据库字符集。
    @inlinable
    public func describeDBCharsets(_ input: DescribeDBCharsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBCharsetsResponse {
        try await self.client.execute(action: "DescribeDBCharsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库字符集
    ///
    /// 本接口（DescribeDBCharsets）用于查询实例支持的数据库字符集。
    @inlinable
    public func describeDBCharsets(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBCharsetsResponse> {
        self.describeDBCharsets(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库字符集
    ///
    /// 本接口（DescribeDBCharsets）用于查询实例支持的数据库字符集。
    @inlinable
    public func describeDBCharsets(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBCharsetsResponse {
        try await self.describeDBCharsets(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
