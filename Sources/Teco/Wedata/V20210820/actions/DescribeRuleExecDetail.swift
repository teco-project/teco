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

extension Wedata {
    /// 查询规则执行结果详情
    ///
    /// 查询规则执行结果详情
    @inlinable
    public func describeRuleExecDetail(_ input: DescribeRuleExecDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRuleExecDetailResponse > {
        self.client.execute(action: "DescribeRuleExecDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询规则执行结果详情
    ///
    /// 查询规则执行结果详情
    @inlinable
    public func describeRuleExecDetail(_ input: DescribeRuleExecDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecDetailResponse {
        try await self.client.execute(action: "DescribeRuleExecDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRuleExecDetail请求参数结构体
    public struct DescribeRuleExecDetailRequest: TCRequestModel {
        /// 项目id
        public let projectId: String?
        
        /// 规则执行id
        public let ruleExecId: UInt64?
        
        public init (projectId: String?, ruleExecId: UInt64?) {
            self.projectId = projectId
            self.ruleExecId = ruleExecId
        }
        
        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ruleExecId = "RuleExecId"
        }
    }
    
    /// DescribeRuleExecDetail返回参数结构体
    public struct DescribeRuleExecDetailResponse: TCResponseModel {
        /// 规则执行结果详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleExecResultDetail
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}