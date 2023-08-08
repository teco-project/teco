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

extension Trp {
    /// DescribeAgentCorps请求参数结构体
    public struct DescribeAgentCorpsRequest: TCRequestModel {
        /// 每页数量
        public let pageSize: UInt64?

        /// 页数
        public let pageNumber: UInt64?

        /// 渠道ID
        public let agentId: UInt64?

        /// 企业ID
        public let corpId: UInt64?

        public init(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, agentId: UInt64? = nil, corpId: UInt64? = nil) {
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.agentId = agentId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case agentId = "AgentId"
            case corpId = "CorpId"
        }
    }

    /// DescribeAgentCorps返回参数结构体
    public struct DescribeAgentCorpsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询渠道企业列表
    @inlinable @discardableResult
    public func describeAgentCorps(_ input: DescribeAgentCorpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentCorpsResponse> {
        self.client.execute(action: "DescribeAgentCorps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询渠道企业列表
    @inlinable @discardableResult
    public func describeAgentCorps(_ input: DescribeAgentCorpsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentCorpsResponse {
        try await self.client.execute(action: "DescribeAgentCorps", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询渠道企业列表
    @inlinable @discardableResult
    public func describeAgentCorps(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, agentId: UInt64? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentCorpsResponse> {
        self.describeAgentCorps(.init(pageSize: pageSize, pageNumber: pageNumber, agentId: agentId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询渠道企业列表
    @inlinable @discardableResult
    public func describeAgentCorps(pageSize: UInt64? = nil, pageNumber: UInt64? = nil, agentId: UInt64? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentCorpsResponse {
        try await self.describeAgentCorps(.init(pageSize: pageSize, pageNumber: pageNumber, agentId: agentId, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
