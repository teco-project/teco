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

import TecoCore
import TecoPaginationHelpers

extension Chdfs {
    /// DescribeAccessRules请求参数结构体
    public struct DescribeAccessRulesRequest: TCPaginatedRequest {
        /// 权限组ID
        public let accessGroupId: String

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为所有
        public let limit: UInt64?

        public init(accessGroupId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.accessGroupId = accessGroupId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case accessGroupId = "AccessGroupId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAccessRulesResponse) -> DescribeAccessRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccessRulesRequest(accessGroupId: self.accessGroupId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAccessRules返回参数结构体
    public struct DescribeAccessRulesResponse: TCPaginatedResponse {
        /// 权限规则列表
        public let accessRules: [AccessRule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessRules = "AccessRules"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AccessRule] {
            self.accessRules
        }
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessRules(_ input: DescribeAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessRulesResponse> {
        self.client.execute(action: "DescribeAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessRules(_ input: DescribeAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessRulesResponse {
        try await self.client.execute(action: "DescribeAccessRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessRules(accessGroupId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessRulesResponse> {
        self.describeAccessRules(.init(accessGroupId: accessGroupId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessRules(accessGroupId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessRulesResponse {
        try await self.describeAccessRules(.init(accessGroupId: accessGroupId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessRulesPaginated(_ input: DescribeAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [AccessRule])> {
        self.client.paginate(input: input, region: region, command: self.describeAccessRules, logger: logger, on: eventLoop)
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func describeAccessRulesPaginated(_ input: DescribeAccessRulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccessRulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccessRules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看权限规则列表
    ///
    /// 通过权限组ID查看权限规则列表。
    ///
    /// - Returns: `AsyncSequence`s of `AccessRule` and `DescribeAccessRulesResponse` that can be iterated over asynchronously on demand.
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessRulesPaginator(_ input: DescribeAccessRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAccessRulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccessRules, logger: logger, on: eventLoop)
    }
}
