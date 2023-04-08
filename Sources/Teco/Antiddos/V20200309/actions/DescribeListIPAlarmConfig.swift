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
import TecoPaginationHelpers

extension Antiddos {
    /// DescribeListIPAlarmConfig请求参数结构体
    public struct DescribeListIPAlarmConfigRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: Int64

        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: Int64

        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String

        /// 告警阈值类型搜索，取值[
        /// 1(入流量告警阈值)
        /// 2(攻击清洗流量告警阈值)
        /// ]
        public let filterAlarmType: Int64

        /// IP搜索
        public let filterIp: String?

        /// 高防IP实例资源的cname
        public let filterCname: String?

        public init(offset: Int64, limit: Int64, filterInstanceId: String, filterAlarmType: Int64, filterIp: String? = nil, filterCname: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterInstanceId = filterInstanceId
            self.filterAlarmType = filterAlarmType
            self.filterIp = filterIp
            self.filterCname = filterCname
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterInstanceId = "FilterInstanceId"
            case filterAlarmType = "FilterAlarmType"
            case filterIp = "FilterIp"
            case filterCname = "FilterCname"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeListIPAlarmConfigResponse) -> DescribeListIPAlarmConfigRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListIPAlarmConfigRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterInstanceId: self.filterInstanceId, filterAlarmType: self.filterAlarmType, filterIp: self.filterIp, filterCname: self.filterCname)
        }
    }

    /// DescribeListIPAlarmConfig返回参数结构体
    public struct DescribeListIPAlarmConfigResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// IP告警阈值配置列表
        public let configList: [IPAlarmThresholdRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case configList = "ConfigList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [IPAlarmThresholdRelation] {
            self.configList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取单IP告警阈值配置列表
    @inlinable
    public func describeListIPAlarmConfig(_ input: DescribeListIPAlarmConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListIPAlarmConfigResponse> {
        self.client.execute(action: "DescribeListIPAlarmConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单IP告警阈值配置列表
    @inlinable
    public func describeListIPAlarmConfig(_ input: DescribeListIPAlarmConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListIPAlarmConfigResponse {
        try await self.client.execute(action: "DescribeListIPAlarmConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单IP告警阈值配置列表
    @inlinable
    public func describeListIPAlarmConfig(offset: Int64, limit: Int64, filterInstanceId: String, filterAlarmType: Int64, filterIp: String? = nil, filterCname: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListIPAlarmConfigResponse> {
        self.describeListIPAlarmConfig(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterAlarmType: filterAlarmType, filterIp: filterIp, filterCname: filterCname), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单IP告警阈值配置列表
    @inlinable
    public func describeListIPAlarmConfig(offset: Int64, limit: Int64, filterInstanceId: String, filterAlarmType: Int64, filterIp: String? = nil, filterCname: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListIPAlarmConfigResponse {
        try await self.describeListIPAlarmConfig(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterAlarmType: filterAlarmType, filterIp: filterIp, filterCname: filterCname), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单IP告警阈值配置列表
    @inlinable
    public func describeListIPAlarmConfigPaginated(_ input: DescribeListIPAlarmConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [IPAlarmThresholdRelation])> {
        self.client.paginate(input: input, region: region, command: self.describeListIPAlarmConfig, logger: logger, on: eventLoop)
    }

    /// 获取单IP告警阈值配置列表
    @inlinable @discardableResult
    public func describeListIPAlarmConfigPaginated(_ input: DescribeListIPAlarmConfigRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListIPAlarmConfigResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListIPAlarmConfig, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取单IP告警阈值配置列表
    ///
    /// - Returns: `AsyncSequence`s of `IPAlarmThresholdRelation` and `DescribeListIPAlarmConfigResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListIPAlarmConfigPaginator(_ input: DescribeListIPAlarmConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListIPAlarmConfigRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListIPAlarmConfig, logger: logger, on: eventLoop)
    }
}
