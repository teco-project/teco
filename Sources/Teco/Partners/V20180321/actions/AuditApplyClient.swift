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

extension Partners {
    /// AuditApplyClient请求参数结构体
    public struct AuditApplyClientRequest: TCRequest {
        /// 待审核客户账号ID
        public let clientUin: String

        /// 审核结果，可能的取值：accept/reject
        public let auditResult: String

        /// 申请理由，B类客户审核通过时必须填写申请理由
        public let note: String

        public init(clientUin: String, auditResult: String, note: String) {
            self.clientUin = clientUin
            self.auditResult = auditResult
            self.note = note
        }

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
            case auditResult = "AuditResult"
            case note = "Note"
        }
    }

    /// AuditApplyClient返回参数结构体
    public struct AuditApplyClientResponse: TCResponse {
        /// 代理商账号ID
        public let uin: String

        /// 客户账号ID
        public let clientUin: String

        /// 审核结果，包括accept/reject/qcloudaudit（腾讯云审核）
        public let auditResult: String

        /// 关联时间对应的时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let agentTime: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case clientUin = "ClientUin"
            case auditResult = "AuditResult"
            case agentTime = "AgentTime"
            case requestId = "RequestId"
        }
    }

    /// 审核客户
    ///
    /// 代理商可以审核其名下申请中代客
    @inlinable
    public func auditApplyClient(_ input: AuditApplyClientRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuditApplyClientResponse> {
        self.client.execute(action: "AuditApplyClient", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 审核客户
    ///
    /// 代理商可以审核其名下申请中代客
    @inlinable
    public func auditApplyClient(_ input: AuditApplyClientRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuditApplyClientResponse {
        try await self.client.execute(action: "AuditApplyClient", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 审核客户
    ///
    /// 代理商可以审核其名下申请中代客
    @inlinable
    public func auditApplyClient(clientUin: String, auditResult: String, note: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AuditApplyClientResponse> {
        self.auditApplyClient(.init(clientUin: clientUin, auditResult: auditResult, note: note), region: region, logger: logger, on: eventLoop)
    }

    /// 审核客户
    ///
    /// 代理商可以审核其名下申请中代客
    @inlinable
    public func auditApplyClient(clientUin: String, auditResult: String, note: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AuditApplyClientResponse {
        try await self.auditApplyClient(.init(clientUin: clientUin, auditResult: auditResult, note: note), region: region, logger: logger, on: eventLoop)
    }
}
