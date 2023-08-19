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

extension Ses {
    /// DeleteEmailAddress请求参数结构体
    public struct DeleteEmailAddressRequest: TCRequest {
        /// 发信地址
        public let emailAddress: String

        public init(emailAddress: String) {
            self.emailAddress = emailAddress
        }

        enum CodingKeys: String, CodingKey {
            case emailAddress = "EmailAddress"
        }
    }

    /// DeleteEmailAddress返回参数结构体
    public struct DeleteEmailAddressResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除发信地址
    ///
    /// 删除发信人地址
    @inlinable @discardableResult
    public func deleteEmailAddress(_ input: DeleteEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEmailAddressResponse> {
        self.client.execute(action: "DeleteEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除发信地址
    ///
    /// 删除发信人地址
    @inlinable @discardableResult
    public func deleteEmailAddress(_ input: DeleteEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEmailAddressResponse {
        try await self.client.execute(action: "DeleteEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除发信地址
    ///
    /// 删除发信人地址
    @inlinable @discardableResult
    public func deleteEmailAddress(emailAddress: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEmailAddressResponse> {
        self.deleteEmailAddress(.init(emailAddress: emailAddress), region: region, logger: logger, on: eventLoop)
    }

    /// 删除发信地址
    ///
    /// 删除发信人地址
    @inlinable @discardableResult
    public func deleteEmailAddress(emailAddress: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEmailAddressResponse {
        try await self.deleteEmailAddress(.init(emailAddress: emailAddress), region: region, logger: logger, on: eventLoop)
    }
}
