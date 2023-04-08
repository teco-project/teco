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

extension Redis {
    /// DescribeInstanceMonitorBigKeySizeDist请求参数结构体
    public struct DescribeInstanceMonitorBigKeySizeDistRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 时间；例如："20190219"
        public let date: String

        public init(instanceId: String, date: String) {
            self.instanceId = instanceId
            self.date = date
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case date = "Date"
        }
    }

    /// DescribeInstanceMonitorBigKeySizeDist返回参数结构体
    public struct DescribeInstanceMonitorBigKeySizeDistResponse: TCResponseModel {
        /// 大Key大小分布详情
        public let data: [DelayDistribution]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询实例大Key大小分布
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见 [查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKeySizeDist(_ input: DescribeInstanceMonitorBigKeySizeDistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorBigKeySizeDistResponse> {
        self.client.execute(action: "DescribeInstanceMonitorBigKeySizeDist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例大Key大小分布
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见 [查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKeySizeDist(_ input: DescribeInstanceMonitorBigKeySizeDistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorBigKeySizeDistResponse {
        try await self.client.execute(action: "DescribeInstanceMonitorBigKeySizeDist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例大Key大小分布
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见 [查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKeySizeDist(instanceId: String, date: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorBigKeySizeDistResponse> {
        self.describeInstanceMonitorBigKeySizeDist(.init(instanceId: instanceId, date: date), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例大Key大小分布
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见 [查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKeySizeDist(instanceId: String, date: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorBigKeySizeDistResponse {
        try await self.describeInstanceMonitorBigKeySizeDist(.init(instanceId: instanceId, date: date), region: region, logger: logger, on: eventLoop)
    }
}
