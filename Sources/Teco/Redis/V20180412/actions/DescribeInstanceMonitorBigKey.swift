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
    /// DescribeInstanceMonitorBigKey请求参数结构体
    public struct DescribeInstanceMonitorBigKeyRequest: TCRequest {
        /// 实例Id
        public let instanceId: String

        /// 请求类型：1——string类型，2——所有类型
        public let reqType: Int64

        /// 时间；例如："20190219"
        public let date: String

        public init(instanceId: String, reqType: Int64, date: String) {
            self.instanceId = instanceId
            self.reqType = reqType
            self.date = date
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case reqType = "ReqType"
            case date = "Date"
        }
    }

    /// DescribeInstanceMonitorBigKey返回参数结构体
    public struct DescribeInstanceMonitorBigKeyResponse: TCResponse {
        /// 大Key详细信息
        public let data: [BigKeyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询实例大Key（已废弃）
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见[查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKey(_ input: DescribeInstanceMonitorBigKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorBigKeyResponse> {
        self.client.execute(action: "DescribeInstanceMonitorBigKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例大Key（已废弃）
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见[查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKey(_ input: DescribeInstanceMonitorBigKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorBigKeyResponse {
        try await self.client.execute(action: "DescribeInstanceMonitorBigKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例大Key（已废弃）
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见[查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKey(instanceId: String, reqType: Int64, date: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorBigKeyResponse> {
        self.describeInstanceMonitorBigKey(.init(instanceId: instanceId, reqType: reqType, date: date), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例大Key（已废弃）
    ///
    /// 腾讯云数据库 Redis 已经于2022年10月31日下线查询实例大 Key 接口。具体公告，请参见[查询实例大 Key 接口下线公告](https://cloud.tencent.com/document/product/239/81005)。
    @inlinable
    public func describeInstanceMonitorBigKey(instanceId: String, reqType: Int64, date: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorBigKeyResponse {
        try await self.describeInstanceMonitorBigKey(.init(instanceId: instanceId, reqType: reqType, date: date), region: region, logger: logger, on: eventLoop)
    }
}
