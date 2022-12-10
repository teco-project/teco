//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 新增加速域名
    ///
    /// 本接口（AddEcdnDomain）用于创建加速域名。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41123"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func addEcdnDomain(_ input: AddEcdnDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddEcdnDomainResponse > {
        self.client.execute(action: "AddEcdnDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新增加速域名
    ///
    /// 本接口（AddEcdnDomain）用于创建加速域名。
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41123"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func addEcdnDomain(_ input: AddEcdnDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEcdnDomainResponse {
        try await self.client.execute(action: "AddEcdnDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AddEcdnDomain请求参数结构体
    public struct AddEcdnDomainRequest: TCRequestModel {
        /// 域名。
        public let domain: String
        
        /// 源站配置。
        public let origin: Origin
        
        /// 域名加速区域，mainland，overseas或global，分别表示中国境内加速，海外加速或全球加速。
        public let area: String
        
        /// 项目id，默认0。
        public let projectId: Int64?
        
        /// IP黑白名单配置。
        public let ipFilter: IpFilter
        
        /// IP限频配置。
        public let ipFreqLimit: IpFreqLimit
        
        /// 源站响应头部配置。
        public let responseHeader: ResponseHeader
        
        /// 节点缓存配置。
        public let cacheKey: CacheKey
        
        /// 缓存规则配置。
        public let cache: Cache
        
        /// Https配置。
        public let https: Https
        
        /// 访问协议强制跳转配置。
        public let forceRedirect: ForceRedirect
        
        /// 域名绑定的标签
        public let tag: [Tag]?
        
        /// WebSocket配置
        public let webSocket: WebSocket
        
        public init (domain: String, origin: Origin, area: String, projectId: Int64?, ipFilter: IpFilter, ipFreqLimit: IpFreqLimit, responseHeader: ResponseHeader, cacheKey: CacheKey, cache: Cache, https: Https, forceRedirect: ForceRedirect, tag: [Tag]?, webSocket: WebSocket) {
            self.domain = domain
            self.origin = origin
            self.area = area
            self.projectId = projectId
            self.ipFilter = ipFilter
            self.ipFreqLimit = ipFreqLimit
            self.responseHeader = responseHeader
            self.cacheKey = cacheKey
            self.cache = cache
            self.https = https
            self.forceRedirect = forceRedirect
            self.tag = tag
            self.webSocket = webSocket
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case origin = "Origin"
            case area = "Area"
            case projectId = "ProjectId"
            case ipFilter = "IpFilter"
            case ipFreqLimit = "IpFreqLimit"
            case responseHeader = "ResponseHeader"
            case cacheKey = "CacheKey"
            case cache = "Cache"
            case https = "Https"
            case forceRedirect = "ForceRedirect"
            case tag = "Tag"
            case webSocket = "WebSocket"
        }
    }
    
    /// AddEcdnDomain返回参数结构体
    public struct AddEcdnDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
