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

extension Dsgc {
    /// DescribeDSPAComplianceGroups请求参数结构体
    public struct DescribeDSPAComplianceGroupsRequest: TCPaginatedRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 合规组ID
        public let complianceGroupId: Int64?

        /// 合规组名称
        public let name: String?

        /// 偏移量，默认值为0
        public let offset: Int64?

        /// 返回结果集数量，默认值是10000，最大值为10000，根据该资源的个数限制条件，该资源的个数不会超过10000，所以如果不输入该字段，默认获取全量数据
        public let limit: Int64?

        /// 合规组类型可选值：0 默认合规组, 1 系统合规组, 2 自定义合规组
        public let complianceGroupTypeList: [Int64]?

        public init(dspaId: String, complianceGroupId: Int64? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, complianceGroupTypeList: [Int64]? = nil) {
            self.dspaId = dspaId
            self.complianceGroupId = complianceGroupId
            self.name = name
            self.offset = offset
            self.limit = limit
            self.complianceGroupTypeList = complianceGroupTypeList
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case complianceGroupId = "ComplianceGroupId"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case complianceGroupTypeList = "ComplianceGroupTypeList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDSPAComplianceGroupsResponse) -> DescribeDSPAComplianceGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(dspaId: self.dspaId, complianceGroupId: self.complianceGroupId, name: self.name, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, complianceGroupTypeList: self.complianceGroupTypeList)
        }
    }

    /// DescribeDSPAComplianceGroups返回参数结构体
    public struct DescribeDSPAComplianceGroupsResponse: TCPaginatedResponse {
        /// 合规组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DspaDiscoveryComplianceGroupInfo]?

        /// 符合条件的合规组列表数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DspaDiscoveryComplianceGroupInfo`` list from the paginated response.
        public func getItems() -> [DspaDiscoveryComplianceGroupInfo] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取分类分级模板列表
    @inlinable
    public func describeDSPAComplianceGroups(_ input: DescribeDSPAComplianceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAComplianceGroupsResponse> {
        self.client.execute(action: "DescribeDSPAComplianceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分类分级模板列表
    @inlinable
    public func describeDSPAComplianceGroups(_ input: DescribeDSPAComplianceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAComplianceGroupsResponse {
        try await self.client.execute(action: "DescribeDSPAComplianceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分类分级模板列表
    @inlinable
    public func describeDSPAComplianceGroups(dspaId: String, complianceGroupId: Int64? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, complianceGroupTypeList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAComplianceGroupsResponse> {
        self.describeDSPAComplianceGroups(.init(dspaId: dspaId, complianceGroupId: complianceGroupId, name: name, offset: offset, limit: limit, complianceGroupTypeList: complianceGroupTypeList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级模板列表
    @inlinable
    public func describeDSPAComplianceGroups(dspaId: String, complianceGroupId: Int64? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, complianceGroupTypeList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAComplianceGroupsResponse {
        try await self.describeDSPAComplianceGroups(.init(dspaId: dspaId, complianceGroupId: complianceGroupId, name: name, offset: offset, limit: limit, complianceGroupTypeList: complianceGroupTypeList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级模板列表
    @inlinable
    public func describeDSPAComplianceGroupsPaginated(_ input: DescribeDSPAComplianceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DspaDiscoveryComplianceGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDSPAComplianceGroups, logger: logger, on: eventLoop)
    }

    /// 获取分类分级模板列表
    @inlinable @discardableResult
    public func describeDSPAComplianceGroupsPaginated(_ input: DescribeDSPAComplianceGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDSPAComplianceGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDSPAComplianceGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取分类分级模板列表
    ///
    /// - Returns: `AsyncSequence`s of ``DspaDiscoveryComplianceGroupInfo`` and ``DescribeDSPAComplianceGroupsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDSPAComplianceGroupsPaginator(_ input: DescribeDSPAComplianceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDSPAComplianceGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDSPAComplianceGroups, logger: logger, on: eventLoop)
    }
}