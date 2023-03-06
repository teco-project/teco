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

extension Iotexplorer {
    /// GetLoRaGatewayList请求参数结构体
    public struct GetLoRaGatewayListRequest: TCPaginatedRequest {
        /// 是否是社区网关
        public let isCommunity: Bool

        /// 偏移量
        public let offset: UInt64?

        /// 限制个数
        public let limit: UInt64?

        public init(isCommunity: Bool, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.isCommunity = isCommunity
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case isCommunity = "IsCommunity"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetLoRaGatewayListResponse) -> GetLoRaGatewayListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetLoRaGatewayListRequest(isCommunity: self.isCommunity, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// GetLoRaGatewayList返回参数结构体
    public struct GetLoRaGatewayListResponse: TCPaginatedResponse {
        /// 返回总数
        public let total: UInt64

        /// 返回详情项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gateways: [LoRaGatewayItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case gateways = "Gateways"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LoRaGatewayItem] {
            self.gateways ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取 LoRa 网关列表
    ///
    /// 获取 LoRa 网关列表接口
    @inlinable
    public func getLoRaGatewayList(_ input: GetLoRaGatewayListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLoRaGatewayListResponse> {
        self.client.execute(action: "GetLoRaGatewayList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 LoRa 网关列表
    ///
    /// 获取 LoRa 网关列表接口
    @inlinable
    public func getLoRaGatewayList(_ input: GetLoRaGatewayListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLoRaGatewayListResponse {
        try await self.client.execute(action: "GetLoRaGatewayList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 LoRa 网关列表
    ///
    /// 获取 LoRa 网关列表接口
    @inlinable
    public func getLoRaGatewayList(isCommunity: Bool, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLoRaGatewayListResponse> {
        let input = GetLoRaGatewayListRequest(isCommunity: isCommunity, offset: offset, limit: limit)
        return self.client.execute(action: "GetLoRaGatewayList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 LoRa 网关列表
    ///
    /// 获取 LoRa 网关列表接口
    @inlinable
    public func getLoRaGatewayList(isCommunity: Bool, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLoRaGatewayListResponse {
        let input = GetLoRaGatewayListRequest(isCommunity: isCommunity, offset: offset, limit: limit)
        return try await self.client.execute(action: "GetLoRaGatewayList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 LoRa 网关列表
    ///
    /// 获取 LoRa 网关列表接口
    @inlinable
    public func getLoRaGatewayListPaginated(_ input: GetLoRaGatewayListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LoRaGatewayItem])> {
        self.client.paginate(input: input, region: region, command: self.getLoRaGatewayList, logger: logger, on: eventLoop)
    }

    /// 获取 LoRa 网关列表
    ///
    /// 获取 LoRa 网关列表接口
    @inlinable
    public func getLoRaGatewayListPaginated(_ input: GetLoRaGatewayListRequest, region: TCRegion? = nil, onResponse: @escaping (GetLoRaGatewayListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getLoRaGatewayList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取 LoRa 网关列表
    ///
    /// 获取 LoRa 网关列表接口
    @inlinable
    public func getLoRaGatewayListPaginator(_ input: GetLoRaGatewayListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<GetLoRaGatewayListRequest, GetLoRaGatewayListResponse>.ResultSequence, responses: TCClient.Paginator<GetLoRaGatewayListRequest, GetLoRaGatewayListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<GetLoRaGatewayListRequest, GetLoRaGatewayListResponse>.ResultSequence(input: input, region: region, command: self.getLoRaGatewayList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<GetLoRaGatewayListRequest, GetLoRaGatewayListResponse>.ResponseSequence(input: input, region: region, command: self.getLoRaGatewayList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
