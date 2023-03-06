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

extension Dc {
    /// DescribeInternetAddress请求参数结构体
    public struct DescribeInternetAddressRequest: TCPaginatedRequest {
        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值100
        public let limit: Int64?

        /// 过滤条件：
        /// <li>AddrType, 地址类型。0：BGP 1; 1: 电信， 2：移动， 3：联通</li>
        /// <li>AddrProto地址类型。0：IPv4 1:IPv6</li>
        /// <li>Status 地址状态。 0：使用中， 1：已停用， 2：已退还</li>
        /// <li>Subnet 互联网公网地址，数组</li>
        /// <InstanceIds>互联网公网地址ID，数组</li>
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInternetAddressResponse) -> DescribeInternetAddressRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInternetAddressRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeInternetAddress返回参数结构体
    public struct DescribeInternetAddressResponse: TCPaginatedResponse {
        /// 互联网公网地址数量
        public let totalCount: Int64

        /// 互联网公网地址列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subnets: [InternetAddressDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case subnets = "Subnets"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InternetAddressDetail] {
            self.subnets ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取用户互联网公网地址信息
    @inlinable
    public func describeInternetAddress(_ input: DescribeInternetAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternetAddressResponse> {
        self.client.execute(action: "DescribeInternetAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户互联网公网地址信息
    @inlinable
    public func describeInternetAddress(_ input: DescribeInternetAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternetAddressResponse {
        try await self.client.execute(action: "DescribeInternetAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户互联网公网地址信息
    @inlinable
    public func describeInternetAddress(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternetAddressResponse> {
        let input = DescribeInternetAddressRequest(offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeInternetAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户互联网公网地址信息
    @inlinable
    public func describeInternetAddress(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternetAddressResponse {
        let input = DescribeInternetAddressRequest(offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeInternetAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户互联网公网地址信息
    @inlinable
    public func describeInternetAddressPaginated(_ input: DescribeInternetAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InternetAddressDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeInternetAddress, logger: logger, on: eventLoop)
    }

    /// 获取用户互联网公网地址信息
    @inlinable @discardableResult
    public func describeInternetAddressPaginated(_ input: DescribeInternetAddressRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInternetAddressResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInternetAddress, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取用户互联网公网地址信息
    @inlinable
    public func describeInternetAddressPaginator(_ input: DescribeInternetAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeInternetAddressRequest, DescribeInternetAddressResponse>.ResultSequence, responses: TCClient.Paginator<DescribeInternetAddressRequest, DescribeInternetAddressResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInternetAddress, logger: logger, on: eventLoop)
    }
}
