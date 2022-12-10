//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dayu {
    /// 修改CC自定义策略开关
    ///
    /// 修改CC自定义策略开关
    @inlinable
    public func modifyCCPolicySwitch(_ input: ModifyCCPolicySwitchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCCPolicySwitchResponse > {
        self.client.execute(action: "ModifyCCPolicySwitch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改CC自定义策略开关
    ///
    /// 修改CC自定义策略开关
    @inlinable
    public func modifyCCPolicySwitch(_ input: ModifyCCPolicySwitchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCPolicySwitchResponse {
        try await self.client.execute(action: "ModifyCCPolicySwitch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyCCPolicySwitch请求参数结构体
    public struct ModifyCCPolicySwitchRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// 策略ID
        public let setId: String
        
        /// 开关状态
        public let `switch`: UInt64
        
        public init (business: String, id: String, setId: String, `switch`: UInt64) {
            self.business = business
            self.id = id
            self.setId = setId
            self.`switch` = `switch`
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case setId = "SetId"
            case `switch` = "Switch"
        }
    }
    
    /// ModifyCCPolicySwitch返回参数结构体
    public struct ModifyCCPolicySwitchResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }
}