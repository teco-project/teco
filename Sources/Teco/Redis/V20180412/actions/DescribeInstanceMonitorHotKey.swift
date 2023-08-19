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

extension Redis {
    /// DescribeInstanceMonitorHotKey请求参数结构体
    public struct DescribeInstanceMonitorHotKeyRequest: TCRequest {
        /// 实例Id
        public let instanceId: String

        /// 时间范围：1——实时，2——近30分钟，3——近6小时，4——近24小时
        public let spanType: Int64

        public init(instanceId: String, spanType: Int64) {
            self.instanceId = instanceId
            self.spanType = spanType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case spanType = "SpanType"
        }
    }

    /// DescribeInstanceMonitorHotKey返回参数结构体
    public struct DescribeInstanceMonitorHotKeyResponse: TCResponse {
        /// 热Key详细信息
        public let data: [HotKeyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询实例热Key
    @inlinable
    public func describeInstanceMonitorHotKey(_ input: DescribeInstanceMonitorHotKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorHotKeyResponse> {
        self.client.execute(action: "DescribeInstanceMonitorHotKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例热Key
    @inlinable
    public func describeInstanceMonitorHotKey(_ input: DescribeInstanceMonitorHotKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorHotKeyResponse {
        try await self.client.execute(action: "DescribeInstanceMonitorHotKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例热Key
    @inlinable
    public func describeInstanceMonitorHotKey(instanceId: String, spanType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorHotKeyResponse> {
        self.describeInstanceMonitorHotKey(.init(instanceId: instanceId, spanType: spanType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例热Key
    @inlinable
    public func describeInstanceMonitorHotKey(instanceId: String, spanType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorHotKeyResponse {
        try await self.describeInstanceMonitorHotKey(.init(instanceId: instanceId, spanType: spanType), region: region, logger: logger, on: eventLoop)
    }
}
