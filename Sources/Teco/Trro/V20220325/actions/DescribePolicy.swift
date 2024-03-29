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

extension Trro {
    /// DescribePolicy请求参数结构体
    public struct DescribePolicyRequest: TCPaginatedRequest {
        /// 查看权限的项目ID
        public let projectId: String

        /// 查看的权限模式，black为黑名单，white为白名单，不填默认为当前项目生效的权限模式
        public let policyMode: String?

        /// 模糊匹配模式，remoteMatch为远端设备ID匹配，fieldMatch为现场ID匹配，不填默认为remoteMatch
        public let searchMode: String?

        /// 模糊匹配关键字，不填默认不进行模糊匹配
        public let searchWords: String?

        /// 每页返回的最大数量，不填默认为10
        public let pageSize: Int64?

        /// 当前页码，不填默认为1（首页）
        public let pageNumber: Int64?

        public init(projectId: String, policyMode: String? = nil, searchMode: String? = nil, searchWords: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil) {
            self.projectId = projectId
            self.policyMode = policyMode
            self.searchMode = searchMode
            self.searchWords = searchWords
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case policyMode = "PolicyMode"
            case searchMode = "SearchMode"
            case searchWords = "SearchWords"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePolicyResponse) -> DescribePolicyRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(projectId: self.projectId, policyMode: self.policyMode, searchMode: self.searchMode, searchWords: self.searchWords, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1)
        }
    }

    /// DescribePolicy返回参数结构体
    public struct DescribePolicyResponse: TCPaginatedResponse {
        /// 权限模式
        public let policyMode: String

        /// 返回的权限模式是否为当前生效的权限模式
        public let policyEnabled: Bool

        /// 权限信息列表
        public let policyInfo: [PolicyInfo]

        /// 本次返回的权限信息数量
        public let num: Int64

        /// 权限信息总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyMode = "PolicyMode"
            case policyEnabled = "PolicyEnabled"
            case policyInfo = "PolicyInfo"
            case num = "Num"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PolicyInfo`` list from the paginated response.
        public func getItems() -> [PolicyInfo] {
            self.policyInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查看权限配置
    ///
    /// 用于查看权限配置
    @inlinable
    public func describePolicy(_ input: DescribePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePolicyResponse> {
        self.client.execute(action: "DescribePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看权限配置
    ///
    /// 用于查看权限配置
    @inlinable
    public func describePolicy(_ input: DescribePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePolicyResponse {
        try await self.client.execute(action: "DescribePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看权限配置
    ///
    /// 用于查看权限配置
    @inlinable
    public func describePolicy(projectId: String, policyMode: String? = nil, searchMode: String? = nil, searchWords: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePolicyResponse> {
        self.describePolicy(.init(projectId: projectId, policyMode: policyMode, searchMode: searchMode, searchWords: searchWords, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 查看权限配置
    ///
    /// 用于查看权限配置
    @inlinable
    public func describePolicy(projectId: String, policyMode: String? = nil, searchMode: String? = nil, searchWords: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePolicyResponse {
        try await self.describePolicy(.init(projectId: projectId, policyMode: policyMode, searchMode: searchMode, searchWords: searchWords, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 查看权限配置
    ///
    /// 用于查看权限配置
    @inlinable
    public func describePolicyPaginated(_ input: DescribePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PolicyInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePolicy, logger: logger, on: eventLoop)
    }

    /// 查看权限配置
    ///
    /// 用于查看权限配置
    @inlinable @discardableResult
    public func describePolicyPaginated(_ input: DescribePolicyRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePolicyResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePolicy, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看权限配置
    ///
    /// 用于查看权限配置
    ///
    /// - Returns: `AsyncSequence`s of ``PolicyInfo`` and ``DescribePolicyResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePolicyPaginator(_ input: DescribePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePolicyRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePolicy, logger: logger, on: eventLoop)
    }
}
