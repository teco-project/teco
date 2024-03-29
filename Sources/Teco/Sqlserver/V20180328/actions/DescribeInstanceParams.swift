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
    /// DescribeInstanceParams请求参数结构体
    public struct DescribeInstanceParamsRequest: TCRequest {
        /// 实例 ID，格式如：mssql-dj5i29c5n，与云数据库控制台页面中显示的实例 ID 相同，可使用 DescribeDBInstances 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceParams返回参数结构体
    public struct DescribeInstanceParamsResponse: TCResponse {
        /// 实例的参数总数
        public let totalCount: Int64

        /// 参数详情
        public let items: [ParameterDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询实例的可设置参数列表
    ///
    /// 该接口（DescribeInstanceParams）用于查询实例的参数列表。
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamsResponse> {
        self.client.execute(action: "DescribeInstanceParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例的可设置参数列表
    ///
    /// 该接口（DescribeInstanceParams）用于查询实例的参数列表。
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamsResponse {
        try await self.client.execute(action: "DescribeInstanceParams", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例的可设置参数列表
    ///
    /// 该接口（DescribeInstanceParams）用于查询实例的参数列表。
    @inlinable
    public func describeInstanceParams(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamsResponse> {
        self.describeInstanceParams(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例的可设置参数列表
    ///
    /// 该接口（DescribeInstanceParams）用于查询实例的参数列表。
    @inlinable
    public func describeInstanceParams(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamsResponse {
        try await self.describeInstanceParams(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
