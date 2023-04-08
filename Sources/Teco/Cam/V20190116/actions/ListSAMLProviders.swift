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
    /// ListSAMLProviders请求参数结构体
    public struct ListSAMLProvidersRequest: TCRequestModel {
        public init() {
        }
    }

    /// ListSAMLProviders返回参数结构体
    public struct ListSAMLProvidersResponse: TCResponseModel {
        /// SAML身份提供商总数
        public let totalCount: Int64

        /// SAML身份提供商列表
        public let samlProviderSet: [SAMLProviderInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case samlProviderSet = "SAMLProviderSet"
            case requestId = "RequestId"
        }
    }

    /// 查询SAML身份提供商列表
    @inlinable
    public func listSAMLProviders(_ input: ListSAMLProvidersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSAMLProvidersResponse> {
        self.client.execute(action: "ListSAMLProviders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询SAML身份提供商列表
    @inlinable
    public func listSAMLProviders(_ input: ListSAMLProvidersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSAMLProvidersResponse {
        try await self.client.execute(action: "ListSAMLProviders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询SAML身份提供商列表
    @inlinable
    public func listSAMLProviders(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSAMLProvidersResponse> {
        self.listSAMLProviders(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询SAML身份提供商列表
    @inlinable
    public func listSAMLProviders(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSAMLProvidersResponse {
        try await self.listSAMLProviders(.init(), region: region, logger: logger, on: eventLoop)
    }
}
