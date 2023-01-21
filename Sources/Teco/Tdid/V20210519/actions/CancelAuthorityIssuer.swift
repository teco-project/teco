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
    /// CancelAuthorityIssuer请求参数结构体
    public struct CancelAuthorityIssuerRequest: TCRequestModel {
        /// did具体信息
        public let did: String

        public init(did: String) {
            self.did = did
        }

        enum CodingKeys: String, CodingKey {
            case did = "Did"
        }
    }

    /// CancelAuthorityIssuer返回参数结构体
    public struct CancelAuthorityIssuerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤消权威机构认证
    @inlinable @discardableResult
    public func cancelAuthorityIssuer(_ input: CancelAuthorityIssuerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelAuthorityIssuerResponse> {
        self.client.execute(action: "CancelAuthorityIssuer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤消权威机构认证
    @inlinable @discardableResult
    public func cancelAuthorityIssuer(_ input: CancelAuthorityIssuerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelAuthorityIssuerResponse {
        try await self.client.execute(action: "CancelAuthorityIssuer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤消权威机构认证
    @inlinable @discardableResult
    public func cancelAuthorityIssuer(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelAuthorityIssuerResponse> {
        self.cancelAuthorityIssuer(CancelAuthorityIssuerRequest(did: did), region: region, logger: logger, on: eventLoop)
    }

    /// 撤消权威机构认证
    @inlinable @discardableResult
    public func cancelAuthorityIssuer(did: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelAuthorityIssuerResponse {
        try await self.cancelAuthorityIssuer(CancelAuthorityIssuerRequest(did: did), region: region, logger: logger, on: eventLoop)
    }
}
