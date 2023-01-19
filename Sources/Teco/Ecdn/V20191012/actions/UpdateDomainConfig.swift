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

extension Ecdn {
    /// UpdateDomainConfig请求参数结构体
    public struct UpdateDomainConfigRequest: TCRequestModel {
        /// 域名。
        public let domain: String

        /// 源站配置。
        public let origin: Origin?

        /// 项目id。
        public let projectId: Int64?

        /// IP黑白名单配置。
        public let ipFilter: IpFilter?

        /// IP限频配置。
        public let ipFreqLimit: IpFreqLimit?

        /// 源站响应头部配置。
        public let responseHeader: ResponseHeader?

        /// 节点缓存配置。
        public let cacheKey: CacheKey?

        /// 缓存规则配置。
        public let cache: Cache?

        /// Https配置。
        public let https: Https?

        /// 访问协议强制跳转配置。
        public let forceRedirect: ForceRedirect?

        /// 域名加速区域，mainland，overseas或global，分别表示中国境内加速，海外加速或全球加速。
        public let area: String?

        /// WebSocket配置
        public let webSocket: WebSocket?

        public init(domain: String, origin: Origin? = nil, projectId: Int64? = nil, ipFilter: IpFilter? = nil, ipFreqLimit: IpFreqLimit? = nil, responseHeader: ResponseHeader? = nil, cacheKey: CacheKey? = nil, cache: Cache? = nil, https: Https? = nil, forceRedirect: ForceRedirect? = nil, area: String? = nil, webSocket: WebSocket? = nil) {
            self.domain = domain
            self.origin = origin
            self.projectId = projectId
            self.ipFilter = ipFilter
            self.ipFreqLimit = ipFreqLimit
            self.responseHeader = responseHeader
            self.cacheKey = cacheKey
            self.cache = cache
            self.https = https
            self.forceRedirect = forceRedirect
            self.area = area
            self.webSocket = webSocket
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case origin = "Origin"
            case projectId = "ProjectId"
            case ipFilter = "IpFilter"
            case ipFreqLimit = "IpFreqLimit"
            case responseHeader = "ResponseHeader"
            case cacheKey = "CacheKey"
            case cache = "Cache"
            case https = "Https"
            case forceRedirect = "ForceRedirect"
            case area = "Area"
            case webSocket = "WebSocket"
        }
    }

    /// UpdateDomainConfig返回参数结构体
    public struct UpdateDomainConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新域名配置
    ///
    /// 本接口（UpdateDomainConfig）用于更新ECDN加速域名配置信息。
    /// 注意：如果需要更新复杂类型的配置项，必须传递整个对象的所有属性，未传递的属性将使用默认值。建议通过查询接口获取配置属性后，直接修改后传递给本接口。Https配置由于证书的特殊性，更新时不用传递证书和密钥字段。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41116"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func updateDomainConfig(_ input: UpdateDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainConfigResponse> {
        self.client.execute(action: "UpdateDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新域名配置
    ///
    /// 本接口（UpdateDomainConfig）用于更新ECDN加速域名配置信息。
    /// 注意：如果需要更新复杂类型的配置项，必须传递整个对象的所有属性，未传递的属性将使用默认值。建议通过查询接口获取配置属性后，直接修改后传递给本接口。Https配置由于证书的特殊性，更新时不用传递证书和密钥字段。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41116"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func updateDomainConfig(_ input: UpdateDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainConfigResponse {
        try await self.client.execute(action: "UpdateDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新域名配置
    ///
    /// 本接口（UpdateDomainConfig）用于更新ECDN加速域名配置信息。
    /// 注意：如果需要更新复杂类型的配置项，必须传递整个对象的所有属性，未传递的属性将使用默认值。建议通过查询接口获取配置属性后，直接修改后传递给本接口。Https配置由于证书的特殊性，更新时不用传递证书和密钥字段。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41116"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func updateDomainConfig(domain: String, origin: Origin? = nil, projectId: Int64? = nil, ipFilter: IpFilter? = nil, ipFreqLimit: IpFreqLimit? = nil, responseHeader: ResponseHeader? = nil, cacheKey: CacheKey? = nil, cache: Cache? = nil, https: Https? = nil, forceRedirect: ForceRedirect? = nil, area: String? = nil, webSocket: WebSocket? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainConfigResponse> {
        self.updateDomainConfig(UpdateDomainConfigRequest(domain: domain, origin: origin, projectId: projectId, ipFilter: ipFilter, ipFreqLimit: ipFreqLimit, responseHeader: responseHeader, cacheKey: cacheKey, cache: cache, https: https, forceRedirect: forceRedirect, area: area, webSocket: webSocket), region: region, logger: logger, on: eventLoop)
    }

    /// 更新域名配置
    ///
    /// 本接口（UpdateDomainConfig）用于更新ECDN加速域名配置信息。
    /// 注意：如果需要更新复杂类型的配置项，必须传递整个对象的所有属性，未传递的属性将使用默认值。建议通过查询接口获取配置属性后，直接修改后传递给本接口。Https配置由于证书的特殊性，更新时不用传递证书和密钥字段。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/product/228/41116"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func updateDomainConfig(domain: String, origin: Origin? = nil, projectId: Int64? = nil, ipFilter: IpFilter? = nil, ipFreqLimit: IpFreqLimit? = nil, responseHeader: ResponseHeader? = nil, cacheKey: CacheKey? = nil, cache: Cache? = nil, https: Https? = nil, forceRedirect: ForceRedirect? = nil, area: String? = nil, webSocket: WebSocket? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainConfigResponse {
        try await self.updateDomainConfig(UpdateDomainConfigRequest(domain: domain, origin: origin, projectId: projectId, ipFilter: ipFilter, ipFreqLimit: ipFreqLimit, responseHeader: responseHeader, cacheKey: cacheKey, cache: cache, https: https, forceRedirect: forceRedirect, area: area, webSocket: webSocket), region: region, logger: logger, on: eventLoop)
    }
}
