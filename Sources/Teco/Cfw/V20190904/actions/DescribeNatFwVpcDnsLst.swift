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

extension Cfw {
    /// DescribeNatFwVpcDnsLst请求参数结构体
    public struct DescribeNatFwVpcDnsLstRequest: TCPaginatedRequest {
        /// natfw 防火墙实例id
        public let natFwInsId: String

        /// natfw 过滤，以','分隔
        public let natInsIdFilter: String?

        /// 分页页数
        public let offset: Int64?

        /// 每页最多个数
        public let limit: Int64?

        public init(natFwInsId: String, natInsIdFilter: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.natFwInsId = natFwInsId
            self.natInsIdFilter = natInsIdFilter
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case natFwInsId = "NatFwInsId"
            case natInsIdFilter = "NatInsIdFilter"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeNatFwVpcDnsLstResponse) -> DescribeNatFwVpcDnsLstRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNatFwVpcDnsLstRequest(natFwInsId: self.natFwInsId, natInsIdFilter: self.natInsIdFilter, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeNatFwVpcDnsLst返回参数结构体
    public struct DescribeNatFwVpcDnsLstResponse: TCPaginatedResponse {
        /// nat防火墙vpc dns 信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcDnsSwitchLst: [VpcDnsInfo]?

        /// 返回参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnMsg: String?

        /// 开关总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcDnsSwitchLst = "VpcDnsSwitchLst"
            case returnMsg = "ReturnMsg"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VpcDnsInfo] {
            self.vpcDnsSwitchLst ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 展示当前natfw 实例对应的vpc dns开关
    @inlinable
    public func describeNatFwVpcDnsLst(_ input: DescribeNatFwVpcDnsLstRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwVpcDnsLstResponse> {
        self.client.execute(action: "DescribeNatFwVpcDnsLst", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示当前natfw 实例对应的vpc dns开关
    @inlinable
    public func describeNatFwVpcDnsLst(_ input: DescribeNatFwVpcDnsLstRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwVpcDnsLstResponse {
        try await self.client.execute(action: "DescribeNatFwVpcDnsLst", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示当前natfw 实例对应的vpc dns开关
    @inlinable
    public func describeNatFwVpcDnsLst(natFwInsId: String, natInsIdFilter: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwVpcDnsLstResponse> {
        let input = DescribeNatFwVpcDnsLstRequest(natFwInsId: natFwInsId, natInsIdFilter: natInsIdFilter, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeNatFwVpcDnsLst", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示当前natfw 实例对应的vpc dns开关
    @inlinable
    public func describeNatFwVpcDnsLst(natFwInsId: String, natInsIdFilter: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwVpcDnsLstResponse {
        let input = DescribeNatFwVpcDnsLstRequest(natFwInsId: natFwInsId, natInsIdFilter: natInsIdFilter, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeNatFwVpcDnsLst", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示当前natfw 实例对应的vpc dns开关
    @inlinable
    public func describeNatFwVpcDnsLstPaginated(_ input: DescribeNatFwVpcDnsLstRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VpcDnsInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeNatFwVpcDnsLst, logger: logger, on: eventLoop)
    }

    /// 展示当前natfw 实例对应的vpc dns开关
    @inlinable @discardableResult
    public func describeNatFwVpcDnsLstPaginated(_ input: DescribeNatFwVpcDnsLstRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNatFwVpcDnsLstResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNatFwVpcDnsLst, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 展示当前natfw 实例对应的vpc dns开关
    ///
    /// - Returns: `AsyncSequence`s of `VpcDnsInfo` and `DescribeNatFwVpcDnsLstResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNatFwVpcDnsLstPaginator(_ input: DescribeNatFwVpcDnsLstRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNatFwVpcDnsLstRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNatFwVpcDnsLst, logger: logger, on: eventLoop)
    }
}
