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
    /// ModifyCustomRuleStatus请求参数结构体
    public struct ModifyCustomRuleStatusRequest: TCRequest {
        /// 码规则ID
        public let customId: String

        /// 码规则状态 0:未生效 1:已生效 -1:已失效
        public let status: Int64

        /// 企业ID
        public let corpId: UInt64?

        public init(customId: String, status: Int64, corpId: UInt64? = nil) {
            self.customId = customId
            self.status = status
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case status = "Status"
            case corpId = "CorpId"
        }
    }

    /// ModifyCustomRuleStatus返回参数结构体
    public struct ModifyCustomRuleStatusResponse: TCResponse {
        /// 码规则ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customId = "CustomId"
            case requestId = "RequestId"
        }
    }

    /// 更新自定义码规则状态
    @inlinable
    public func modifyCustomRuleStatus(_ input: ModifyCustomRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleStatusResponse> {
        self.client.execute(action: "ModifyCustomRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新自定义码规则状态
    @inlinable
    public func modifyCustomRuleStatus(_ input: ModifyCustomRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleStatusResponse {
        try await self.client.execute(action: "ModifyCustomRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新自定义码规则状态
    @inlinable
    public func modifyCustomRuleStatus(customId: String, status: Int64, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCustomRuleStatusResponse> {
        self.modifyCustomRuleStatus(.init(customId: customId, status: status, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新自定义码规则状态
    @inlinable
    public func modifyCustomRuleStatus(customId: String, status: Int64, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomRuleStatusResponse {
        try await self.modifyCustomRuleStatus(.init(customId: customId, status: status, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }
}
