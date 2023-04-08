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

import TecoCore

extension Yunjing {
    /// DeleteReverseShellRules请求参数结构体
    public struct DeleteReverseShellRulesRequest: TCRequestModel {
        /// ID数组，最大100条。
        public let ids: [UInt64]

        public init(ids: [UInt64]) {
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }

    /// DeleteReverseShellRules返回参数结构体
    public struct DeleteReverseShellRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除反弹Shell规则
    @inlinable @discardableResult
    public func deleteReverseShellRules(_ input: DeleteReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReverseShellRulesResponse> {
        self.client.execute(action: "DeleteReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除反弹Shell规则
    @inlinable @discardableResult
    public func deleteReverseShellRules(_ input: DeleteReverseShellRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellRulesResponse {
        try await self.client.execute(action: "DeleteReverseShellRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除反弹Shell规则
    @inlinable @discardableResult
    public func deleteReverseShellRules(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteReverseShellRulesResponse> {
        self.deleteReverseShellRules(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }

    /// 删除反弹Shell规则
    @inlinable @discardableResult
    public func deleteReverseShellRules(ids: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReverseShellRulesResponse {
        try await self.deleteReverseShellRules(.init(ids: ids), region: region, logger: logger, on: eventLoop)
    }
}
