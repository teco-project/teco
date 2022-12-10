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

extension Wedata {
    /// 创建规则模版
    @inlinable
    public func createRuleTemplate(_ input: CreateRuleTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRuleTemplateResponse > {
        self.client.execute(action: "CreateRuleTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建规则模版
    @inlinable
    public func createRuleTemplate(_ input: CreateRuleTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleTemplateResponse {
        try await self.client.execute(action: "CreateRuleTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateRuleTemplate请求参数结构体
    public struct CreateRuleTemplateRequest: TCRequestModel {
        /// 模版类型  1.系统模版   2.自定义模版
        public let type: UInt64?
        
        /// 模版名称
        public let name: String?
        
        /// 质量检测维度 1.准确性 2.唯一性 3.完整性 4.一致性 5.及时性 6.有效性
        public let qualityDim: UInt64?
        
        /// 源端数据对象类型 1.常量  2.离线表级   2.离线字段级
        public let sourceObjectType: UInt64?
        
        /// 模板描述
        public let description: String?
        
        /// 源端对应的引擎类型
        public let sourceEngineTypes: [UInt64]?
        
        /// 是否关联其它库表
        public let multiSourceFlag: Bool?
        
        /// SQL 表达式
        public let sqlExpression: String?
        
        /// 项目Id
        public let projectId: String?
        
        /// 是否添加where参数
        public let whereFlag: Bool?
        
        public init (type: UInt64?, name: String?, qualityDim: UInt64?, sourceObjectType: UInt64?, description: String?, sourceEngineTypes: [UInt64]?, multiSourceFlag: Bool?, sqlExpression: String?, projectId: String?, whereFlag: Bool?) {
            self.type = type
            self.name = name
            self.qualityDim = qualityDim
            self.sourceObjectType = sourceObjectType
            self.description = description
            self.sourceEngineTypes = sourceEngineTypes
            self.multiSourceFlag = multiSourceFlag
            self.sqlExpression = sqlExpression
            self.projectId = projectId
            self.whereFlag = whereFlag
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case name = "Name"
            case qualityDim = "QualityDim"
            case sourceObjectType = "SourceObjectType"
            case description = "Description"
            case sourceEngineTypes = "SourceEngineTypes"
            case multiSourceFlag = "MultiSourceFlag"
            case sqlExpression = "SqlExpression"
            case projectId = "ProjectId"
            case whereFlag = "WhereFlag"
        }
    }
    
    /// CreateRuleTemplate返回参数结构体
    public struct CreateRuleTemplateResponse: TCResponseModel {
        /// 模板Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
