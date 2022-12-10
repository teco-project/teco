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
    /// 创建SCDN域名
    ///
    /// CreateScdnDomain 用于创建 SCDN 加速域名
    @inlinable
    public func createScdnDomain(_ input: CreateScdnDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateScdnDomainResponse > {
        self.client.execute(action: "CreateScdnDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建SCDN域名
    ///
    /// CreateScdnDomain 用于创建 SCDN 加速域名
    @inlinable
    public func createScdnDomain(_ input: CreateScdnDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScdnDomainResponse {
        try await self.client.execute(action: "CreateScdnDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateScdnDomain请求参数结构体
    public struct CreateScdnDomainRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// Web 攻击防护（WAF）配置
        public let waf: ScdnWafConfig
        
        /// 自定义防护策略配置
        public let acl: ScdnAclConfig
        
        /// CC 防护配置，目前 CC 防护默认开启
        public let cc: ScdnConfig
        
        /// DDOS 防护配置，目前 DDoS 防护默认开启
        public let ddos: ScdnDdosConfig
        
        /// BOT 防护配置
        public let bot: ScdnBotConfig
        
        public init (domain: String, waf: ScdnWafConfig, acl: ScdnAclConfig, cc: ScdnConfig, ddos: ScdnDdosConfig, bot: ScdnBotConfig) {
            self.domain = domain
            self.waf = waf
            self.acl = acl
            self.cc = cc
            self.ddos = ddos
            self.bot = bot
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case waf = "Waf"
            case acl = "Acl"
            case cc = "CC"
            case ddos = "Ddos"
            case bot = "Bot"
        }
    }
    
    /// CreateScdnDomain返回参数结构体
    public struct CreateScdnDomainResponse: TCResponseModel {
        /// 创建结果，Success表示成功
        public let result: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
