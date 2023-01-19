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

extension Tcr {
    /// DeleteInstanceToken请求参数结构体
    public struct DeleteInstanceTokenRequest: TCRequestModel {
        /// 实例 ID
        public let registryId: String

        /// 访问凭证 ID
        public let tokenId: String

        public init(registryId: String, tokenId: String) {
            self.registryId = registryId
            self.tokenId = tokenId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case tokenId = "TokenId"
        }
    }

    /// DeleteInstanceToken返回参数结构体
    public struct DeleteInstanceTokenResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除长期访问凭证
    @inlinable
    public func deleteInstanceToken(_ input: DeleteInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceTokenResponse> {
        self.client.execute(action: "DeleteInstanceToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除长期访问凭证
    @inlinable
    public func deleteInstanceToken(_ input: DeleteInstanceTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceTokenResponse {
        try await self.client.execute(action: "DeleteInstanceToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除长期访问凭证
    @inlinable
    public func deleteInstanceToken(registryId: String, tokenId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceTokenResponse> {
        self.deleteInstanceToken(DeleteInstanceTokenRequest(registryId: registryId, tokenId: tokenId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除长期访问凭证
    @inlinable
    public func deleteInstanceToken(registryId: String, tokenId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceTokenResponse {
        try await self.deleteInstanceToken(DeleteInstanceTokenRequest(registryId: registryId, tokenId: tokenId), region: region, logger: logger, on: eventLoop)
    }
}
