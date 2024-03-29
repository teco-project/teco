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

extension Cdb {
    /// DescribeLocalBinlogConfig请求参数结构体
    public struct DescribeLocalBinlogConfigRequest: TCRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeLocalBinlogConfig返回参数结构体
    public struct DescribeLocalBinlogConfigResponse: TCResponse {
        /// 实例binlog保留策略。
        public let localBinlogConfig: LocalBinlogConfig

        /// 该地域默认binlog保留策略。
        public let localBinlogConfigDefault: LocalBinlogConfigDefault

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case localBinlogConfig = "LocalBinlogConfig"
            case localBinlogConfigDefault = "LocalBinlogConfigDefault"
            case requestId = "RequestId"
        }
    }

    /// 查询本地binlog保留策略
    ///
    /// 该接口用于查询实例本地binlog保留策略。
    @inlinable
    public func describeLocalBinlogConfig(_ input: DescribeLocalBinlogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocalBinlogConfigResponse> {
        self.client.execute(action: "DescribeLocalBinlogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询本地binlog保留策略
    ///
    /// 该接口用于查询实例本地binlog保留策略。
    @inlinable
    public func describeLocalBinlogConfig(_ input: DescribeLocalBinlogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocalBinlogConfigResponse {
        try await self.client.execute(action: "DescribeLocalBinlogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询本地binlog保留策略
    ///
    /// 该接口用于查询实例本地binlog保留策略。
    @inlinable
    public func describeLocalBinlogConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLocalBinlogConfigResponse> {
        self.describeLocalBinlogConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询本地binlog保留策略
    ///
    /// 该接口用于查询实例本地binlog保留策略。
    @inlinable
    public func describeLocalBinlogConfig(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLocalBinlogConfigResponse {
        try await self.describeLocalBinlogConfig(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
