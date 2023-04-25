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

extension Live {
    /// DescribeLivePlayAuthKey请求参数结构体
    public struct DescribeLivePlayAuthKeyRequest: TCRequestModel {
        /// 域名。
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    /// DescribeLivePlayAuthKey返回参数结构体
    public struct DescribeLivePlayAuthKeyResponse: TCResponseModel {
        /// 播放鉴权key信息。
        public let playAuthKeyInfo: PlayAuthKeyInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case playAuthKeyInfo = "PlayAuthKeyInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询播放鉴权key
    ///
    /// 查询播放鉴权key。
    @inlinable
    public func describeLivePlayAuthKey(_ input: DescribeLivePlayAuthKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePlayAuthKeyResponse> {
        self.client.execute(action: "DescribeLivePlayAuthKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询播放鉴权key
    ///
    /// 查询播放鉴权key。
    @inlinable
    public func describeLivePlayAuthKey(_ input: DescribeLivePlayAuthKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePlayAuthKeyResponse {
        try await self.client.execute(action: "DescribeLivePlayAuthKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询播放鉴权key
    ///
    /// 查询播放鉴权key。
    @inlinable
    public func describeLivePlayAuthKey(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLivePlayAuthKeyResponse> {
        self.describeLivePlayAuthKey(.init(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询播放鉴权key
    ///
    /// 查询播放鉴权key。
    @inlinable
    public func describeLivePlayAuthKey(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLivePlayAuthKeyResponse {
        try await self.describeLivePlayAuthKey(.init(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }
}
