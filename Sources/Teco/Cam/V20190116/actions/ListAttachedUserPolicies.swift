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

extension Cam {
    /// ListAttachedUserPolicies请求参数结构体
    public struct ListAttachedUserPoliciesRequest: TCRequest {
        /// 子账号 uin
        public let targetUin: UInt64

        /// 页码，默认值是 1，从 1 开始
        public let page: UInt64?

        /// 每页大小，默认值是 20
        public let rp: UInt64?

        public init(targetUin: UInt64, page: UInt64? = nil, rp: UInt64? = nil) {
            self.targetUin = targetUin
            self.page = page
            self.rp = rp
        }

        enum CodingKeys: String, CodingKey {
            case targetUin = "TargetUin"
            case page = "Page"
            case rp = "Rp"
        }
    }

    /// ListAttachedUserPolicies返回参数结构体
    public struct ListAttachedUserPoliciesResponse: TCResponse {
        /// 策略总数
        public let totalNum: UInt64

        /// 策略列表
        public let list: [AttachPolicyInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case list = "List"
            case requestId = "RequestId"
        }
    }

    /// 查询子账号关联的策略列表
    ///
    /// 本接口（ListAttachedUserPolicies）可用于查询子账号关联的策略列表。
    @inlinable
    public func listAttachedUserPolicies(_ input: ListAttachedUserPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttachedUserPoliciesResponse> {
        self.client.execute(action: "ListAttachedUserPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子账号关联的策略列表
    ///
    /// 本接口（ListAttachedUserPolicies）可用于查询子账号关联的策略列表。
    @inlinable
    public func listAttachedUserPolicies(_ input: ListAttachedUserPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAttachedUserPoliciesResponse {
        try await self.client.execute(action: "ListAttachedUserPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子账号关联的策略列表
    ///
    /// 本接口（ListAttachedUserPolicies）可用于查询子账号关联的策略列表。
    @inlinable
    public func listAttachedUserPolicies(targetUin: UInt64, page: UInt64? = nil, rp: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttachedUserPoliciesResponse> {
        self.listAttachedUserPolicies(.init(targetUin: targetUin, page: page, rp: rp), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子账号关联的策略列表
    ///
    /// 本接口（ListAttachedUserPolicies）可用于查询子账号关联的策略列表。
    @inlinable
    public func listAttachedUserPolicies(targetUin: UInt64, page: UInt64? = nil, rp: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAttachedUserPoliciesResponse {
        try await self.listAttachedUserPolicies(.init(targetUin: targetUin, page: page, rp: rp), region: region, logger: logger, on: eventLoop)
    }
}
