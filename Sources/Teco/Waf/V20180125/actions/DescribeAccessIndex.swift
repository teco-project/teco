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

extension Waf {
    /// DescribeAccessIndex请求参数结构体
    public struct DescribeAccessIndexRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeAccessIndex返回参数结构体
    public struct DescribeAccessIndexResponse: TCResponseModel {
        /// 是否生效
        public let status: Bool
        
        /// 索引配置信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rule: AccessRuleInfo?
        
        /// 索引修改时间，初始值为索引创建时间。
        public let modifyTime: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case rule = "Rule"
            case modifyTime = "ModifyTime"
            case requestId = "RequestId"
        }
    }
    
    /// 获取访问日志索引配置信息
    ///
    /// 本接口用于获取访问日志索引配置信息
    @inlinable
    public func describeAccessIndex(_ input: DescribeAccessIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccessIndexResponse > {
        self.client.execute(action: "DescribeAccessIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取访问日志索引配置信息
    ///
    /// 本接口用于获取访问日志索引配置信息
    @inlinable
    public func describeAccessIndex(_ input: DescribeAccessIndexRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessIndexResponse {
        try await self.client.execute(action: "DescribeAccessIndex", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
