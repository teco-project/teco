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

extension Cam {
    /// CreateUserOIDCConfig请求参数结构体
    public struct CreateUserOIDCConfigRequest: TCRequestModel {
        /// 身份提供商URL。OpenID Connect身份提供商标识。
        /// 对应企业IdP提供的Openid-configuration中"issuer"字段的值。
        public let identityUrl: String

        /// 签名公钥，需要base64_encode。验证OpenID Connect身份提供商ID Token签名的公钥。为了您的帐号安全，建议您定期轮换签名公钥。
        public let identityKey: String

        /// 客户端ID，在OpenID Connect身份提供商注册的客户端ID。
        public let clientId: String

        /// 授权请求Endpoint，OpenID Connect身份提供商授权地址。对应企业IdP提供的Openid-configuration中"authorization_endpoint"字段的值。
        public let authorizationEndpoint: String

        /// 授权请求Response type，固定值id_token
        public let responseType: String

        /// 授权请求Response mode。授权请求返回模式，form_post和fragment两种可选模式，推荐选择form_post模式。
        public let responseMode: String

        /// 映射字段名称。IdP的id_token中哪一个字段映射到子用户的用户名，通常是sub或者name字段
        public let mappingFiled: String

        /// 授权请求Scope。openid; email;profile。授权请求信息范围。默认必选openid。
        public let scope: [String]?

        /// 描述
        public let description: String?

        public init(identityUrl: String, identityKey: String, clientId: String, authorizationEndpoint: String, responseType: String, responseMode: String, mappingFiled: String, scope: [String]? = nil, description: String? = nil) {
            self.identityUrl = identityUrl
            self.identityKey = identityKey
            self.clientId = clientId
            self.authorizationEndpoint = authorizationEndpoint
            self.responseType = responseType
            self.responseMode = responseMode
            self.mappingFiled = mappingFiled
            self.scope = scope
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case identityUrl = "IdentityUrl"
            case identityKey = "IdentityKey"
            case clientId = "ClientId"
            case authorizationEndpoint = "AuthorizationEndpoint"
            case responseType = "ResponseType"
            case responseMode = "ResponseMode"
            case mappingFiled = "MappingFiled"
            case scope = "Scope"
            case description = "Description"
        }
    }

    /// CreateUserOIDCConfig返回参数结构体
    public struct CreateUserOIDCConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建用户OIDC配置
    ///
    /// 创建用户OIDC配置。只能创建一个用户OIDC身份提供商，并且创建用户OIDC配置之后会自动关闭用户SAML SSO身份提供商。
    @inlinable @discardableResult
    public func createUserOIDCConfig(_ input: CreateUserOIDCConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserOIDCConfigResponse> {
        self.client.execute(action: "CreateUserOIDCConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建用户OIDC配置
    ///
    /// 创建用户OIDC配置。只能创建一个用户OIDC身份提供商，并且创建用户OIDC配置之后会自动关闭用户SAML SSO身份提供商。
    @inlinable @discardableResult
    public func createUserOIDCConfig(_ input: CreateUserOIDCConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserOIDCConfigResponse {
        try await self.client.execute(action: "CreateUserOIDCConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建用户OIDC配置
    ///
    /// 创建用户OIDC配置。只能创建一个用户OIDC身份提供商，并且创建用户OIDC配置之后会自动关闭用户SAML SSO身份提供商。
    @inlinable @discardableResult
    public func createUserOIDCConfig(identityUrl: String, identityKey: String, clientId: String, authorizationEndpoint: String, responseType: String, responseMode: String, mappingFiled: String, scope: [String]? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserOIDCConfigResponse> {
        let input = CreateUserOIDCConfigRequest(identityUrl: identityUrl, identityKey: identityKey, clientId: clientId, authorizationEndpoint: authorizationEndpoint, responseType: responseType, responseMode: responseMode, mappingFiled: mappingFiled, scope: scope, description: description)
        return self.client.execute(action: "CreateUserOIDCConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建用户OIDC配置
    ///
    /// 创建用户OIDC配置。只能创建一个用户OIDC身份提供商，并且创建用户OIDC配置之后会自动关闭用户SAML SSO身份提供商。
    @inlinable @discardableResult
    public func createUserOIDCConfig(identityUrl: String, identityKey: String, clientId: String, authorizationEndpoint: String, responseType: String, responseMode: String, mappingFiled: String, scope: [String]? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserOIDCConfigResponse {
        let input = CreateUserOIDCConfigRequest(identityUrl: identityUrl, identityKey: identityKey, clientId: clientId, authorizationEndpoint: authorizationEndpoint, responseType: responseType, responseMode: responseMode, mappingFiled: mappingFiled, scope: scope, description: description)
        return try await self.client.execute(action: "CreateUserOIDCConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
