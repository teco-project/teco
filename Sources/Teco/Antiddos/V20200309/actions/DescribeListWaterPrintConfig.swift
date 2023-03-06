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

import TecoPaginationHelpers

extension Antiddos {
    /// DescribeListWaterPrintConfig请求参数结构体
    public struct DescribeListWaterPrintConfigRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: Int64

        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: Int64

        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String

        /// IP搜索
        public let filterIp: String?

        public init(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterInstanceId = filterInstanceId
            self.filterIp = filterIp
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterInstanceId = "FilterInstanceId"
            case filterIp = "FilterIp"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeListWaterPrintConfigResponse) -> DescribeListWaterPrintConfigRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListWaterPrintConfigRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterInstanceId: self.filterInstanceId, filterIp: self.filterIp)
        }
    }

    /// DescribeListWaterPrintConfig返回参数结构体
    public struct DescribeListWaterPrintConfigResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// 水印配置列表
        public let configList: [WaterPrintRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case configList = "ConfigList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WaterPrintRelation] {
            self.configList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取DDoS防护的水印防护配置列表
    @inlinable
    public func describeListWaterPrintConfig(_ input: DescribeListWaterPrintConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListWaterPrintConfigResponse> {
        self.client.execute(action: "DescribeListWaterPrintConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的水印防护配置列表
    @inlinable
    public func describeListWaterPrintConfig(_ input: DescribeListWaterPrintConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListWaterPrintConfigResponse {
        try await self.client.execute(action: "DescribeListWaterPrintConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护的水印防护配置列表
    @inlinable
    public func describeListWaterPrintConfig(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListWaterPrintConfigResponse> {
        let input = DescribeListWaterPrintConfigRequest(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp)
        return self.client.execute(action: "DescribeListWaterPrintConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的水印防护配置列表
    @inlinable
    public func describeListWaterPrintConfig(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListWaterPrintConfigResponse {
        let input = DescribeListWaterPrintConfigRequest(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp)
        return try await self.client.execute(action: "DescribeListWaterPrintConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护的水印防护配置列表
    @inlinable
    public func describeListWaterPrintConfigPaginated(_ input: DescribeListWaterPrintConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [WaterPrintRelation])> {
        self.client.paginate(input: input, region: region, command: self.describeListWaterPrintConfig, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的水印防护配置列表
    @inlinable @discardableResult
    public func describeListWaterPrintConfigPaginated(_ input: DescribeListWaterPrintConfigRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListWaterPrintConfigResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListWaterPrintConfig, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的水印防护配置列表
    ///
    /// - Returns: `AsyncSequence`s of `WaterPrintRelation` and `DescribeListWaterPrintConfigResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListWaterPrintConfigPaginator(_ input: DescribeListWaterPrintConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListWaterPrintConfigRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListWaterPrintConfig, logger: logger, on: eventLoop)
    }
}
