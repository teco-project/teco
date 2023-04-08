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

extension Cam {
    /// ListAttachedUserAllPolicies请求参数结构体
    public struct ListAttachedUserAllPoliciesRequest: TCRequestModel {
        /// 目标用户ID
        public let targetUin: UInt64

        /// 每页数量，必须大于 0 且小于或等于 200
        public let rp: UInt64

        /// 页码，从 1开始，不能大于 200
        public let page: UInt64

        /// 0:返回直接关联和随组关联策略，1:只返回直接关联策略，2:只返回随组关联策略
        public let attachType: UInt64

        /// 策略类型
        public let strategyType: UInt64?

        /// 搜索关键字
        public let keyword: String?

        public init(targetUin: UInt64, rp: UInt64, page: UInt64, attachType: UInt64, strategyType: UInt64? = nil, keyword: String? = nil) {
            self.targetUin = targetUin
            self.rp = rp
            self.page = page
            self.attachType = attachType
            self.strategyType = strategyType
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case targetUin = "TargetUin"
            case rp = "Rp"
            case page = "Page"
            case attachType = "AttachType"
            case strategyType = "StrategyType"
            case keyword = "Keyword"
        }
    }

    /// ListAttachedUserAllPolicies返回参数结构体
    public struct ListAttachedUserAllPoliciesResponse: TCResponseModel {
        /// 策略列表数据
        public let policyList: [AttachedUserPolicy]

        /// 策略总数
        public let totalNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyList = "PolicyList"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }
    }

    /// 列出用户关联的策略（包括随组关联）
    @inlinable
    public func listAttachedUserAllPolicies(_ input: ListAttachedUserAllPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttachedUserAllPoliciesResponse> {
        self.client.execute(action: "ListAttachedUserAllPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出用户关联的策略（包括随组关联）
    @inlinable
    public func listAttachedUserAllPolicies(_ input: ListAttachedUserAllPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAttachedUserAllPoliciesResponse {
        try await self.client.execute(action: "ListAttachedUserAllPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出用户关联的策略（包括随组关联）
    @inlinable
    public func listAttachedUserAllPolicies(targetUin: UInt64, rp: UInt64, page: UInt64, attachType: UInt64, strategyType: UInt64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAttachedUserAllPoliciesResponse> {
        self.listAttachedUserAllPolicies(.init(targetUin: targetUin, rp: rp, page: page, attachType: attachType, strategyType: strategyType, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 列出用户关联的策略（包括随组关联）
    @inlinable
    public func listAttachedUserAllPolicies(targetUin: UInt64, rp: UInt64, page: UInt64, attachType: UInt64, strategyType: UInt64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAttachedUserAllPoliciesResponse {
        try await self.listAttachedUserAllPolicies(.init(targetUin: targetUin, rp: rp, page: page, attachType: attachType, strategyType: strategyType, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }
}
