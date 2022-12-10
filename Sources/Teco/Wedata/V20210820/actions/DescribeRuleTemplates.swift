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
    /// 查询规则模版列表
    ///
    /// 查询规则模版列表
    @inlinable
    public func describeRuleTemplates(_ input: DescribeRuleTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRuleTemplatesResponse > {
        self.client.execute(action: "DescribeRuleTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询规则模版列表
    ///
    /// 查询规则模版列表
    @inlinable
    public func describeRuleTemplates(_ input: DescribeRuleTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleTemplatesResponse {
        try await self.client.execute(action: "DescribeRuleTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRuleTemplates请求参数结构体
    public struct DescribeRuleTemplatesRequest: TCRequestModel {
        /// 模版类型 1.系统模版 2.自定义模版
        public let type: UInt64?
        
        /// 1.常量 2.离线表级 2.离线字段级
        public let sourceObjectType: UInt64?
        
        /// 项目Id
        public let projectId: String?
        
        /// 源端对应的引擎类型
        public let sourceEngineTypes: [UInt64]?
        
        public init (type: UInt64?, sourceObjectType: UInt64?, projectId: String?, sourceEngineTypes: [UInt64]?) {
            self.type = type
            self.sourceObjectType = sourceObjectType
            self.projectId = projectId
            self.sourceEngineTypes = sourceEngineTypes
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case sourceObjectType = "SourceObjectType"
            case projectId = "ProjectId"
            case sourceEngineTypes = "SourceEngineTypes"
        }
    }
    
    /// DescribeRuleTemplates返回参数结构体
    public struct DescribeRuleTemplatesResponse: TCResponseModel {
        /// 规则模版列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [RuleTemplate]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}