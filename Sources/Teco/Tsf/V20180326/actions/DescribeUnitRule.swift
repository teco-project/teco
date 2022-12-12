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

extension Tsf {
    /// DescribeUnitRule请求参数结构体
    public struct DescribeUnitRuleRequest: TCRequestModel {
        /// 单元化规则ID
        public let id: String
        
        public init (id: String) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }
    
    /// DescribeUnitRule返回参数结构体
    public struct DescribeUnitRuleResponse: TCResponseModel {
        /// 单元化规则对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UnitRule?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询单元化规则详情
    @inlinable
    public func describeUnitRule(_ input: DescribeUnitRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUnitRuleResponse > {
        self.client.execute(action: "DescribeUnitRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询单元化规则详情
    @inlinable
    public func describeUnitRule(_ input: DescribeUnitRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnitRuleResponse {
        try await self.client.execute(action: "DescribeUnitRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
