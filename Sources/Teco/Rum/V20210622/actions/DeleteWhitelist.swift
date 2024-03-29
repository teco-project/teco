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

extension Rum {
    /// DeleteWhitelist请求参数结构体
    public struct DeleteWhitelistRequest: TCRequest {
        /// 实例ID
        public let instanceID: String

        /// 名单ID
        public let id: String

        public init(instanceID: String, id: String) {
            self.instanceID = instanceID
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case instanceID = "InstanceID"
            case id = "ID"
        }
    }

    /// DeleteWhitelist返回参数结构体
    public struct DeleteWhitelistResponse: TCResponse {
        /// 消息success
        public let msg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 删除白名单
    @inlinable
    public func deleteWhitelist(_ input: DeleteWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWhitelistResponse> {
        self.client.execute(action: "DeleteWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除白名单
    @inlinable
    public func deleteWhitelist(_ input: DeleteWhitelistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWhitelistResponse {
        try await self.client.execute(action: "DeleteWhitelist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除白名单
    @inlinable
    public func deleteWhitelist(instanceID: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWhitelistResponse> {
        self.deleteWhitelist(.init(instanceID: instanceID, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 删除白名单
    @inlinable
    public func deleteWhitelist(instanceID: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWhitelistResponse {
        try await self.deleteWhitelist(.init(instanceID: instanceID, id: id), region: region, logger: logger, on: eventLoop)
    }
}
