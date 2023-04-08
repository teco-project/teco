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

extension Live {
    /// ModifyLivePlayAuthKey请求参数结构体
    public struct ModifyLivePlayAuthKeyRequest: TCRequestModel {
        /// 播放域名。
        public let domainName: String

        /// 是否启用，0：关闭，1：启用。
        /// 不传表示不修改当前值。
        public let enable: Int64?

        /// 鉴权key。
        /// 不传表示不修改当前值。
        public let authKey: String?

        /// 有效时间，单位：秒。
        /// 不传表示不修改当前值。
        public let authDelta: UInt64?

        /// 鉴权备用key。
        /// 不传表示不修改当前值。
        public let authBackKey: String?

        public init(domainName: String, enable: Int64? = nil, authKey: String? = nil, authDelta: UInt64? = nil, authBackKey: String? = nil) {
            self.domainName = domainName
            self.enable = enable
            self.authKey = authKey
            self.authDelta = authDelta
            self.authBackKey = authBackKey
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case enable = "Enable"
            case authKey = "AuthKey"
            case authDelta = "AuthDelta"
            case authBackKey = "AuthBackKey"
        }
    }

    /// ModifyLivePlayAuthKey返回参数结构体
    public struct ModifyLivePlayAuthKeyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改播放鉴权key
    @inlinable @discardableResult
    public func modifyLivePlayAuthKey(_ input: ModifyLivePlayAuthKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLivePlayAuthKeyResponse> {
        self.client.execute(action: "ModifyLivePlayAuthKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改播放鉴权key
    @inlinable @discardableResult
    public func modifyLivePlayAuthKey(_ input: ModifyLivePlayAuthKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLivePlayAuthKeyResponse {
        try await self.client.execute(action: "ModifyLivePlayAuthKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改播放鉴权key
    @inlinable @discardableResult
    public func modifyLivePlayAuthKey(domainName: String, enable: Int64? = nil, authKey: String? = nil, authDelta: UInt64? = nil, authBackKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLivePlayAuthKeyResponse> {
        self.modifyLivePlayAuthKey(.init(domainName: domainName, enable: enable, authKey: authKey, authDelta: authDelta, authBackKey: authBackKey), region: region, logger: logger, on: eventLoop)
    }

    /// 修改播放鉴权key
    @inlinable @discardableResult
    public func modifyLivePlayAuthKey(domainName: String, enable: Int64? = nil, authKey: String? = nil, authDelta: UInt64? = nil, authBackKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLivePlayAuthKeyResponse {
        try await self.modifyLivePlayAuthKey(.init(domainName: domainName, enable: enable, authKey: authKey, authDelta: authDelta, authBackKey: authBackKey), region: region, logger: logger, on: eventLoop)
    }
}
