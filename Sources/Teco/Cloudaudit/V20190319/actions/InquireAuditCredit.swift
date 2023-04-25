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

extension Cloudaudit {
    /// InquireAuditCredit请求参数结构体
    public struct InquireAuditCreditRequest: TCRequestModel {
        public init() {
        }
    }

    /// InquireAuditCredit返回参数结构体
    public struct InquireAuditCreditResponse: TCResponseModel {
        /// 可创建跟踪集的数量
        public let auditAmount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case auditAmount = "AuditAmount"
            case requestId = "RequestId"
        }
    }

    /// 查询用户可创建跟踪集的数量
    @inlinable
    public func inquireAuditCredit(_ input: InquireAuditCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquireAuditCreditResponse> {
        self.client.execute(action: "InquireAuditCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户可创建跟踪集的数量
    @inlinable
    public func inquireAuditCredit(_ input: InquireAuditCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquireAuditCreditResponse {
        try await self.client.execute(action: "InquireAuditCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户可创建跟踪集的数量
    @inlinable
    public func inquireAuditCredit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquireAuditCreditResponse> {
        self.inquireAuditCredit(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户可创建跟踪集的数量
    @inlinable
    public func inquireAuditCredit(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquireAuditCreditResponse {
        try await self.inquireAuditCredit(.init(), region: region, logger: logger, on: eventLoop)
    }
}
