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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Intlpartnersmgt {
    /// QueryPartnerCredit请求参数结构体
    public struct QueryPartnerCreditRequest: TCRequestModel {
        public init() {
        }
    }

    /// QueryPartnerCredit返回参数结构体
    public struct QueryPartnerCreditResponse: TCResponseModel {
        /// 已分配额度
        public let allocatedCredit: Float

        /// 额度总数
        public let totalCredit: Float

        /// 剩余额度
        public let remainingCredit: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case allocatedCredit = "AllocatedCredit"
            case totalCredit = "TotalCredit"
            case remainingCredit = "RemainingCredit"
            case requestId = "RequestId"
        }
    }

    /// 查询合作伙伴信用额度
    ///
    /// 查询合作伙伴自己的总信用额度、可用信用额度、已使用信用额度，单位为美元
    @inlinable
    public func queryPartnerCredit(_ input: QueryPartnerCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryPartnerCreditResponse> {
        self.client.execute(action: "QueryPartnerCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询合作伙伴信用额度
    ///
    /// 查询合作伙伴自己的总信用额度、可用信用额度、已使用信用额度，单位为美元
    @inlinable
    public func queryPartnerCredit(_ input: QueryPartnerCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryPartnerCreditResponse {
        try await self.client.execute(action: "QueryPartnerCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询合作伙伴信用额度
    ///
    /// 查询合作伙伴自己的总信用额度、可用信用额度、已使用信用额度，单位为美元
    @inlinable
    public func queryPartnerCredit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryPartnerCreditResponse> {
        self.queryPartnerCredit(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询合作伙伴信用额度
    ///
    /// 查询合作伙伴自己的总信用额度、可用信用额度、已使用信用额度，单位为美元
    @inlinable
    public func queryPartnerCredit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryPartnerCreditResponse {
        try await self.queryPartnerCredit(.init(), region: region, logger: logger, on: eventLoop)
    }
}
