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

extension Lighthouse {
    /// DescribeModifyInstanceBundles请求参数结构体
    public struct DescribeModifyInstanceBundlesRequest: TCPaginatedRequest {
        /// 实例 ID。
        public let instanceId: String

        /// 过滤器列表。
        /// - bundle-id
        /// 按照【套餐 ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// - support-platform-type
        /// 按照【系统类型】进行过滤。
        /// 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）
        /// 类型：String
        /// 必选：否
        /// - bundle-type
        /// 按照 【套餐类型进行过滤】。
        /// 取值：GENERAL_BUNDLE (通用型套餐); STORAGE_BUNDLE(存储型套餐);ENTERPRISE_BUNDLE( 企业型套餐);EXCLUSIVE_BUNDLE(专属型套餐);BEFAST_BUNDLE(蜂驰型套餐);
        /// 类型：String
        /// 必选：否
        /// - bundle-state
        /// 按照【套餐状态】进行过滤。
        /// 取值: ‘ONLINE’(在线); ‘OFFLINE’(下线);
        /// 类型：String
        /// 必选：否
        /// 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。
        public let filters: [Filter]?

        /// 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        public let limit: Int64?

        public init(instanceId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeModifyInstanceBundlesResponse) -> DescribeModifyInstanceBundlesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeModifyInstanceBundles返回参数结构体
    public struct DescribeModifyInstanceBundlesResponse: TCPaginatedResponse {
        /// 符合条件的套餐数量。
        public let totalCount: Int64

        /// 变更套餐详细信息。
        public let modifyBundleSet: [ModifyBundle]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case modifyBundleSet = "ModifyBundleSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ModifyBundle`` list from the paginated response.
        public func getItems() -> [ModifyBundle] {
            self.modifyBundleSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(_ input: DescribeModifyInstanceBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModifyInstanceBundlesResponse> {
        self.client.execute(action: "DescribeModifyInstanceBundles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(_ input: DescribeModifyInstanceBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModifyInstanceBundlesResponse {
        try await self.client.execute(action: "DescribeModifyInstanceBundles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(instanceId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModifyInstanceBundlesResponse> {
        self.describeModifyInstanceBundles(.init(instanceId: instanceId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundles(instanceId: String, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModifyInstanceBundlesResponse {
        try await self.describeModifyInstanceBundles(.init(instanceId: instanceId, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable
    public func describeModifyInstanceBundlesPaginated(_ input: DescribeModifyInstanceBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ModifyBundle])> {
        self.client.paginate(input: input, region: region, command: self.describeModifyInstanceBundles, logger: logger, on: eventLoop)
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    @inlinable @discardableResult
    public func describeModifyInstanceBundlesPaginated(_ input: DescribeModifyInstanceBundlesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeModifyInstanceBundlesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeModifyInstanceBundles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例可变更套餐列表
    ///
    /// 本接口（DescribeModifyInstanceBundles）用于查询实例可变更套餐列表。
    ///
    /// - Returns: `AsyncSequence`s of ``ModifyBundle`` and ``DescribeModifyInstanceBundlesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeModifyInstanceBundlesPaginator(_ input: DescribeModifyInstanceBundlesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeModifyInstanceBundlesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeModifyInstanceBundles, logger: logger, on: eventLoop)
    }
}
