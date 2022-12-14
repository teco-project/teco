//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Trp {
    /// DescribeCorpQuotas请求参数结构体
    public struct DescribeCorpQuotasRequest: TCRequestModel {
        /// 渠道商ID，不要传
        public let agentId: UInt64?

        /// 页数
        public let pageNumber: UInt64?

        /// 每页数量
        public let pageSize: UInt64?

        /// 搜索企业ID
        public let keyword: String?

        public init(agentId: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, keyword: String? = nil) {
            self.agentId = agentId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case agentId = "AgentId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case keyword = "Keyword"
        }
    }

    /// DescribeCorpQuotas返回参数结构体
    public struct DescribeCorpQuotasResponse: TCResponseModel {
        /// 子企业额度使用情况
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpQuotas: [CorpQuota]?

        /// 记录总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case corpQuotas = "CorpQuotas"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(_ input: DescribeCorpQuotasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCorpQuotasResponse > {
        self.client.execute(action: "DescribeCorpQuotas", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(_ input: DescribeCorpQuotasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCorpQuotasResponse {
        try await self.client.execute(action: "DescribeCorpQuotas", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(agentId: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, keyword: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCorpQuotasResponse > {
        self.describeCorpQuotas(DescribeCorpQuotasRequest(agentId: agentId, pageNumber: pageNumber, pageSize: pageSize, keyword: keyword), logger: logger, on: eventLoop)
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(agentId: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, keyword: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCorpQuotasResponse {
        try await self.describeCorpQuotas(DescribeCorpQuotasRequest(agentId: agentId, pageNumber: pageNumber, pageSize: pageSize, keyword: keyword), logger: logger, on: eventLoop)
    }
}
