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

extension Teo {
    /// CreateCredential请求参数结构体
    public struct CreateCredentialRequest: TCRequestModel {
        public init() {
        }
    }

    /// CreateCredential返回参数结构体
    public struct CreateCredentialResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建凭证
    ///
    /// 用于创建COS回源私有凭证
    @inlinable @discardableResult
    public func createCredential(_ input: CreateCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCredentialResponse> {
        self.client.execute(action: "CreateCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建凭证
    ///
    /// 用于创建COS回源私有凭证
    @inlinable @discardableResult
    public func createCredential(_ input: CreateCredentialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCredentialResponse {
        try await self.client.execute(action: "CreateCredential", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建凭证
    ///
    /// 用于创建COS回源私有凭证
    @inlinable @discardableResult
    public func createCredential(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCredentialResponse> {
        self.createCredential(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 创建凭证
    ///
    /// 用于创建COS回源私有凭证
    @inlinable @discardableResult
    public func createCredential(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCredentialResponse {
        try await self.createCredential(.init(), region: region, logger: logger, on: eventLoop)
    }
}
