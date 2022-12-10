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

extension Teo {
    /// 域名DDoS高可用开关
    @inlinable
    public func modifyDDoSPolicyHost(_ input: ModifyDDoSPolicyHostRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDDoSPolicyHostResponse > {
        self.client.execute(action: "ModifyDDoSPolicyHost", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 域名DDoS高可用开关
    @inlinable
    public func modifyDDoSPolicyHost(_ input: ModifyDDoSPolicyHostRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSPolicyHostResponse {
        try await self.client.execute(action: "ModifyDDoSPolicyHost", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDDoSPolicyHost请求参数结构体
    public struct ModifyDDoSPolicyHostRequest: TCRequestModel {
        /// 站点Id。
        public let zoneId: String
        
        /// 子域名/应用名。
        public let host: String
        
        /// 加速开关，取值有：
        /// <li>on：开启加速；</li>
        /// <li>off：关闭加速。</li>
        public let accelerateType: String
        
        /// 策略id。
        public let policyId: Int64
        
        /// 安全开关，取值有：
        /// <li>on：开启安全；</li>
        /// <li>off：关闭安全。</li>
        public let securityType: String
        
        public init (zoneId: String, host: String, accelerateType: String, policyId: Int64, securityType: String) {
            self.zoneId = zoneId
            self.host = host
            self.accelerateType = accelerateType
            self.policyId = policyId
            self.securityType = securityType
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case host = "Host"
            case accelerateType = "AccelerateType"
            case policyId = "PolicyId"
            case securityType = "SecurityType"
        }
    }
    
    /// ModifyDDoSPolicyHost返回参数结构体
    public struct ModifyDDoSPolicyHostResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
