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

extension Cfw {
    /// 中止安全组规则下发
    ///
    /// 中止安全组规则下发
    @inlinable
    public func stopSecurityGroupRuleDispatch(_ input: StopSecurityGroupRuleDispatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopSecurityGroupRuleDispatchResponse > {
        self.client.execute(action: "StopSecurityGroupRuleDispatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 中止安全组规则下发
    ///
    /// 中止安全组规则下发
    @inlinable
    public func stopSecurityGroupRuleDispatch(_ input: StopSecurityGroupRuleDispatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopSecurityGroupRuleDispatchResponse {
        try await self.client.execute(action: "StopSecurityGroupRuleDispatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopSecurityGroupRuleDispatch请求参数结构体
    public struct StopSecurityGroupRuleDispatchRequest: TCRequestModel {
        /// 值为1，中止全部
        public let stopType: Int64?
        
        public init (stopType: Int64?) {
            self.stopType = stopType
        }
        
        enum CodingKeys: String, CodingKey {
            case stopType = "StopType"
        }
    }
    
    /// StopSecurityGroupRuleDispatch返回参数结构体
    public struct StopSecurityGroupRuleDispatchResponse: TCResponseModel {
        /// true代表成功，false代表错误
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}