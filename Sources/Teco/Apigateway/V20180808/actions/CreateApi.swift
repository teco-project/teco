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
    /// CreateApi请求参数结构体
    public struct CreateApiRequest: TCRequest {
        /// API 所在的服务唯一 ID。
        public let serviceId: String

        /// API 的后端服务类型。支持HTTP、MOCK、TSF、SCF、EB、TARGET、VPC、UPSTREAM、GRPC、COS、WEBSOCKET。
        public let serviceType: String

        /// API 的后端服务超时时间，单位是秒。
        public let serviceTimeout: Int64

        /// API 的前端请求协议，支持HTTP和WEBSOCKET。
        public let `protocol`: String

        /// 请求的前端配置。
        public let requestConfig: ApiRequestConfig

        /// 用户自定义的 API 名称。
        public let apiName: String?

        /// 用户自定义的 API 接口描述。
        public let apiDesc: String?

        /// API 类型，支持NORMAL（普通API）和TSF（微服务API），默认为NORMAL。
        public let apiType: String?

        /// API 鉴权类型。支持SECRET（密钥对鉴权）、NONE（免鉴权）、OAUTH、APP（应用认证）。默认为NONE。
        public let authType: String?

        /// 是否开启跨域。
        public let enableCORS: Bool?

        /// 常量参数。
        public let constantParameters: [ConstantParameter]?

        /// 前端请求参数。
        public let requestParameters: [RequestParameter]?

        /// 当AuthType 为 OAUTH时，该字段有效， NORMAL：业务api OAUTH：授权API。
        public let apiBusinessType: String?

        /// API 的后端 Mock 返回信息。如果 ServiceType 是 Mock，则此参数必传。
        public let serviceMockReturnMessage: String?

        /// API绑定微服务列表。
        public let microServices: [MicroServiceReq]?

        /// 微服务的负载均衡配置。
        public let serviceTsfLoadBalanceConf: TsfLoadBalanceConfResp?

        /// 微服务的健康检查配置。
        public let serviceTsfHealthCheckConf: HealthCheckConf?

        /// target类型后端资源信息。（内测阶段）
        public let targetServices: [TargetServicesReq]?

        /// target类型负载均衡配置。（内测阶段）
        public let targetServicesLoadBalanceConf: Int64?

        /// target健康检查配置。（内测阶段）
        public let targetServicesHealthCheckConf: HealthCheckConf?

        /// scf 函数名称。当后端类型是SCF时生效。
        public let serviceScfFunctionName: String?

        /// scf websocket注册函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketRegisterFunctionName: String?

        /// scf websocket清理函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketCleanupFunctionName: String?

        /// scf websocket传输函数。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketTransportFunctionName: String?

        /// scf 函数命名空间。当后端类型是SCF时生效。
        public let serviceScfFunctionNamespace: String?

        /// scf函数版本。当后端类型是SCF时生效。
        public let serviceScfFunctionQualifier: String?

        /// scf websocket注册函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketRegisterFunctionNamespace: String?

        /// scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketRegisterFunctionQualifier: String?

        /// scf websocket传输函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketTransportFunctionNamespace: String?

        /// scf websocket传输函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketTransportFunctionQualifier: String?

        /// scf websocket清理函数命名空间。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketCleanupFunctionNamespace: String?

        /// scf websocket清理函数版本。当前端类型是WEBSOCKET且后端类型是SCF时生效。
        public let serviceWebsocketCleanupFunctionQualifier: String?

        /// 是否开启响应集成。当后端类型是SCF时生效。
        public let serviceScfIsIntegratedResponse: Bool?

        /// 开始调试后计费。（云市场预留字段）
        public let isDebugAfterCharge: Bool?

        /// 是否删除自定义响应配置错误码，如果不传或者传 False，不删除，当传 True 时，则删除此 API 所有自定义响应配置错误码。
        public let isDeleteResponseErrorCodes: Bool?

        /// 返回类型。
        public let responseType: String?

        /// 自定义响应配置成功响应示例。
        public let responseSuccessExample: String?

        /// 自定义响应配置失败响应示例。
        public let responseFailExample: String?

        /// API 的后端服务配置。
        public let serviceConfig: ServiceConfig?

        /// 关联的授权API 唯一 ID，当AuthType为OAUTH且ApiBusinessType为NORMAL时生效。标示业务API绑定的oauth2.0授权API唯一ID。
        public let authRelationApiId: String?

        /// API的后端服务参数。
        public let serviceParameters: [ServiceParameter]?

        /// oauth配置。当AuthType是OAUTH时生效。
        public let oauthConfig: OauthConfig?

        /// 用户自定义错误码配置。
        public let responseErrorCodes: [ResponseErrorCodeReq]?

        /// tsf serverless 命名空间ID。（内测中）
        public let targetNamespaceId: String?

        /// 用户类型。
        public let userType: String?

        /// 是否打开Base64编码，只有后端是scf时才会生效。
        public let isBase64Encoded: Bool?

        /// 事件总线ID。
        public let eventBusId: String?

        /// scf函数类型。当后端类型是SCF时生效。支持事件触发(EVENT)，http直通云函数(HTTP)。
        public let serviceScfFunctionType: String?

        /// EIAM应用类型。
        public let eiamAppType: String?

        /// EIAM应用认证类型，支持仅认证（AuthenticationOnly）、认证和鉴权（Authorization）。
        public let eiamAuthType: String?

        /// EIAM应用Token 有效时间，单位为秒，默认为7200秒。
        public let tokenTimeout: Int64?

        /// EIAM应用ID。
        public let eiamAppId: String?

        /// 资源的Owner
        public let owner: String?

        public init(serviceId: String, serviceType: String, serviceTimeout: Int64, protocol: String, requestConfig: ApiRequestConfig, apiName: String? = nil, apiDesc: String? = nil, apiType: String? = nil, authType: String? = nil, enableCORS: Bool? = nil, constantParameters: [ConstantParameter]? = nil, requestParameters: [RequestParameter]? = nil, apiBusinessType: String? = nil, serviceMockReturnMessage: String? = nil, microServices: [MicroServiceReq]? = nil, serviceTsfLoadBalanceConf: TsfLoadBalanceConfResp? = nil, serviceTsfHealthCheckConf: HealthCheckConf? = nil, targetServices: [TargetServicesReq]? = nil, targetServicesLoadBalanceConf: Int64? = nil, targetServicesHealthCheckConf: HealthCheckConf? = nil, serviceScfFunctionName: String? = nil, serviceWebsocketRegisterFunctionName: String? = nil, serviceWebsocketCleanupFunctionName: String? = nil, serviceWebsocketTransportFunctionName: String? = nil, serviceScfFunctionNamespace: String? = nil, serviceScfFunctionQualifier: String? = nil, serviceWebsocketRegisterFunctionNamespace: String? = nil, serviceWebsocketRegisterFunctionQualifier: String? = nil, serviceWebsocketTransportFunctionNamespace: String? = nil, serviceWebsocketTransportFunctionQualifier: String? = nil, serviceWebsocketCleanupFunctionNamespace: String? = nil, serviceWebsocketCleanupFunctionQualifier: String? = nil, serviceScfIsIntegratedResponse: Bool? = nil, isDebugAfterCharge: Bool? = nil, isDeleteResponseErrorCodes: Bool? = nil, responseType: String? = nil, responseSuccessExample: String? = nil, responseFailExample: String? = nil, serviceConfig: ServiceConfig? = nil, authRelationApiId: String? = nil, serviceParameters: [ServiceParameter]? = nil, oauthConfig: OauthConfig? = nil, responseErrorCodes: [ResponseErrorCodeReq]? = nil, targetNamespaceId: String? = nil, userType: String? = nil, isBase64Encoded: Bool? = nil, eventBusId: String? = nil, serviceScfFunctionType: String? = nil, eiamAppType: String? = nil, eiamAuthType: String? = nil, tokenTimeout: Int64? = nil, eiamAppId: String? = nil, owner: String? = nil) {
            self.serviceId = serviceId
            self.serviceType = serviceType
            self.serviceTimeout = serviceTimeout
            self.protocol = `protocol`
            self.requestConfig = requestConfig
            self.apiName = apiName
            self.apiDesc = apiDesc
            self.apiType = apiType
            self.authType = authType
            self.enableCORS = enableCORS
            self.constantParameters = constantParameters
            self.requestParameters = requestParameters
            self.apiBusinessType = apiBusinessType
            self.serviceMockReturnMessage = serviceMockReturnMessage
            self.microServices = microServices
            self.serviceTsfLoadBalanceConf = serviceTsfLoadBalanceConf
            self.serviceTsfHealthCheckConf = serviceTsfHealthCheckConf
            self.targetServices = targetServices
            self.targetServicesLoadBalanceConf = targetServicesLoadBalanceConf
            self.targetServicesHealthCheckConf = targetServicesHealthCheckConf
            self.serviceScfFunctionName = serviceScfFunctionName
            self.serviceWebsocketRegisterFunctionName = serviceWebsocketRegisterFunctionName
            self.serviceWebsocketCleanupFunctionName = serviceWebsocketCleanupFunctionName
            self.serviceWebsocketTransportFunctionName = serviceWebsocketTransportFunctionName
            self.serviceScfFunctionNamespace = serviceScfFunctionNamespace
            self.serviceScfFunctionQualifier = serviceScfFunctionQualifier
            self.serviceWebsocketRegisterFunctionNamespace = serviceWebsocketRegisterFunctionNamespace
            self.serviceWebsocketRegisterFunctionQualifier = serviceWebsocketRegisterFunctionQualifier
            self.serviceWebsocketTransportFunctionNamespace = serviceWebsocketTransportFunctionNamespace
            self.serviceWebsocketTransportFunctionQualifier = serviceWebsocketTransportFunctionQualifier
            self.serviceWebsocketCleanupFunctionNamespace = serviceWebsocketCleanupFunctionNamespace
            self.serviceWebsocketCleanupFunctionQualifier = serviceWebsocketCleanupFunctionQualifier
            self.serviceScfIsIntegratedResponse = serviceScfIsIntegratedResponse
            self.isDebugAfterCharge = isDebugAfterCharge
            self.isDeleteResponseErrorCodes = isDeleteResponseErrorCodes
            self.responseType = responseType
            self.responseSuccessExample = responseSuccessExample
            self.responseFailExample = responseFailExample
            self.serviceConfig = serviceConfig
            self.authRelationApiId = authRelationApiId
            self.serviceParameters = serviceParameters
            self.oauthConfig = oauthConfig
            self.responseErrorCodes = responseErrorCodes
            self.targetNamespaceId = targetNamespaceId
            self.userType = userType
            self.isBase64Encoded = isBase64Encoded
            self.eventBusId = eventBusId
            self.serviceScfFunctionType = serviceScfFunctionType
            self.eiamAppType = eiamAppType
            self.eiamAuthType = eiamAuthType
            self.tokenTimeout = tokenTimeout
            self.eiamAppId = eiamAppId
            self.owner = owner
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case serviceType = "ServiceType"
            case serviceTimeout = "ServiceTimeout"
            case `protocol` = "Protocol"
            case requestConfig = "RequestConfig"
            case apiName = "ApiName"
            case apiDesc = "ApiDesc"
            case apiType = "ApiType"
            case authType = "AuthType"
            case enableCORS = "EnableCORS"
            case constantParameters = "ConstantParameters"
            case requestParameters = "RequestParameters"
            case apiBusinessType = "ApiBusinessType"
            case serviceMockReturnMessage = "ServiceMockReturnMessage"
            case microServices = "MicroServices"
            case serviceTsfLoadBalanceConf = "ServiceTsfLoadBalanceConf"
            case serviceTsfHealthCheckConf = "ServiceTsfHealthCheckConf"
            case targetServices = "TargetServices"
            case targetServicesLoadBalanceConf = "TargetServicesLoadBalanceConf"
            case targetServicesHealthCheckConf = "TargetServicesHealthCheckConf"
            case serviceScfFunctionName = "ServiceScfFunctionName"
            case serviceWebsocketRegisterFunctionName = "ServiceWebsocketRegisterFunctionName"
            case serviceWebsocketCleanupFunctionName = "ServiceWebsocketCleanupFunctionName"
            case serviceWebsocketTransportFunctionName = "ServiceWebsocketTransportFunctionName"
            case serviceScfFunctionNamespace = "ServiceScfFunctionNamespace"
            case serviceScfFunctionQualifier = "ServiceScfFunctionQualifier"
            case serviceWebsocketRegisterFunctionNamespace = "ServiceWebsocketRegisterFunctionNamespace"
            case serviceWebsocketRegisterFunctionQualifier = "ServiceWebsocketRegisterFunctionQualifier"
            case serviceWebsocketTransportFunctionNamespace = "ServiceWebsocketTransportFunctionNamespace"
            case serviceWebsocketTransportFunctionQualifier = "ServiceWebsocketTransportFunctionQualifier"
            case serviceWebsocketCleanupFunctionNamespace = "ServiceWebsocketCleanupFunctionNamespace"
            case serviceWebsocketCleanupFunctionQualifier = "ServiceWebsocketCleanupFunctionQualifier"
            case serviceScfIsIntegratedResponse = "ServiceScfIsIntegratedResponse"
            case isDebugAfterCharge = "IsDebugAfterCharge"
            case isDeleteResponseErrorCodes = "IsDeleteResponseErrorCodes"
            case responseType = "ResponseType"
            case responseSuccessExample = "ResponseSuccessExample"
            case responseFailExample = "ResponseFailExample"
            case serviceConfig = "ServiceConfig"
            case authRelationApiId = "AuthRelationApiId"
            case serviceParameters = "ServiceParameters"
            case oauthConfig = "OauthConfig"
            case responseErrorCodes = "ResponseErrorCodes"
            case targetNamespaceId = "TargetNamespaceId"
            case userType = "UserType"
            case isBase64Encoded = "IsBase64Encoded"
            case eventBusId = "EventBusId"
            case serviceScfFunctionType = "ServiceScfFunctionType"
            case eiamAppType = "EIAMAppType"
            case eiamAuthType = "EIAMAuthType"
            case tokenTimeout = "TokenTimeout"
            case eiamAppId = "EIAMAppId"
            case owner = "Owner"
        }
    }

    /// CreateApi返回参数结构体
    public struct CreateApiResponse: TCResponse {
        /// api信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: CreateApiResultInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建API
    ///
    /// 本接口（CreateApi）用于创建 API 接口，创建 API 前，用户需要先创建服务，每个 API 都有自己归属的服务。
    @inlinable
    public func createApi(_ input: CreateApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiResponse> {
        self.client.execute(action: "CreateApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建API
    ///
    /// 本接口（CreateApi）用于创建 API 接口，创建 API 前，用户需要先创建服务，每个 API 都有自己归属的服务。
    @inlinable
    public func createApi(_ input: CreateApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiResponse {
        try await self.client.execute(action: "CreateApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建API
    ///
    /// 本接口（CreateApi）用于创建 API 接口，创建 API 前，用户需要先创建服务，每个 API 都有自己归属的服务。
    @inlinable
    public func createApi(serviceId: String, serviceType: String, serviceTimeout: Int64, protocol: String, requestConfig: ApiRequestConfig, apiName: String? = nil, apiDesc: String? = nil, apiType: String? = nil, authType: String? = nil, enableCORS: Bool? = nil, constantParameters: [ConstantParameter]? = nil, requestParameters: [RequestParameter]? = nil, apiBusinessType: String? = nil, serviceMockReturnMessage: String? = nil, microServices: [MicroServiceReq]? = nil, serviceTsfLoadBalanceConf: TsfLoadBalanceConfResp? = nil, serviceTsfHealthCheckConf: HealthCheckConf? = nil, targetServices: [TargetServicesReq]? = nil, targetServicesLoadBalanceConf: Int64? = nil, targetServicesHealthCheckConf: HealthCheckConf? = nil, serviceScfFunctionName: String? = nil, serviceWebsocketRegisterFunctionName: String? = nil, serviceWebsocketCleanupFunctionName: String? = nil, serviceWebsocketTransportFunctionName: String? = nil, serviceScfFunctionNamespace: String? = nil, serviceScfFunctionQualifier: String? = nil, serviceWebsocketRegisterFunctionNamespace: String? = nil, serviceWebsocketRegisterFunctionQualifier: String? = nil, serviceWebsocketTransportFunctionNamespace: String? = nil, serviceWebsocketTransportFunctionQualifier: String? = nil, serviceWebsocketCleanupFunctionNamespace: String? = nil, serviceWebsocketCleanupFunctionQualifier: String? = nil, serviceScfIsIntegratedResponse: Bool? = nil, isDebugAfterCharge: Bool? = nil, isDeleteResponseErrorCodes: Bool? = nil, responseType: String? = nil, responseSuccessExample: String? = nil, responseFailExample: String? = nil, serviceConfig: ServiceConfig? = nil, authRelationApiId: String? = nil, serviceParameters: [ServiceParameter]? = nil, oauthConfig: OauthConfig? = nil, responseErrorCodes: [ResponseErrorCodeReq]? = nil, targetNamespaceId: String? = nil, userType: String? = nil, isBase64Encoded: Bool? = nil, eventBusId: String? = nil, serviceScfFunctionType: String? = nil, eiamAppType: String? = nil, eiamAuthType: String? = nil, tokenTimeout: Int64? = nil, eiamAppId: String? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApiResponse> {
        self.createApi(.init(serviceId: serviceId, serviceType: serviceType, serviceTimeout: serviceTimeout, protocol: `protocol`, requestConfig: requestConfig, apiName: apiName, apiDesc: apiDesc, apiType: apiType, authType: authType, enableCORS: enableCORS, constantParameters: constantParameters, requestParameters: requestParameters, apiBusinessType: apiBusinessType, serviceMockReturnMessage: serviceMockReturnMessage, microServices: microServices, serviceTsfLoadBalanceConf: serviceTsfLoadBalanceConf, serviceTsfHealthCheckConf: serviceTsfHealthCheckConf, targetServices: targetServices, targetServicesLoadBalanceConf: targetServicesLoadBalanceConf, targetServicesHealthCheckConf: targetServicesHealthCheckConf, serviceScfFunctionName: serviceScfFunctionName, serviceWebsocketRegisterFunctionName: serviceWebsocketRegisterFunctionName, serviceWebsocketCleanupFunctionName: serviceWebsocketCleanupFunctionName, serviceWebsocketTransportFunctionName: serviceWebsocketTransportFunctionName, serviceScfFunctionNamespace: serviceScfFunctionNamespace, serviceScfFunctionQualifier: serviceScfFunctionQualifier, serviceWebsocketRegisterFunctionNamespace: serviceWebsocketRegisterFunctionNamespace, serviceWebsocketRegisterFunctionQualifier: serviceWebsocketRegisterFunctionQualifier, serviceWebsocketTransportFunctionNamespace: serviceWebsocketTransportFunctionNamespace, serviceWebsocketTransportFunctionQualifier: serviceWebsocketTransportFunctionQualifier, serviceWebsocketCleanupFunctionNamespace: serviceWebsocketCleanupFunctionNamespace, serviceWebsocketCleanupFunctionQualifier: serviceWebsocketCleanupFunctionQualifier, serviceScfIsIntegratedResponse: serviceScfIsIntegratedResponse, isDebugAfterCharge: isDebugAfterCharge, isDeleteResponseErrorCodes: isDeleteResponseErrorCodes, responseType: responseType, responseSuccessExample: responseSuccessExample, responseFailExample: responseFailExample, serviceConfig: serviceConfig, authRelationApiId: authRelationApiId, serviceParameters: serviceParameters, oauthConfig: oauthConfig, responseErrorCodes: responseErrorCodes, targetNamespaceId: targetNamespaceId, userType: userType, isBase64Encoded: isBase64Encoded, eventBusId: eventBusId, serviceScfFunctionType: serviceScfFunctionType, eiamAppType: eiamAppType, eiamAuthType: eiamAuthType, tokenTimeout: tokenTimeout, eiamAppId: eiamAppId, owner: owner), region: region, logger: logger, on: eventLoop)
    }

    /// 创建API
    ///
    /// 本接口（CreateApi）用于创建 API 接口，创建 API 前，用户需要先创建服务，每个 API 都有自己归属的服务。
    @inlinable
    public func createApi(serviceId: String, serviceType: String, serviceTimeout: Int64, protocol: String, requestConfig: ApiRequestConfig, apiName: String? = nil, apiDesc: String? = nil, apiType: String? = nil, authType: String? = nil, enableCORS: Bool? = nil, constantParameters: [ConstantParameter]? = nil, requestParameters: [RequestParameter]? = nil, apiBusinessType: String? = nil, serviceMockReturnMessage: String? = nil, microServices: [MicroServiceReq]? = nil, serviceTsfLoadBalanceConf: TsfLoadBalanceConfResp? = nil, serviceTsfHealthCheckConf: HealthCheckConf? = nil, targetServices: [TargetServicesReq]? = nil, targetServicesLoadBalanceConf: Int64? = nil, targetServicesHealthCheckConf: HealthCheckConf? = nil, serviceScfFunctionName: String? = nil, serviceWebsocketRegisterFunctionName: String? = nil, serviceWebsocketCleanupFunctionName: String? = nil, serviceWebsocketTransportFunctionName: String? = nil, serviceScfFunctionNamespace: String? = nil, serviceScfFunctionQualifier: String? = nil, serviceWebsocketRegisterFunctionNamespace: String? = nil, serviceWebsocketRegisterFunctionQualifier: String? = nil, serviceWebsocketTransportFunctionNamespace: String? = nil, serviceWebsocketTransportFunctionQualifier: String? = nil, serviceWebsocketCleanupFunctionNamespace: String? = nil, serviceWebsocketCleanupFunctionQualifier: String? = nil, serviceScfIsIntegratedResponse: Bool? = nil, isDebugAfterCharge: Bool? = nil, isDeleteResponseErrorCodes: Bool? = nil, responseType: String? = nil, responseSuccessExample: String? = nil, responseFailExample: String? = nil, serviceConfig: ServiceConfig? = nil, authRelationApiId: String? = nil, serviceParameters: [ServiceParameter]? = nil, oauthConfig: OauthConfig? = nil, responseErrorCodes: [ResponseErrorCodeReq]? = nil, targetNamespaceId: String? = nil, userType: String? = nil, isBase64Encoded: Bool? = nil, eventBusId: String? = nil, serviceScfFunctionType: String? = nil, eiamAppType: String? = nil, eiamAuthType: String? = nil, tokenTimeout: Int64? = nil, eiamAppId: String? = nil, owner: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiResponse {
        try await self.createApi(.init(serviceId: serviceId, serviceType: serviceType, serviceTimeout: serviceTimeout, protocol: `protocol`, requestConfig: requestConfig, apiName: apiName, apiDesc: apiDesc, apiType: apiType, authType: authType, enableCORS: enableCORS, constantParameters: constantParameters, requestParameters: requestParameters, apiBusinessType: apiBusinessType, serviceMockReturnMessage: serviceMockReturnMessage, microServices: microServices, serviceTsfLoadBalanceConf: serviceTsfLoadBalanceConf, serviceTsfHealthCheckConf: serviceTsfHealthCheckConf, targetServices: targetServices, targetServicesLoadBalanceConf: targetServicesLoadBalanceConf, targetServicesHealthCheckConf: targetServicesHealthCheckConf, serviceScfFunctionName: serviceScfFunctionName, serviceWebsocketRegisterFunctionName: serviceWebsocketRegisterFunctionName, serviceWebsocketCleanupFunctionName: serviceWebsocketCleanupFunctionName, serviceWebsocketTransportFunctionName: serviceWebsocketTransportFunctionName, serviceScfFunctionNamespace: serviceScfFunctionNamespace, serviceScfFunctionQualifier: serviceScfFunctionQualifier, serviceWebsocketRegisterFunctionNamespace: serviceWebsocketRegisterFunctionNamespace, serviceWebsocketRegisterFunctionQualifier: serviceWebsocketRegisterFunctionQualifier, serviceWebsocketTransportFunctionNamespace: serviceWebsocketTransportFunctionNamespace, serviceWebsocketTransportFunctionQualifier: serviceWebsocketTransportFunctionQualifier, serviceWebsocketCleanupFunctionNamespace: serviceWebsocketCleanupFunctionNamespace, serviceWebsocketCleanupFunctionQualifier: serviceWebsocketCleanupFunctionQualifier, serviceScfIsIntegratedResponse: serviceScfIsIntegratedResponse, isDebugAfterCharge: isDebugAfterCharge, isDeleteResponseErrorCodes: isDeleteResponseErrorCodes, responseType: responseType, responseSuccessExample: responseSuccessExample, responseFailExample: responseFailExample, serviceConfig: serviceConfig, authRelationApiId: authRelationApiId, serviceParameters: serviceParameters, oauthConfig: oauthConfig, responseErrorCodes: responseErrorCodes, targetNamespaceId: targetNamespaceId, userType: userType, isBase64Encoded: isBase64Encoded, eventBusId: eventBusId, serviceScfFunctionType: serviceScfFunctionType, eiamAppType: eiamAppType, eiamAuthType: eiamAuthType, tokenTimeout: tokenTimeout, eiamAppId: eiamAppId, owner: owner), region: region, logger: logger, on: eventLoop)
    }
}
