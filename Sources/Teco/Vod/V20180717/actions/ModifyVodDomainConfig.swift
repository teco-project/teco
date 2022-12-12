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

extension Vod {
    /// ModifyVodDomainConfig请求参数结构体
    public struct ModifyVodDomainConfigRequest: TCRequestModel {
        /// 域名。
        public let domain: String
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        /// [Referer 防盗链](/document/product/266/14046)规则。
        public let refererAuthPolicy: RefererAuthPolicy?
        
        /// [Key 防盗链](/document/product/266/14047)规则。
        public let urlSignatureAuthPolicy: UrlSignatureAuthPolicy?
        
        public init (domain: String, subAppId: UInt64? = nil, refererAuthPolicy: RefererAuthPolicy? = nil, urlSignatureAuthPolicy: UrlSignatureAuthPolicy? = nil) {
            self.domain = domain
            self.subAppId = subAppId
            self.refererAuthPolicy = refererAuthPolicy
            self.urlSignatureAuthPolicy = urlSignatureAuthPolicy
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case subAppId = "SubAppId"
            case refererAuthPolicy = "RefererAuthPolicy"
            case urlSignatureAuthPolicy = "UrlSignatureAuthPolicy"
        }
    }
    
    /// ModifyVodDomainConfig返回参数结构体
    public struct ModifyVodDomainConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改域名配置
    ///
    /// 该接口用于修改域名配置，可以修改域名的防盗链配置。
    /// 1、域名部署状态为 Online 状态时才允许修改域名的配置。
    @inlinable
    public func modifyVodDomainConfig(_ input: ModifyVodDomainConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyVodDomainConfigResponse > {
        self.client.execute(action: "ModifyVodDomainConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改域名配置
    ///
    /// 该接口用于修改域名配置，可以修改域名的防盗链配置。
    /// 1、域名部署状态为 Online 状态时才允许修改域名的配置。
    @inlinable
    public func modifyVodDomainConfig(_ input: ModifyVodDomainConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVodDomainConfigResponse {
        try await self.client.execute(action: "ModifyVodDomainConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
