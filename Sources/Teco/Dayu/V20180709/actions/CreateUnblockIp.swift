//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dayu {
    /// CreateUnblockIp请求参数结构体
    public struct CreateUnblockIpRequest: TCRequestModel {
        /// IP
        public let ip: String

        /// 解封类型（user：自助解封；auto：自动解封； update：升级解封；bind：绑定高防包解封）
        public let actionType: String

        public init(ip: String, actionType: String) {
            self.ip = ip
            self.actionType = actionType
        }

        enum CodingKeys: String, CodingKey {
            case ip = "Ip"
            case actionType = "ActionType"
        }
    }

    /// CreateUnblockIp返回参数结构体
    public struct CreateUnblockIpResponse: TCResponseModel {
        /// IP
        public let ip: String

        /// 解封类型（user：自助解封；auto：自动解封； update：升级解封；bind：绑定高防包解封）
        public let actionType: String

        /// 解封时间（预计解封时间）
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var unblockTime: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ip = "Ip"
            case actionType = "ActionType"
            case unblockTime = "UnblockTime"
            case requestId = "RequestId"
        }
    }

    /// IP解封操作
    @inlinable
    public func createUnblockIp(_ input: CreateUnblockIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateUnblockIpResponse > {
        self.client.execute(action: "CreateUnblockIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// IP解封操作
    @inlinable
    public func createUnblockIp(_ input: CreateUnblockIpRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUnblockIpResponse {
        try await self.client.execute(action: "CreateUnblockIp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// IP解封操作
    @inlinable
    public func createUnblockIp(ip: String, actionType: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateUnblockIpResponse > {
        self.createUnblockIp(CreateUnblockIpRequest(ip: ip, actionType: actionType), logger: logger, on: eventLoop)
    }

    /// IP解封操作
    @inlinable
    public func createUnblockIp(ip: String, actionType: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUnblockIpResponse {
        try await self.createUnblockIp(CreateUnblockIpRequest(ip: ip, actionType: actionType), logger: logger, on: eventLoop)
    }
}
