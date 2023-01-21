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

extension Redis {
    /// DescribeProxySlowLog请求参数结构体
    public struct DescribeProxySlowLogRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 开始时间
        public let beginTime: String

        /// 结束时间
        public let endTime: String

        /// 慢查询阈值（单位：毫秒）
        public let minQueryTime: Int64?

        /// 页面大小
        public let limit: Int64?

        /// 偏移量，取Limit整数倍
        public let offset: Int64?

        public init(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.instanceId = instanceId
            self.beginTime = beginTime
            self.endTime = endTime
            self.minQueryTime = minQueryTime
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case minQueryTime = "MinQueryTime"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeProxySlowLog返回参数结构体
    public struct DescribeProxySlowLogResponse: TCResponseModel {
        /// 慢查询总数
        public let totalCount: Int64

        /// 慢查询详情
        public let instanceProxySlowLogDetail: [InstanceProxySlowlogDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceProxySlowLogDetail = "InstanceProxySlowLogDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(_ input: DescribeProxySlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySlowLogResponse> {
        self.client.execute(action: "DescribeProxySlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(_ input: DescribeProxySlowLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySlowLogResponse {
        try await self.client.execute(action: "DescribeProxySlowLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxySlowLogResponse> {
        self.describeProxySlowLog(DescribeProxySlowLogRequest(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询代理慢查询
    ///
    /// 本接口（DescribeProxySlowLog）用于查询代理慢查询。
    @inlinable
    public func describeProxySlowLog(instanceId: String, beginTime: String, endTime: String, minQueryTime: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxySlowLogResponse {
        try await self.describeProxySlowLog(DescribeProxySlowLogRequest(instanceId: instanceId, beginTime: beginTime, endTime: endTime, minQueryTime: minQueryTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
