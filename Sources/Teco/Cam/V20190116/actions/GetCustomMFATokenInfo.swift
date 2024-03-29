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

extension Cam {
    /// GetCustomMFATokenInfo请求参数结构体
    public struct GetCustomMFATokenInfoRequest: TCRequest {
        /// 自定义多因子验证Token
        public let mfaToken: String

        public init(mfaToken: String) {
            self.mfaToken = mfaToken
        }

        enum CodingKeys: String, CodingKey {
            case mfaToken = "MFAToken"
        }
    }

    /// GetCustomMFATokenInfo返回参数结构体
    public struct GetCustomMFATokenInfoResponse: TCResponse {
        /// 自定义多因子验证Token对应的帐号Id
        public let uin: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case requestId = "RequestId"
        }
    }

    /// 获取自定义多因子Token关联信息
    @inlinable
    public func getCustomMFATokenInfo(_ input: GetCustomMFATokenInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomMFATokenInfoResponse> {
        self.client.execute(action: "GetCustomMFATokenInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自定义多因子Token关联信息
    @inlinable
    public func getCustomMFATokenInfo(_ input: GetCustomMFATokenInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomMFATokenInfoResponse {
        try await self.client.execute(action: "GetCustomMFATokenInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自定义多因子Token关联信息
    @inlinable
    public func getCustomMFATokenInfo(mfaToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomMFATokenInfoResponse> {
        self.getCustomMFATokenInfo(.init(mfaToken: mfaToken), region: region, logger: logger, on: eventLoop)
    }

    /// 获取自定义多因子Token关联信息
    @inlinable
    public func getCustomMFATokenInfo(mfaToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCustomMFATokenInfoResponse {
        try await self.getCustomMFATokenInfo(.init(mfaToken: mfaToken), region: region, logger: logger, on: eventLoop)
    }
}
