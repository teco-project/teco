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

extension Cdn {
    /// 更新加速域名配置
    ///
    /// UpdateDomainConfig 用于修改内容分发网络加速域名配置信息
    /// 注意：如果需要更新复杂类型的配置项，必须传递整个对象的所有属性，未传递的属性将使用默认值，建议通过查询接口获取配置属性后，直接修改后传递给本接口。Https配置由于证书的特殊性，更新时不用传递证书和密钥字段。
    /// 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。
    @inlinable
    public func updateDomainConfig(_ input: UpdateDomainConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateDomainConfigResponse > {
        self.client.execute(action: "UpdateDomainConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新加速域名配置
    ///
    /// UpdateDomainConfig 用于修改内容分发网络加速域名配置信息
    /// 注意：如果需要更新复杂类型的配置项，必须传递整个对象的所有属性，未传递的属性将使用默认值，建议通过查询接口获取配置属性后，直接修改后传递给本接口。Https配置由于证书的特殊性，更新时不用传递证书和密钥字段。
    /// 云审计相关：接口的入参可能包含密钥等敏感信息，所以此接口的入参不会上报到云审计。
    @inlinable
    public func updateDomainConfig(_ input: UpdateDomainConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainConfigResponse {
        try await self.client.execute(action: "UpdateDomainConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateDomainConfig请求参数结构体
    public struct UpdateDomainConfigRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// 项目 ID
        public let projectId: Int64?
        
        /// 源站配置
        public let origin: Origin
        
        /// IP 黑白名单配置
        public let ipFilter: IpFilter
        
        /// IP 限频配置
        public let ipFreqLimit: IpFreqLimit
        
        /// 状态码缓存配置
        public let statusCodeCache: StatusCodeCache
        
        /// 智能压缩配置
        public let compression: Compression
        
        /// 带宽封顶配置
        public let bandwidthAlert: BandwidthAlert
        
        /// Range 回源配置
        public let rangeOriginPull: RangeOriginPull
        
        /// 301/302 回源跟随配置
        public let followRedirect: FollowRedirect
        
        /// 错误码重定向配置（功能灰度中，尚未全量）
        public let errorPage: ErrorPage
        
        /// 请求头部配置
        public let requestHeader: RequestHeader
        
        /// 响应头部配置
        public let responseHeader: ResponseHeader
        
        /// 下载速度配置
        public let downstreamCapping: DownstreamCapping
        
        /// 节点缓存键配置
        public let cacheKey: CacheKey
        
        /// 头部缓存配置
        public let responseHeaderCache: ResponseHeaderCache
        
        /// 视频拖拽配置
        public let videoSeek: VideoSeek
        
        /// 缓存过期时间配置
        public let cache: Cache
        
        /// 跨国链路优化配置（已下线）
        public let originPullOptimization: OriginPullOptimization
        
        /// Https 加速配置
        public let https: Https
        
        /// 时间戳防盗链配置
        public let authentication: Authentication
        
        /// SEO 优化配置
        public let seo: Seo
        
        /// 访问协议强制跳转配置
        public let forceRedirect: ForceRedirect
        
        /// Referer 防盗链配置
        public let referer: Referer
        
        /// 浏览器缓存配置（功能灰度中，尚未全量）
        public let maxAge: MaxAge
        
        /// 地域属性特殊配置
        /// 适用于域名境内加速、境外加速配置不一致场景
        public let specificConfig: SpecificConfig
        
        /// 域名业务类型
        /// web：静态加速
        /// download：下载加速
        /// media：流媒体点播加速
        public let serviceType: String?
        
        /// 域名加速区域
        /// mainland：中国境内加速
        /// overseas：中国境外加速
        /// global：全球加速
        /// 从mainland/overseas修改至global时，域名的配置将被同步至overseas/mainland。若域名含有后端特殊配置，此类配置的同步过程有一定延时，请耐心等待
        public let area: String?
        
        /// 回源超时配置
        public let originPullTimeout: OriginPullTimeout
        
        /// 回源S3私有鉴权
        public let awsPrivateAccess: AwsPrivateAccess
        
        /// UA黑白名单配置
        public let userAgentFilter: UserAgentFilter
        
        /// 访问控制
        public let accessControl: AccessControl
        
        /// 访问URL重写配置
        public let urlRedirect: UrlRedirect
        
        /// 访问端口配置
        public let accessPort: [Int64]?
        
        /// 时间戳防盗链高级版配置，白名单功能
        public let advancedAuthentication: AdvancedAuthentication
        
        /// 回源鉴权高级版配置，白名单功能
        public let originAuthentication: OriginAuthentication
        
        /// Ipv6 访问配置
        public let ipv6Access: Ipv6Access
        
        /// 离线缓存
        public let offlineCache: OfflineCache
        
        /// 合并回源
        public let originCombine: OriginCombine
        
        /// POST请求传输配置
        public let postMaxSize: PostSize
        
        /// Quic访问（收费服务，详见计费说明和产品文档）
        public let quic: Quic
        
        /// 回源OSS私有鉴权
        public let ossPrivateAccess: OssPrivateAccess
        
        /// WebSocket配置
        public let webSocket: WebSocket
        
        /// 远程鉴权配置
        public let remoteAuthentication: RemoteAuthentication
        
        /// 共享CNAME配置，白名单功能
        public let shareCname: ShareCname
        
        /// 华为云对象存储回源鉴权
        public let hwPrivateAccess: HwPrivateAccess
        
        /// 七牛云对象存储回源鉴权
        public let qnPrivateAccess: QnPrivateAccess
        
        public init (domain: String, projectId: Int64?, origin: Origin, ipFilter: IpFilter, ipFreqLimit: IpFreqLimit, statusCodeCache: StatusCodeCache, compression: Compression, bandwidthAlert: BandwidthAlert, rangeOriginPull: RangeOriginPull, followRedirect: FollowRedirect, errorPage: ErrorPage, requestHeader: RequestHeader, responseHeader: ResponseHeader, downstreamCapping: DownstreamCapping, cacheKey: CacheKey, responseHeaderCache: ResponseHeaderCache, videoSeek: VideoSeek, cache: Cache, originPullOptimization: OriginPullOptimization, https: Https, authentication: Authentication, seo: Seo, forceRedirect: ForceRedirect, referer: Referer, maxAge: MaxAge, specificConfig: SpecificConfig, serviceType: String?, area: String?, originPullTimeout: OriginPullTimeout, awsPrivateAccess: AwsPrivateAccess, userAgentFilter: UserAgentFilter, accessControl: AccessControl, urlRedirect: UrlRedirect, accessPort: [Int64]?, advancedAuthentication: AdvancedAuthentication, originAuthentication: OriginAuthentication, ipv6Access: Ipv6Access, offlineCache: OfflineCache, originCombine: OriginCombine, postMaxSize: PostSize, quic: Quic, ossPrivateAccess: OssPrivateAccess, webSocket: WebSocket, remoteAuthentication: RemoteAuthentication, shareCname: ShareCname, hwPrivateAccess: HwPrivateAccess, qnPrivateAccess: QnPrivateAccess) {
            self.domain = domain
            self.projectId = projectId
            self.origin = origin
            self.ipFilter = ipFilter
            self.ipFreqLimit = ipFreqLimit
            self.statusCodeCache = statusCodeCache
            self.compression = compression
            self.bandwidthAlert = bandwidthAlert
            self.rangeOriginPull = rangeOriginPull
            self.followRedirect = followRedirect
            self.errorPage = errorPage
            self.requestHeader = requestHeader
            self.responseHeader = responseHeader
            self.downstreamCapping = downstreamCapping
            self.cacheKey = cacheKey
            self.responseHeaderCache = responseHeaderCache
            self.videoSeek = videoSeek
            self.cache = cache
            self.originPullOptimization = originPullOptimization
            self.https = https
            self.authentication = authentication
            self.seo = seo
            self.forceRedirect = forceRedirect
            self.referer = referer
            self.maxAge = maxAge
            self.specificConfig = specificConfig
            self.serviceType = serviceType
            self.area = area
            self.originPullTimeout = originPullTimeout
            self.awsPrivateAccess = awsPrivateAccess
            self.userAgentFilter = userAgentFilter
            self.accessControl = accessControl
            self.urlRedirect = urlRedirect
            self.accessPort = accessPort
            self.advancedAuthentication = advancedAuthentication
            self.originAuthentication = originAuthentication
            self.ipv6Access = ipv6Access
            self.offlineCache = offlineCache
            self.originCombine = originCombine
            self.postMaxSize = postMaxSize
            self.quic = quic
            self.ossPrivateAccess = ossPrivateAccess
            self.webSocket = webSocket
            self.remoteAuthentication = remoteAuthentication
            self.shareCname = shareCname
            self.hwPrivateAccess = hwPrivateAccess
            self.qnPrivateAccess = qnPrivateAccess
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case projectId = "ProjectId"
            case origin = "Origin"
            case ipFilter = "IpFilter"
            case ipFreqLimit = "IpFreqLimit"
            case statusCodeCache = "StatusCodeCache"
            case compression = "Compression"
            case bandwidthAlert = "BandwidthAlert"
            case rangeOriginPull = "RangeOriginPull"
            case followRedirect = "FollowRedirect"
            case errorPage = "ErrorPage"
            case requestHeader = "RequestHeader"
            case responseHeader = "ResponseHeader"
            case downstreamCapping = "DownstreamCapping"
            case cacheKey = "CacheKey"
            case responseHeaderCache = "ResponseHeaderCache"
            case videoSeek = "VideoSeek"
            case cache = "Cache"
            case originPullOptimization = "OriginPullOptimization"
            case https = "Https"
            case authentication = "Authentication"
            case seo = "Seo"
            case forceRedirect = "ForceRedirect"
            case referer = "Referer"
            case maxAge = "MaxAge"
            case specificConfig = "SpecificConfig"
            case serviceType = "ServiceType"
            case area = "Area"
            case originPullTimeout = "OriginPullTimeout"
            case awsPrivateAccess = "AwsPrivateAccess"
            case userAgentFilter = "UserAgentFilter"
            case accessControl = "AccessControl"
            case urlRedirect = "UrlRedirect"
            case accessPort = "AccessPort"
            case advancedAuthentication = "AdvancedAuthentication"
            case originAuthentication = "OriginAuthentication"
            case ipv6Access = "Ipv6Access"
            case offlineCache = "OfflineCache"
            case originCombine = "OriginCombine"
            case postMaxSize = "PostMaxSize"
            case quic = "Quic"
            case ossPrivateAccess = "OssPrivateAccess"
            case webSocket = "WebSocket"
            case remoteAuthentication = "RemoteAuthentication"
            case shareCname = "ShareCname"
            case hwPrivateAccess = "HwPrivateAccess"
            case qnPrivateAccess = "QnPrivateAccess"
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
}
