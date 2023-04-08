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
    /// DescribeDBsNormal请求参数结构体
    public struct DescribeDBsNormalRequest: TCRequestModel {
        /// 实例ID，形如mssql-7vfv3rk3
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBsNormal返回参数结构体
    public struct DescribeDBsNormalResponse: TCResponseModel {
        /// 表示当前实例下的数据库总个数
        public let totalCount: Int64

        /// 返回数据库的详细配置信息，例如：数据库是否开启CDC、CT等
        public let dbList: [DbNormalDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dbList = "DBList"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库配置信息
    ///
    /// 本接口(DescribeDBsNormal)用于查询数据库配置信息，此接口不包含数据库的关联账号
    @inlinable
    public func describeDBsNormal(_ input: DescribeDBsNormalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBsNormalResponse> {
        self.client.execute(action: "DescribeDBsNormal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库配置信息
    ///
    /// 本接口(DescribeDBsNormal)用于查询数据库配置信息，此接口不包含数据库的关联账号
    @inlinable
    public func describeDBsNormal(_ input: DescribeDBsNormalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBsNormalResponse {
        try await self.client.execute(action: "DescribeDBsNormal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库配置信息
    ///
    /// 本接口(DescribeDBsNormal)用于查询数据库配置信息，此接口不包含数据库的关联账号
    @inlinable
    public func describeDBsNormal(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBsNormalResponse> {
        self.describeDBsNormal(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库配置信息
    ///
    /// 本接口(DescribeDBsNormal)用于查询数据库配置信息，此接口不包含数据库的关联账号
    @inlinable
    public func describeDBsNormal(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBsNormalResponse {
        try await self.describeDBsNormal(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
