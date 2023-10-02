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

extension Clb {
    /// DescribeLoadBalancersDetail请求参数结构体
    public struct DescribeLoadBalancersDetailRequest: TCPaginatedRequest {
        /// 返回负载均衡列表数目，默认20，最大值100。
        public let limit: UInt64?

        /// 返回负载均衡列表起始偏移量，默认0。
        public let offset: UInt64?

        /// 选择返回的Fields列表，系统仅会返回Fileds中填写的字段，可填写的字段详情请参见[LoadBalancerDetail](https://cloud.tencent.com/document/api/214/30694#LoadBalancerDetail)。若未在Fileds填写相关字段，则此字段返回null。Fileds中默认添加LoadBalancerId和LoadBalancerName字段。
        public let fields: [String]?

        /// 当Fields包含TargetId、TargetAddress、TargetPort、TargetWeight等Fields时，必选选择导出目标组的Target或者非目标组Target，值范围NODE、GROUP。
        public let targetType: String?

        /// 查询负载均衡详细信息列表条件，详细的过滤条件如下：
        /// - loadbalancer-id - String - 是否必填：否 - （过滤条件）按照 负载均衡ID 过滤，如："lb-12345678"。
        /// - project-id - String - 是否必填：否 - （过滤条件）按照 项目ID 过滤，如："0","123"。
        /// - network - String - 是否必填：否 - （过滤条件）按照 负载均衡网络类型 过滤，如："Public","Private"。
        /// - vip - String - 是否必填：否 - （过滤条件）按照 负载均衡Vip 过滤，如："1.1.1.1","2204::22:3"。
        /// - target-ip - String - 是否必填：否 - （过滤条件）按照 后端目标内网Ip 过滤，如："1.1.1.1","2203::214:4"。
        /// - vpcid - String - 是否必填：否 - （过滤条件）按照 负载均衡所属vpcId 过滤，如："vpc-12345678"。
        /// - zone - String - 是否必填：否 - （过滤条件）按照 负载均衡所属的可用区 过滤，如："ap-guangzhou-1"。
        /// - tag-key - String - 是否必填：否 - （过滤条件）按照 负载均衡标签的标签键 过滤，如："name"。
        /// - tag:* - String - 是否必填：否 - （过滤条件）按照 负载均衡的标签 过滤，':' 后面跟的是标签键。如：过滤标签键name，标签值zhangsan,lisi，{"Name": "tag:name","Values": ["zhangsan", "lisi"]}。
        /// - fuzzy-search - String - 是否必填：否 - （过滤条件）按照 负载均衡Vip，负载均衡名称 模糊搜索，如："1.1"。
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, fields: [String]? = nil, targetType: String? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.fields = fields
            self.targetType = targetType
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case fields = "Fields"
            case targetType = "TargetType"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLoadBalancersDetailResponse) -> DescribeLoadBalancersDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), fields: self.fields, targetType: self.targetType, filters: self.filters)
        }
    }

    /// DescribeLoadBalancersDetail返回参数结构体
    public struct DescribeLoadBalancersDetailResponse: TCPaginatedResponse {
        /// 负载均衡详情列表总数。
        public let totalCount: UInt64

        /// 负载均衡详情列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerDetailSet: [LoadBalancerDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case loadBalancerDetailSet = "LoadBalancerDetailSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LoadBalancerDetail`` list from the paginated response.
        public func getItems() -> [LoadBalancerDetail] {
            self.loadBalancerDetailSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询负载均衡详细信息
    ///
    /// 查询负载均衡的详细信息，包括监听器，规则及后端目标。
    @inlinable
    public func describeLoadBalancersDetail(_ input: DescribeLoadBalancersDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancersDetailResponse> {
        self.client.execute(action: "DescribeLoadBalancersDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡详细信息
    ///
    /// 查询负载均衡的详细信息，包括监听器，规则及后端目标。
    @inlinable
    public func describeLoadBalancersDetail(_ input: DescribeLoadBalancersDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancersDetailResponse {
        try await self.client.execute(action: "DescribeLoadBalancersDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡详细信息
    ///
    /// 查询负载均衡的详细信息，包括监听器，规则及后端目标。
    @inlinable
    public func describeLoadBalancersDetail(limit: UInt64? = nil, offset: UInt64? = nil, fields: [String]? = nil, targetType: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancersDetailResponse> {
        self.describeLoadBalancersDetail(.init(limit: limit, offset: offset, fields: fields, targetType: targetType, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡详细信息
    ///
    /// 查询负载均衡的详细信息，包括监听器，规则及后端目标。
    @inlinable
    public func describeLoadBalancersDetail(limit: UInt64? = nil, offset: UInt64? = nil, fields: [String]? = nil, targetType: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancersDetailResponse {
        try await self.describeLoadBalancersDetail(.init(limit: limit, offset: offset, fields: fields, targetType: targetType, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡详细信息
    ///
    /// 查询负载均衡的详细信息，包括监听器，规则及后端目标。
    @inlinable
    public func describeLoadBalancersDetailPaginated(_ input: DescribeLoadBalancersDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [LoadBalancerDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeLoadBalancersDetail, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡详细信息
    ///
    /// 查询负载均衡的详细信息，包括监听器，规则及后端目标。
    @inlinable @discardableResult
    public func describeLoadBalancersDetailPaginated(_ input: DescribeLoadBalancersDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLoadBalancersDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLoadBalancersDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡详细信息
    ///
    /// 查询负载均衡的详细信息，包括监听器，规则及后端目标。
    ///
    /// - Returns: `AsyncSequence`s of ``LoadBalancerDetail`` and ``DescribeLoadBalancersDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLoadBalancersDetailPaginator(_ input: DescribeLoadBalancersDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLoadBalancersDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLoadBalancersDetail, logger: logger, on: eventLoop)
    }
}
