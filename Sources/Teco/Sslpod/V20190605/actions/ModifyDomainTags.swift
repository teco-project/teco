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

extension Sslpod {
    /// ModifyDomainTags请求参数结构体
    public struct ModifyDomainTagsRequest: TCRequest {
        /// 账号下域名ID
        public let accountDomainId: Int64

        /// 更新后的tag，多个以逗号隔开
        public let tags: String

        public init(accountDomainId: Int64, tags: String) {
            self.accountDomainId = accountDomainId
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case accountDomainId = "AccountDomainId"
            case tags = "Tags"
        }
    }

    /// ModifyDomainTags返回参数结构体
    public struct ModifyDomainTagsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改域名tag
    @inlinable @discardableResult
    public func modifyDomainTags(_ input: ModifyDomainTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainTagsResponse> {
        self.client.execute(action: "ModifyDomainTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改域名tag
    @inlinable @discardableResult
    public func modifyDomainTags(_ input: ModifyDomainTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainTagsResponse {
        try await self.client.execute(action: "ModifyDomainTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改域名tag
    @inlinable @discardableResult
    public func modifyDomainTags(accountDomainId: Int64, tags: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDomainTagsResponse> {
        self.modifyDomainTags(.init(accountDomainId: accountDomainId, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 修改域名tag
    @inlinable @discardableResult
    public func modifyDomainTags(accountDomainId: Int64, tags: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainTagsResponse {
        try await self.modifyDomainTags(.init(accountDomainId: accountDomainId, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
