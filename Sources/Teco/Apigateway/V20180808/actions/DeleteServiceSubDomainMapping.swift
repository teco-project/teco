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
    /// DeleteServiceSubDomainMapping请求参数结构体
    public struct DeleteServiceSubDomainMappingRequest: TCRequest {
        /// 服务唯一 ID。
        public let serviceId: String

        /// 服务绑定的自定义域名。
        public let subDomain: String

        /// 待删除映射的环境名称，当前支持三个环境，test（测试环境）、prepub（预发布环境）和 release（发布环境）。
        public let environment: String

        public init(serviceId: String, subDomain: String, environment: String) {
            self.serviceId = serviceId
            self.subDomain = subDomain
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case subDomain = "SubDomain"
            case environment = "Environment"
        }
    }

    /// DeleteServiceSubDomainMapping返回参数结构体
    public struct DeleteServiceSubDomainMappingResponse: TCResponse {
        /// 删除自定义域名的路径映射操作是否成功。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除自定义域名的路径映射
    ///
    /// 本接口（DeleteServiceSubDomainMapping）用于删除服务中某个环境的自定义域名映射。
    /// 当用户使用自定义域名，并使用了自定义映射时，可使用此接口。但需注意，若删除了所有环境的映射时，调用此 API 均会返回失败。
    @inlinable
    public func deleteServiceSubDomainMapping(_ input: DeleteServiceSubDomainMappingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceSubDomainMappingResponse> {
        self.client.execute(action: "DeleteServiceSubDomainMapping", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义域名的路径映射
    ///
    /// 本接口（DeleteServiceSubDomainMapping）用于删除服务中某个环境的自定义域名映射。
    /// 当用户使用自定义域名，并使用了自定义映射时，可使用此接口。但需注意，若删除了所有环境的映射时，调用此 API 均会返回失败。
    @inlinable
    public func deleteServiceSubDomainMapping(_ input: DeleteServiceSubDomainMappingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceSubDomainMappingResponse {
        try await self.client.execute(action: "DeleteServiceSubDomainMapping", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义域名的路径映射
    ///
    /// 本接口（DeleteServiceSubDomainMapping）用于删除服务中某个环境的自定义域名映射。
    /// 当用户使用自定义域名，并使用了自定义映射时，可使用此接口。但需注意，若删除了所有环境的映射时，调用此 API 均会返回失败。
    @inlinable
    public func deleteServiceSubDomainMapping(serviceId: String, subDomain: String, environment: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceSubDomainMappingResponse> {
        self.deleteServiceSubDomainMapping(.init(serviceId: serviceId, subDomain: subDomain, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自定义域名的路径映射
    ///
    /// 本接口（DeleteServiceSubDomainMapping）用于删除服务中某个环境的自定义域名映射。
    /// 当用户使用自定义域名，并使用了自定义映射时，可使用此接口。但需注意，若删除了所有环境的映射时，调用此 API 均会返回失败。
    @inlinable
    public func deleteServiceSubDomainMapping(serviceId: String, subDomain: String, environment: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceSubDomainMappingResponse {
        try await self.deleteServiceSubDomainMapping(.init(serviceId: serviceId, subDomain: subDomain, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
