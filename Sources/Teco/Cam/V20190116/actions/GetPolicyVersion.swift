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

extension Cam {
    /// 查询策略版本详情
    ///
    /// 该接口（GetPolicyVersion）用于查询策略版本详情
    @inlinable
    public func getPolicyVersion(_ input: GetPolicyVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetPolicyVersionResponse > {
        self.client.execute(action: "GetPolicyVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询策略版本详情
    ///
    /// 该接口（GetPolicyVersion）用于查询策略版本详情
    @inlinable
    public func getPolicyVersion(_ input: GetPolicyVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPolicyVersionResponse {
        try await self.client.execute(action: "GetPolicyVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetPolicyVersion请求参数结构体
    public struct GetPolicyVersionRequest: TCRequestModel {
        /// 策略ID
        public let policyId: UInt64
        
        /// 策略版本号，可由ListPolicyVersions获取
        public let versionId: UInt64
        
        public init (policyId: UInt64, versionId: UInt64) {
            self.policyId = policyId
            self.versionId = versionId
        }
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case versionId = "VersionId"
        }
    }
    
    /// GetPolicyVersion返回参数结构体
    public struct GetPolicyVersionResponse: TCResponseModel {
        /// 策略版本详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyVersion: PolicyVersionDetail
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case policyVersion = "PolicyVersion"
            case requestId = "RequestId"
        }
    }
}
