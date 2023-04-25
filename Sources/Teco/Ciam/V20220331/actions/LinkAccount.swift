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

extension Ciam {
    /// LinkAccount请求参数结构体
    public struct LinkAccountRequest: TCRequestModel {
        /// 用户目录ID
        public let userStoreId: String

        /// 主用户ID
        public let primaryUserId: String

        /// 从用户ID
        public let secondaryUserId: String

        /// 融合属性
        ///
        /// <li> **PHONENUMBER** </li>	  手机号码
        /// <li> **EMAIL** </li>  邮箱
        public let userLinkedOnAttribute: String

        public init(userStoreId: String, primaryUserId: String, secondaryUserId: String, userLinkedOnAttribute: String) {
            self.userStoreId = userStoreId
            self.primaryUserId = primaryUserId
            self.secondaryUserId = secondaryUserId
            self.userLinkedOnAttribute = userLinkedOnAttribute
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case primaryUserId = "PrimaryUserId"
            case secondaryUserId = "SecondaryUserId"
            case userLinkedOnAttribute = "UserLinkedOnAttribute"
        }
    }

    /// LinkAccount返回参数结构体
    public struct LinkAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 账号融合
    @inlinable @discardableResult
    public func linkAccount(_ input: LinkAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LinkAccountResponse> {
        self.client.execute(action: "LinkAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 账号融合
    @inlinable @discardableResult
    public func linkAccount(_ input: LinkAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LinkAccountResponse {
        try await self.client.execute(action: "LinkAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 账号融合
    @inlinable @discardableResult
    public func linkAccount(userStoreId: String, primaryUserId: String, secondaryUserId: String, userLinkedOnAttribute: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LinkAccountResponse> {
        self.linkAccount(.init(userStoreId: userStoreId, primaryUserId: primaryUserId, secondaryUserId: secondaryUserId, userLinkedOnAttribute: userLinkedOnAttribute), region: region, logger: logger, on: eventLoop)
    }

    /// 账号融合
    @inlinable @discardableResult
    public func linkAccount(userStoreId: String, primaryUserId: String, secondaryUserId: String, userLinkedOnAttribute: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LinkAccountResponse {
        try await self.linkAccount(.init(userStoreId: userStoreId, primaryUserId: primaryUserId, secondaryUserId: secondaryUserId, userLinkedOnAttribute: userLinkedOnAttribute), region: region, logger: logger, on: eventLoop)
    }
}
