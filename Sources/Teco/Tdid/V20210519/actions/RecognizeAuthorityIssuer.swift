//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tdid {
    /// RecognizeAuthorityIssuer请求参数结构体
    public struct RecognizeAuthorityIssuerRequest: TCRequestModel {
        /// did具体信息
        public let did: String

        public init(did: String) {
            self.did = did
        }

        enum CodingKeys: String, CodingKey {
            case did = "Did"
        }
    }

    /// RecognizeAuthorityIssuer返回参数结构体
    public struct RecognizeAuthorityIssuerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 认证权威机构
    @inlinable @discardableResult
    public func recognizeAuthorityIssuer(_ input: RecognizeAuthorityIssuerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeAuthorityIssuerResponse> {
        self.client.execute(action: "RecognizeAuthorityIssuer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 认证权威机构
    @inlinable @discardableResult
    public func recognizeAuthorityIssuer(_ input: RecognizeAuthorityIssuerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeAuthorityIssuerResponse {
        try await self.client.execute(action: "RecognizeAuthorityIssuer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 认证权威机构
    @inlinable @discardableResult
    public func recognizeAuthorityIssuer(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeAuthorityIssuerResponse> {
        self.recognizeAuthorityIssuer(RecognizeAuthorityIssuerRequest(did: did), region: region, logger: logger, on: eventLoop)
    }

    /// 认证权威机构
    @inlinable @discardableResult
    public func recognizeAuthorityIssuer(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeAuthorityIssuerResponse {
        try await self.recognizeAuthorityIssuer(RecognizeAuthorityIssuerRequest(did: did), region: region, logger: logger, on: eventLoop)
    }
}
