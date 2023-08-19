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

extension Cloudaudit {
    /// ListAudits请求参数结构体
    public struct ListAuditsRequest: TCRequest {
        public init() {
        }
    }

    /// ListAudits返回参数结构体
    public struct ListAuditsResponse: TCResponse {
        /// 查询跟踪集概要集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let auditSummarys: [AuditSummary]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case auditSummarys = "AuditSummarys"
            case requestId = "RequestId"
        }
    }

    /// 查询跟踪集概要
    @inlinable
    public func listAudits(_ input: ListAuditsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAuditsResponse> {
        self.client.execute(action: "ListAudits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询跟踪集概要
    @inlinable
    public func listAudits(_ input: ListAuditsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAuditsResponse {
        try await self.client.execute(action: "ListAudits", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询跟踪集概要
    @inlinable
    public func listAudits(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAuditsResponse> {
        self.listAudits(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询跟踪集概要
    @inlinable
    public func listAudits(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAuditsResponse {
        try await self.listAudits(.init(), region: region, logger: logger, on: eventLoop)
    }
}
