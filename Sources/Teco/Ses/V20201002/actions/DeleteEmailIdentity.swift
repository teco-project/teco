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
    /// DeleteEmailIdentity请求参数结构体
    public struct DeleteEmailIdentityRequest: TCRequest {
        /// 发信域名
        public let emailIdentity: String

        public init(emailIdentity: String) {
            self.emailIdentity = emailIdentity
        }

        enum CodingKeys: String, CodingKey {
            case emailIdentity = "EmailIdentity"
        }
    }

    /// DeleteEmailIdentity返回参数结构体
    public struct DeleteEmailIdentityResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除发信域名
    ///
    /// 删除发信域名，删除后，将不可再使用该域名进行发信
    @inlinable @discardableResult
    public func deleteEmailIdentity(_ input: DeleteEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEmailIdentityResponse> {
        self.client.execute(action: "DeleteEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除发信域名
    ///
    /// 删除发信域名，删除后，将不可再使用该域名进行发信
    @inlinable @discardableResult
    public func deleteEmailIdentity(_ input: DeleteEmailIdentityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEmailIdentityResponse {
        try await self.client.execute(action: "DeleteEmailIdentity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除发信域名
    ///
    /// 删除发信域名，删除后，将不可再使用该域名进行发信
    @inlinable @discardableResult
    public func deleteEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEmailIdentityResponse> {
        self.deleteEmailIdentity(.init(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }

    /// 删除发信域名
    ///
    /// 删除发信域名，删除后，将不可再使用该域名进行发信
    @inlinable @discardableResult
    public func deleteEmailIdentity(emailIdentity: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEmailIdentityResponse {
        try await self.deleteEmailIdentity(.init(emailIdentity: emailIdentity), region: region, logger: logger, on: eventLoop)
    }
}
