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
    /// BindSubDomain请求参数结构体
    public struct BindSubDomainRequest: TCRequestModel {
        /// 服务唯一 ID。
        public let serviceId: String

        /// 待绑定的自定义的域名。
        public let subDomain: String

        /// 服务支持协议，可选值为http、https、http&https。
        public let `protocol`: String

        /// 网络类型，可选值为OUTER、INNER。
        public let netType: String

        /// 是否使用默认路径映射，默认为 true。为 false 时，表示自定义路径映射，此时 PathMappingSet 必填。
        public let isDefaultMapping: Bool

        /// 默认域名。
        public let netSubDomain: String

        /// 待绑定自定义域名的证书唯一 ID。针对Protocol 为https或http&https可以选择上传。
        public let certificateId: String?

        /// 自定义域名路径映射，最多输入三个Environment，并且只能分别取值“test”、 ”prepub“、”release“。
        public let pathMappingSet: [PathMapping]?

        /// 是否将HTTP请求强制跳转 HTTPS，默认为false。参数为 true时，API网关会将所有使用该自定义域名的 HTTP 协议的请求重定向至 HTTPS 协议进行转发。
        public let isForcedHttps: Bool?

        public init(serviceId: String, subDomain: String, protocol: String, netType: String, isDefaultMapping: Bool, netSubDomain: String, certificateId: String? = nil, pathMappingSet: [PathMapping]? = nil, isForcedHttps: Bool? = nil) {
            self.serviceId = serviceId
            self.subDomain = subDomain
            self.protocol = `protocol`
            self.netType = netType
            self.isDefaultMapping = isDefaultMapping
            self.netSubDomain = netSubDomain
            self.certificateId = certificateId
            self.pathMappingSet = pathMappingSet
            self.isForcedHttps = isForcedHttps
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case subDomain = "SubDomain"
            case `protocol` = "Protocol"
            case netType = "NetType"
            case isDefaultMapping = "IsDefaultMapping"
            case netSubDomain = "NetSubDomain"
            case certificateId = "CertificateId"
            case pathMappingSet = "PathMappingSet"
            case isForcedHttps = "IsForcedHttps"
        }
    }

    /// BindSubDomain返回参数结构体
    public struct BindSubDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 服务绑定自定义域名
    ///
    /// 本接口（BindSubDomain）用于绑定自定义域名到服务。
    /// API 网关中每个服务都会提供一个默认的域名供用户调用，但当用户想使用自己的已有域名时，也可以将自定义域名绑定到此服务，在做好备案、与默认域名的 CNAME 后，可直接调用自定义域名。
    @inlinable @discardableResult
    public func bindSubDomain(_ input: BindSubDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindSubDomainResponse> {
        self.client.execute(action: "BindSubDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务绑定自定义域名
    ///
    /// 本接口（BindSubDomain）用于绑定自定义域名到服务。
    /// API 网关中每个服务都会提供一个默认的域名供用户调用，但当用户想使用自己的已有域名时，也可以将自定义域名绑定到此服务，在做好备案、与默认域名的 CNAME 后，可直接调用自定义域名。
    @inlinable @discardableResult
    public func bindSubDomain(_ input: BindSubDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindSubDomainResponse {
        try await self.client.execute(action: "BindSubDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务绑定自定义域名
    ///
    /// 本接口（BindSubDomain）用于绑定自定义域名到服务。
    /// API 网关中每个服务都会提供一个默认的域名供用户调用，但当用户想使用自己的已有域名时，也可以将自定义域名绑定到此服务，在做好备案、与默认域名的 CNAME 后，可直接调用自定义域名。
    @inlinable @discardableResult
    public func bindSubDomain(serviceId: String, subDomain: String, protocol: String, netType: String, isDefaultMapping: Bool, netSubDomain: String, certificateId: String? = nil, pathMappingSet: [PathMapping]? = nil, isForcedHttps: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindSubDomainResponse> {
        self.bindSubDomain(.init(serviceId: serviceId, subDomain: subDomain, protocol: `protocol`, netType: netType, isDefaultMapping: isDefaultMapping, netSubDomain: netSubDomain, certificateId: certificateId, pathMappingSet: pathMappingSet, isForcedHttps: isForcedHttps), region: region, logger: logger, on: eventLoop)
    }

    /// 服务绑定自定义域名
    ///
    /// 本接口（BindSubDomain）用于绑定自定义域名到服务。
    /// API 网关中每个服务都会提供一个默认的域名供用户调用，但当用户想使用自己的已有域名时，也可以将自定义域名绑定到此服务，在做好备案、与默认域名的 CNAME 后，可直接调用自定义域名。
    @inlinable @discardableResult
    public func bindSubDomain(serviceId: String, subDomain: String, protocol: String, netType: String, isDefaultMapping: Bool, netSubDomain: String, certificateId: String? = nil, pathMappingSet: [PathMapping]? = nil, isForcedHttps: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindSubDomainResponse {
        try await self.bindSubDomain(.init(serviceId: serviceId, subDomain: subDomain, protocol: `protocol`, netType: netType, isDefaultMapping: isDefaultMapping, netSubDomain: netSubDomain, certificateId: certificateId, pathMappingSet: pathMappingSet, isForcedHttps: isForcedHttps), region: region, logger: logger, on: eventLoop)
    }
}
