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

extension Apigateway {
    /// UnBindSubDomain请求参数结构体
    public struct UnBindSubDomainRequest: TCRequest {
        /// 服务唯一 ID。
        public let serviceId: String

        /// 待解绑的自定义的域名。
        public let subDomain: String

        public init(serviceId: String, subDomain: String) {
            self.serviceId = serviceId
            self.subDomain = subDomain
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case subDomain = "SubDomain"
        }
    }

    /// UnBindSubDomain返回参数结构体
    public struct UnBindSubDomainResponse: TCResponse {
        /// 解绑自定义域名操作是否成功。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 服务解绑自定义域名
    ///
    /// 本接口（UnBindSubDomain）用于解绑自定义域名。
    /// 用户使用 API 网关绑定了自定义域名到服务中后，若想要解绑此自定义域名，可使用此接口。
    @inlinable
    public func unBindSubDomain(_ input: UnBindSubDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindSubDomainResponse> {
        self.client.execute(action: "UnBindSubDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务解绑自定义域名
    ///
    /// 本接口（UnBindSubDomain）用于解绑自定义域名。
    /// 用户使用 API 网关绑定了自定义域名到服务中后，若想要解绑此自定义域名，可使用此接口。
    @inlinable
    public func unBindSubDomain(_ input: UnBindSubDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindSubDomainResponse {
        try await self.client.execute(action: "UnBindSubDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务解绑自定义域名
    ///
    /// 本接口（UnBindSubDomain）用于解绑自定义域名。
    /// 用户使用 API 网关绑定了自定义域名到服务中后，若想要解绑此自定义域名，可使用此接口。
    @inlinable
    public func unBindSubDomain(serviceId: String, subDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindSubDomainResponse> {
        self.unBindSubDomain(.init(serviceId: serviceId, subDomain: subDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 服务解绑自定义域名
    ///
    /// 本接口（UnBindSubDomain）用于解绑自定义域名。
    /// 用户使用 API 网关绑定了自定义域名到服务中后，若想要解绑此自定义域名，可使用此接口。
    @inlinable
    public func unBindSubDomain(serviceId: String, subDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindSubDomainResponse {
        try await self.unBindSubDomain(.init(serviceId: serviceId, subDomain: subDomain), region: region, logger: logger, on: eventLoop)
    }
}
