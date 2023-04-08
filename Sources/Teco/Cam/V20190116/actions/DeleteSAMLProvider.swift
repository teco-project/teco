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

import TecoCore

extension Cam {
    /// DeleteSAMLProvider请求参数结构体
    public struct DeleteSAMLProviderRequest: TCRequestModel {
        /// SAML身份提供商名称
        public let name: String

        public init(name: String) {
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// DeleteSAMLProvider返回参数结构体
    public struct DeleteSAMLProviderResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除SAML身份提供商
    @inlinable @discardableResult
    public func deleteSAMLProvider(_ input: DeleteSAMLProviderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSAMLProviderResponse> {
        self.client.execute(action: "DeleteSAMLProvider", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除SAML身份提供商
    @inlinable @discardableResult
    public func deleteSAMLProvider(_ input: DeleteSAMLProviderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSAMLProviderResponse {
        try await self.client.execute(action: "DeleteSAMLProvider", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除SAML身份提供商
    @inlinable @discardableResult
    public func deleteSAMLProvider(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSAMLProviderResponse> {
        self.deleteSAMLProvider(.init(name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 删除SAML身份提供商
    @inlinable @discardableResult
    public func deleteSAMLProvider(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSAMLProviderResponse {
        try await self.deleteSAMLProvider(.init(name: name), region: region, logger: logger, on: eventLoop)
    }
}
