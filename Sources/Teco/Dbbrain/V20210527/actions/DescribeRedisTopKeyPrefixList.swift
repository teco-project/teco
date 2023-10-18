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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dbbrain {
    /// DescribeRedisTopKeyPrefixList请求参数结构体
    public struct DescribeRedisTopKeyPrefixListRequest: TCRequest {
        /// 实例ID。
        public let instanceId: String

        /// 查询日期，如2021-05-27，最早可为前30天的日期。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$date`) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var date: Date

        /// 服务产品类型，支持值包括 "redis" - 云数据库 Redis。
        public let product: String

        /// 查询数目，默认为20，最大值为100。
        public let limit: Int64?

        public init(instanceId: String, date: Date, product: String, limit: Int64? = nil) {
            self.instanceId = instanceId
            self._date = .init(wrappedValue: date)
            self.product = product
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case date = "Date"
            case product = "Product"
            case limit = "Limit"
        }
    }

    /// DescribeRedisTopKeyPrefixList返回参数结构体
    public struct DescribeRedisTopKeyPrefixListResponse: TCResponse {
        /// top key前缀列表。
        public let items: [RedisPreKeySpaceData]

        /// 采集时间戳（秒）。
        public let timestamp: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case timestamp = "Timestamp"
            case requestId = "RequestId"
        }
    }

    /// 查询redis实例top key前缀列表
    ///
    /// 查询redis实例top key前缀列表。
    @inlinable
    public func describeRedisTopKeyPrefixList(_ input: DescribeRedisTopKeyPrefixListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRedisTopKeyPrefixListResponse> {
        self.client.execute(action: "DescribeRedisTopKeyPrefixList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询redis实例top key前缀列表
    ///
    /// 查询redis实例top key前缀列表。
    @inlinable
    public func describeRedisTopKeyPrefixList(_ input: DescribeRedisTopKeyPrefixListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRedisTopKeyPrefixListResponse {
        try await self.client.execute(action: "DescribeRedisTopKeyPrefixList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询redis实例top key前缀列表
    ///
    /// 查询redis实例top key前缀列表。
    @inlinable
    public func describeRedisTopKeyPrefixList(instanceId: String, date: Date, product: String, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRedisTopKeyPrefixListResponse> {
        self.describeRedisTopKeyPrefixList(.init(instanceId: instanceId, date: date, product: product, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询redis实例top key前缀列表
    ///
    /// 查询redis实例top key前缀列表。
    @inlinable
    public func describeRedisTopKeyPrefixList(instanceId: String, date: Date, product: String, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRedisTopKeyPrefixListResponse {
        try await self.describeRedisTopKeyPrefixList(.init(instanceId: instanceId, date: date, product: product, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
