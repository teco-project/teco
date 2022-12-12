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

extension Essbasic {
    /// SyncProxyOrganization请求参数结构体
    public struct SyncProxyOrganizationRequest: TCRequestModel {
        /// 应用信息
        /// 此接口Agent.AppId、Agent.ProxyOrganizationOpenId必填
        public let agent: Agent
        
        /// 渠道侧合作企业名称，最大长度64个字符
        public let proxyOrganizationName: String
        
        /// 营业执照正面照(PNG或JPG) base64格式, 大小不超过5M
        public let businessLicense: String?
        
        /// 渠道侧合作企业统一社会信用代码，最大长度200个字符
        public let uniformSocialCreditCode: String?
        
        /// 渠道侧合作企业法人/负责人姓名
        public let proxyLegalName: String?
        
        /// 操作者的信息
        public let `operator`: UserInfo?
        
        public init (agent: Agent, proxyOrganizationName: String, businessLicense: String? = nil, uniformSocialCreditCode: String? = nil, proxyLegalName: String? = nil, `operator`: UserInfo? = nil) {
            self.agent = agent
            self.proxyOrganizationName = proxyOrganizationName
            self.businessLicense = businessLicense
            self.uniformSocialCreditCode = uniformSocialCreditCode
            self.proxyLegalName = proxyLegalName
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case proxyOrganizationName = "ProxyOrganizationName"
            case businessLicense = "BusinessLicense"
            case uniformSocialCreditCode = "UniformSocialCreditCode"
            case proxyLegalName = "ProxyLegalName"
            case `operator` = "Operator"
        }
    }
    
    /// SyncProxyOrganization返回参数结构体
    public struct SyncProxyOrganizationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 同步企业信息
    ///
    /// 此接口（SyncProxyOrganization）用于同步渠道子客企业信息，主要是子客企业的营业执照，便于子客企业开通过程中不用手动上传。若有需要调用此接口，需要在创建控制链接CreateConsoleLoginUrl之后即刻进行调用。
    @inlinable
    public func syncProxyOrganization(_ input: SyncProxyOrganizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SyncProxyOrganizationResponse > {
        self.client.execute(action: "SyncProxyOrganization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 同步企业信息
    ///
    /// 此接口（SyncProxyOrganization）用于同步渠道子客企业信息，主要是子客企业的营业执照，便于子客企业开通过程中不用手动上传。若有需要调用此接口，需要在创建控制链接CreateConsoleLoginUrl之后即刻进行调用。
    @inlinable
    public func syncProxyOrganization(_ input: SyncProxyOrganizationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncProxyOrganizationResponse {
        try await self.client.execute(action: "SyncProxyOrganization", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
