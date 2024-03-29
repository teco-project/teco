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

extension Waf {
    /// DeleteSession请求参数结构体
    public struct DeleteSessionRequest: TCRequest {
        /// 域名
        public let domain: String

        /// clb-waf 或者 sprta-waf
        public let edition: String?

        /// 要删除的SessionID
        public let sessionID: Int64?

        public init(domain: String, edition: String? = nil, sessionID: Int64? = nil) {
            self.domain = domain
            self.edition = edition
            self.sessionID = sessionID
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case edition = "Edition"
            case sessionID = "SessionID"
        }
    }

    /// DeleteSession返回参数结构体
    public struct DeleteSessionResponse: TCResponse {
        /// 结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除CC攻击的session设置
    @inlinable
    public func deleteSession(_ input: DeleteSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSessionResponse> {
        self.client.execute(action: "DeleteSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除CC攻击的session设置
    @inlinable
    public func deleteSession(_ input: DeleteSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSessionResponse {
        try await self.client.execute(action: "DeleteSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除CC攻击的session设置
    @inlinable
    public func deleteSession(domain: String, edition: String? = nil, sessionID: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSessionResponse> {
        self.deleteSession(.init(domain: domain, edition: edition, sessionID: sessionID), region: region, logger: logger, on: eventLoop)
    }

    /// 删除CC攻击的session设置
    @inlinable
    public func deleteSession(domain: String, edition: String? = nil, sessionID: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSessionResponse {
        try await self.deleteSession(.init(domain: domain, edition: edition, sessionID: sessionID), region: region, logger: logger, on: eventLoop)
    }
}
