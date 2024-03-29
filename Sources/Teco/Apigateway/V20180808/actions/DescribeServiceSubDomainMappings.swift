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
    /// DescribeServiceSubDomainMappings请求参数结构体
    public struct DescribeServiceSubDomainMappingsRequest: TCRequest {
        /// 服务唯一 ID。
        public let serviceId: String

        /// 服务绑定的自定义域名。
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

    /// DescribeServiceSubDomainMappings返回参数结构体
    public struct DescribeServiceSubDomainMappingsResponse: TCResponse {
        /// 自定义路径映射列表。
        public let result: ServiceSubDomainMappings

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询自定义域名的路径映射
    ///
    /// 本接口（DescribeServiceSubDomainMappings）用于查询自定义域名的路径映射。
    /// API 网关可绑定自定义域名到服务，并且可以对自定义域名的路径进行映射，可自定义不同的路径映射到服务中的三个环境，本接口用于查询绑定服务的自定义域名的路径映射列表。
    @inlinable
    public func describeServiceSubDomainMappings(_ input: DescribeServiceSubDomainMappingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceSubDomainMappingsResponse> {
        self.client.execute(action: "DescribeServiceSubDomainMappings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名的路径映射
    ///
    /// 本接口（DescribeServiceSubDomainMappings）用于查询自定义域名的路径映射。
    /// API 网关可绑定自定义域名到服务，并且可以对自定义域名的路径进行映射，可自定义不同的路径映射到服务中的三个环境，本接口用于查询绑定服务的自定义域名的路径映射列表。
    @inlinable
    public func describeServiceSubDomainMappings(_ input: DescribeServiceSubDomainMappingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceSubDomainMappingsResponse {
        try await self.client.execute(action: "DescribeServiceSubDomainMappings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自定义域名的路径映射
    ///
    /// 本接口（DescribeServiceSubDomainMappings）用于查询自定义域名的路径映射。
    /// API 网关可绑定自定义域名到服务，并且可以对自定义域名的路径进行映射，可自定义不同的路径映射到服务中的三个环境，本接口用于查询绑定服务的自定义域名的路径映射列表。
    @inlinable
    public func describeServiceSubDomainMappings(serviceId: String, subDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceSubDomainMappingsResponse> {
        self.describeServiceSubDomainMappings(.init(serviceId: serviceId, subDomain: subDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名的路径映射
    ///
    /// 本接口（DescribeServiceSubDomainMappings）用于查询自定义域名的路径映射。
    /// API 网关可绑定自定义域名到服务，并且可以对自定义域名的路径进行映射，可自定义不同的路径映射到服务中的三个环境，本接口用于查询绑定服务的自定义域名的路径映射列表。
    @inlinable
    public func describeServiceSubDomainMappings(serviceId: String, subDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceSubDomainMappingsResponse {
        try await self.describeServiceSubDomainMappings(.init(serviceId: serviceId, subDomain: subDomain), region: region, logger: logger, on: eventLoop)
    }
}
