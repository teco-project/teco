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

extension Tcr {
    /// 删除版本保留规则
    ///
    /// 删除版本保留规则
    @inlinable
    public func deleteTagRetentionRule(_ input: DeleteTagRetentionRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTagRetentionRuleResponse > {
        self.client.execute(action: "DeleteTagRetentionRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除版本保留规则
    ///
    /// 删除版本保留规则
    @inlinable
    public func deleteTagRetentionRule(_ input: DeleteTagRetentionRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTagRetentionRuleResponse {
        try await self.client.execute(action: "DeleteTagRetentionRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteTagRetentionRule请求参数结构体
    public struct DeleteTagRetentionRuleRequest: TCRequestModel {
        /// 主实例iD
        public let registryId: String
        
        /// 版本保留规则的Id
        public let retentionId: Int64
        
        public init (registryId: String, retentionId: Int64) {
            self.registryId = registryId
            self.retentionId = retentionId
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case retentionId = "RetentionId"
        }
    }
    
    /// DeleteTagRetentionRule返回参数结构体
    public struct DeleteTagRetentionRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}