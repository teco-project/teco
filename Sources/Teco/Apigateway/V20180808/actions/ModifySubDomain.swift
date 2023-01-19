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

extension Apigateway {
    /// ModifySubDomain请求参数结构体
    public struct ModifySubDomainRequest: TCRequestModel {
        /// 服务唯一 ID。
        public let serviceId: String

        /// 待修改路径映射的自定义的域名。
        public let subDomain: String

        /// 是否修改为使用默认路径映射。为 true，表示使用默认路径映射，为 false，表示使用自定义路径映射。
        public let isDefaultMapping: Bool

        /// 证书 ID，协议包含 HTTPS 的时候要传该字段。
        public let certificateId: String?

        /// 修改后的自定义域名协议类型。（http，https 或 http&https)
        public let `protocol`: String?

        /// 修改后的路径映射列表。
        public let pathMappingSet: [PathMapping]?

        /// 网络类型 （'INNER' 或 'OUTER'）
        public let netType: String?

        /// 是否将HTTP请求强制跳转 HTTPS，默认为false。参数为 true时，API网关会将所有使用该自定义域名的 HTTP 协议的请求重定向至 HTTPS 协议进行转发。
        public let isForcedHttps: Bool?

        public init(serviceId: String, subDomain: String, isDefaultMapping: Bool, certificateId: String? = nil, protocol: String? = nil, pathMappingSet: [PathMapping]? = nil, netType: String? = nil, isForcedHttps: Bool? = nil) {
            self.serviceId = serviceId
            self.subDomain = subDomain
            self.isDefaultMapping = isDefaultMapping
            self.certificateId = certificateId
            self.`protocol` = `protocol`
            self.pathMappingSet = pathMappingSet
            self.netType = netType
            self.isForcedHttps = isForcedHttps
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case subDomain = "SubDomain"
            case isDefaultMapping = "IsDefaultMapping"
            case certificateId = "CertificateId"
            case `protocol` = "Protocol"
            case pathMappingSet = "PathMappingSet"
            case netType = "NetType"
            case isForcedHttps = "IsForcedHttps"
        }
    }

    /// ModifySubDomain返回参数结构体
    public struct ModifySubDomainResponse: TCResponseModel {
        /// 修改自定义域名操作是否成功。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 服务修改自定义域名
    ///
    /// 本接口（ModifySubDomain）用于修改服务的自定义域名设置中的路径映射，可以修改绑定自定义域名之前的路径映射规则。
    @inlinable
    public func modifySubDomain(_ input: ModifySubDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubDomainResponse> {
        self.client.execute(action: "ModifySubDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务修改自定义域名
    ///
    /// 本接口（ModifySubDomain）用于修改服务的自定义域名设置中的路径映射，可以修改绑定自定义域名之前的路径映射规则。
    @inlinable
    public func modifySubDomain(_ input: ModifySubDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubDomainResponse {
        try await self.client.execute(action: "ModifySubDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务修改自定义域名
    ///
    /// 本接口（ModifySubDomain）用于修改服务的自定义域名设置中的路径映射，可以修改绑定自定义域名之前的路径映射规则。
    @inlinable
    public func modifySubDomain(serviceId: String, subDomain: String, isDefaultMapping: Bool, certificateId: String? = nil, protocol: String? = nil, pathMappingSet: [PathMapping]? = nil, netType: String? = nil, isForcedHttps: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubDomainResponse> {
        self.modifySubDomain(ModifySubDomainRequest(serviceId: serviceId, subDomain: subDomain, isDefaultMapping: isDefaultMapping, certificateId: certificateId, protocol: `protocol`, pathMappingSet: pathMappingSet, netType: netType, isForcedHttps: isForcedHttps), region: region, logger: logger, on: eventLoop)
    }

    /// 服务修改自定义域名
    ///
    /// 本接口（ModifySubDomain）用于修改服务的自定义域名设置中的路径映射，可以修改绑定自定义域名之前的路径映射规则。
    @inlinable
    public func modifySubDomain(serviceId: String, subDomain: String, isDefaultMapping: Bool, certificateId: String? = nil, protocol: String? = nil, pathMappingSet: [PathMapping]? = nil, netType: String? = nil, isForcedHttps: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubDomainResponse {
        try await self.modifySubDomain(ModifySubDomainRequest(serviceId: serviceId, subDomain: subDomain, isDefaultMapping: isDefaultMapping, certificateId: certificateId, protocol: `protocol`, pathMappingSet: pathMappingSet, netType: netType, isForcedHttps: isForcedHttps), region: region, logger: logger, on: eventLoop)
    }
}
