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

extension Cwp {
    /// 查询基线检测项信息
    ///
    /// 根据基线id查询下属检测项信息
    @inlinable
    public func describeBaselineRule(_ input: DescribeBaselineRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBaselineRuleResponse > {
        self.client.execute(action: "DescribeBaselineRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询基线检测项信息
    ///
    /// 根据基线id查询下属检测项信息
    @inlinable
    public func describeBaselineRule(_ input: DescribeBaselineRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineRuleResponse {
        try await self.client.execute(action: "DescribeBaselineRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBaselineRule请求参数结构体
    public struct DescribeBaselineRuleRequest: TCRequestModel {
        /// 基线id
        public let baselineId: UInt64
        
        /// 分页参数 最大100条
        public let limit: UInt64
        
        /// 分页参数
        public let offset: UInt64
        
        /// 危害等级
        public let level: [UInt64]?
        
        /// 状态
        public let status: UInt64?
        
        /// 主机quuid
        public let quuid: String?
        
        /// 主机uuid
        public let uuid: String?
        
        public init (baselineId: UInt64, limit: UInt64, offset: UInt64, level: [UInt64]?, status: UInt64?, quuid: String?, uuid: String?) {
            self.baselineId = baselineId
            self.limit = limit
            self.offset = offset
            self.level = level
            self.status = status
            self.quuid = quuid
            self.uuid = uuid
        }
        
        enum CodingKeys: String, CodingKey {
            case baselineId = "BaselineId"
            case limit = "Limit"
            case offset = "Offset"
            case level = "Level"
            case status = "Status"
            case quuid = "Quuid"
            case uuid = "Uuid"
        }
    }
    
    /// DescribeBaselineRule返回参数结构体
    public struct DescribeBaselineRuleResponse: TCResponseModel {
        /// 分页查询记录总数
        public let totalCount: UInt64
        
        /// 基线检测项列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baselineRuleList: [BaselineRuleInfo]?
        
        /// 是否显示说明列：true-是，false-否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let showRuleRemark: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case baselineRuleList = "BaselineRuleList"
            case showRuleRemark = "ShowRuleRemark"
            case requestId = "RequestId"
        }
    }
}
