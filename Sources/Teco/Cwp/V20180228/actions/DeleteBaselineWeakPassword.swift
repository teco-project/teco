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

extension Cwp {
    /// DeleteBaselineWeakPassword请求参数结构体
    public struct DeleteBaselineWeakPasswordRequest: TCRequest {
        /// 弱口令Id
        public let passwordIds: [Int64]

        public init(passwordIds: [Int64]) {
            self.passwordIds = passwordIds
        }

        enum CodingKeys: String, CodingKey {
            case passwordIds = "PasswordIds"
        }
    }

    /// DeleteBaselineWeakPassword返回参数结构体
    public struct DeleteBaselineWeakPasswordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除基线弱口令
    @inlinable @discardableResult
    public func deleteBaselineWeakPassword(_ input: DeleteBaselineWeakPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBaselineWeakPasswordResponse> {
        self.client.execute(action: "DeleteBaselineWeakPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除基线弱口令
    @inlinable @discardableResult
    public func deleteBaselineWeakPassword(_ input: DeleteBaselineWeakPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBaselineWeakPasswordResponse {
        try await self.client.execute(action: "DeleteBaselineWeakPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除基线弱口令
    @inlinable @discardableResult
    public func deleteBaselineWeakPassword(passwordIds: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBaselineWeakPasswordResponse> {
        self.deleteBaselineWeakPassword(.init(passwordIds: passwordIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除基线弱口令
    @inlinable @discardableResult
    public func deleteBaselineWeakPassword(passwordIds: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBaselineWeakPasswordResponse {
        try await self.deleteBaselineWeakPassword(.init(passwordIds: passwordIds), region: region, logger: logger, on: eventLoop)
    }
}
