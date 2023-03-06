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

extension Ame {
    /// DescribeStations请求参数结构体
    public struct DescribeStationsRequest: TCPaginatedRequest {
        /// 条数，必须大于0
        public let limit: UInt64

        /// offset (Default = 0)，Offset=Offset+Limit
        public let offset: UInt64

        public init(limit: UInt64, offset: UInt64) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeStationsResponse) -> DescribeStationsRequest? {
            guard response.haveMore > 0 else {
                return nil
            }
            return DescribeStationsRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeStations返回参数结构体
    public struct DescribeStationsResponse: TCPaginatedResponse {
        /// 总数量
        public let total: UInt64

        /// 分页偏移量
        public let offset: UInt64

        /// 当前页station数量
        public let size: UInt64

        /// 剩余数量（total-offset-size），通过这个值判断是否还有下一页
        public let haveMore: UInt64

        /// Stations 素材库列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let stations: [Station]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case offset = "Offset"
            case size = "Size"
            case haveMore = "HaveMore"
            case stations = "Stations"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Station] {
            self.stations ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取分类内容（Station）列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeStations(_ input: DescribeStationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStationsResponse> {
        self.client.execute(action: "DescribeStations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分类内容（Station）列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeStations(_ input: DescribeStationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStationsResponse {
        try await self.client.execute(action: "DescribeStations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分类内容（Station）列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeStations(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStationsResponse> {
        let input = DescribeStationsRequest(limit: limit, offset: offset)
        return self.client.execute(action: "DescribeStations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分类内容（Station）列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeStations(limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStationsResponse {
        let input = DescribeStationsRequest(limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeStations", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分类内容（Station）列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeStationsPaginated(_ input: DescribeStationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Station])> {
        self.client.paginate(input: input, region: region, command: self.describeStations, logger: logger, on: eventLoop)
    }

    /// 获取分类内容（Station）列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable @discardableResult
    public func describeStationsPaginated(_ input: DescribeStationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeStationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeStations, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取分类内容（Station）列表
    ///
    /// 该服务后续会停用，不再建议使用
    @inlinable
    public func describeStationsPaginator(_ input: DescribeStationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeStationsRequest, DescribeStationsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeStationsRequest, DescribeStationsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeStations, logger: logger, on: eventLoop)
    }
}
