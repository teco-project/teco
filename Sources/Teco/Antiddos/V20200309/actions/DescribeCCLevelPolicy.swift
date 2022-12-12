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

extension Antiddos {
    /// DescribeCCLevelPolicy请求参数结构体
    public struct DescribeCCLevelPolicyRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String
        
        /// IP值
        public let ip: String
        
        /// 域名
        public let domain: String
        
        /// 协议，可取值HTTP，HTTPS
        public let `protocol`: String
        
        public init (instanceId: String, ip: String, domain: String, `protocol`: String) {
            self.instanceId = instanceId
            self.ip = ip
            self.domain = domain
            self.`protocol` = `protocol`
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ip = "Ip"
            case domain = "Domain"
            case `protocol` = "Protocol"
        }
    }
    
    /// DescribeCCLevelPolicy返回参数结构体
    public struct DescribeCCLevelPolicyResponse: TCResponseModel {
        /// CC防护等级，可取值loose表示宽松，strict表示严格，normal表示适中， emergency表示攻击紧急， sup_loose表示超级宽松，default表示默认策略（无频控配置下发），customized表示自定义策略
        public let level: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case level = "Level"
            case requestId = "RequestId"
        }
    }
    
    /// 获取CC分级策略
    @inlinable
    public func describeCCLevelPolicy(_ input: DescribeCCLevelPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCCLevelPolicyResponse > {
        self.client.execute(action: "DescribeCCLevelPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取CC分级策略
    @inlinable
    public func describeCCLevelPolicy(_ input: DescribeCCLevelPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCLevelPolicyResponse {
        try await self.client.execute(action: "DescribeCCLevelPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
