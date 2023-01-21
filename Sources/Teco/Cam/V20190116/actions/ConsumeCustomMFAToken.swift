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

extension Cam {
    /// ConsumeCustomMFAToken请求参数结构体
    public struct ConsumeCustomMFATokenRequest: TCRequestModel {
        /// 自定义多因子验证Token
        public let mfaToken: String

        public init(mfaToken: String) {
            self.mfaToken = mfaToken
        }

        enum CodingKeys: String, CodingKey {
            case mfaToken = "MFAToken"
        }
    }

    /// ConsumeCustomMFAToken返回参数结构体
    public struct ConsumeCustomMFATokenResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 验证自定义多因子Token
    @inlinable @discardableResult
    public func consumeCustomMFAToken(_ input: ConsumeCustomMFATokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConsumeCustomMFATokenResponse> {
        self.client.execute(action: "ConsumeCustomMFAToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证自定义多因子Token
    @inlinable @discardableResult
    public func consumeCustomMFAToken(_ input: ConsumeCustomMFATokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConsumeCustomMFATokenResponse {
        try await self.client.execute(action: "ConsumeCustomMFAToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证自定义多因子Token
    @inlinable @discardableResult
    public func consumeCustomMFAToken(mfaToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConsumeCustomMFATokenResponse> {
        self.consumeCustomMFAToken(ConsumeCustomMFATokenRequest(mfaToken: mfaToken), region: region, logger: logger, on: eventLoop)
    }

    /// 验证自定义多因子Token
    @inlinable @discardableResult
    public func consumeCustomMFAToken(mfaToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConsumeCustomMFATokenResponse {
        try await self.consumeCustomMFAToken(ConsumeCustomMFATokenRequest(mfaToken: mfaToken), region: region, logger: logger, on: eventLoop)
    }
}
