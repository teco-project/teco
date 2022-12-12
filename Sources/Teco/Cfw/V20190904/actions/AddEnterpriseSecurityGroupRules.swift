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

extension Cfw {
    /// AddEnterpriseSecurityGroupRules请求参数结构体
    public struct AddEnterpriseSecurityGroupRulesRequest: TCRequestModel {
        /// 创建规则数据
        public let data: [SecurityGroupRule]
        
        /// 添加类型，0：添加到最后，1：添加到最前；2：中间插入；默认0添加到最后
        public let type: UInt64?
        
        /// 保证请求幂等性。从您的客户端生成一个参数值，确保不同请求间该参数值唯一。ClientToken只支持ASCII字符，且不能超过64个字符。
        public let clientToken: String?
        
        /// 是否延迟下发，1则延迟下发，否则立即下发
        public let isDelay: UInt64?
        
        public init (data: [SecurityGroupRule], type: UInt64? = nil, clientToken: String? = nil, isDelay: UInt64? = nil) {
            self.data = data
            self.type = type
            self.clientToken = clientToken
            self.isDelay = isDelay
        }
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case type = "Type"
            case clientToken = "ClientToken"
            case isDelay = "IsDelay"
        }
    }
    
    /// AddEnterpriseSecurityGroupRules返回参数结构体
    public struct AddEnterpriseSecurityGroupRulesResponse: TCResponseModel {
        /// 状态值，0：添加成功，非0：添加失败
        public let status: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
    
    /// 创建新企业安全组规则
    @inlinable
    public func addEnterpriseSecurityGroupRules(_ input: AddEnterpriseSecurityGroupRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddEnterpriseSecurityGroupRulesResponse > {
        self.client.execute(action: "AddEnterpriseSecurityGroupRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建新企业安全组规则
    @inlinable
    public func addEnterpriseSecurityGroupRules(_ input: AddEnterpriseSecurityGroupRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEnterpriseSecurityGroupRulesResponse {
        try await self.client.execute(action: "AddEnterpriseSecurityGroupRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
