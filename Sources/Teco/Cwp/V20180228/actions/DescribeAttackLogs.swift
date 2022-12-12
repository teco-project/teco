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
    /// DescribeAttackLogs请求参数结构体
    public struct DescribeAttackLogsRequest: TCRequestModel {
        /// 返回数量，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)</li>
        /// <li>DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]</li>
        /// <li>VulType - String 威胁类型 - 是否必填: 否</li>
        /// <li>SrcIp - String 攻击源IP - 是否必填: 否</li>
        /// <li>DstIp - String 攻击目标IP - 是否必填: 否</li>
        /// <li>SrcPort - String 攻击源端口 - 是否必填: 否</li>
        /// <li>DstPort - String 攻击目标端口 - 是否必填: 否</li>
        public let filters: [Filter]?
        
        /// 主机安全客户端ID
        public let uuid: String?
        
        /// 云主机机器ID
        public let quuid: String?
        
        public init (limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, quuid: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.uuid = uuid
            self.quuid = quuid
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case uuid = "Uuid"
            case quuid = "Quuid"
        }
    }
    
    /// DescribeAttackLogs返回参数结构体
    public struct DescribeAttackLogsResponse: TCResponseModel {
        /// 日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attackLogs: [DefendAttackLog]?
        
        /// 总条数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case attackLogs = "AttackLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable
    public func describeAttackLogs(_ input: DescribeAttackLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAttackLogsResponse > {
        self.client.execute(action: "DescribeAttackLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable
    public func describeAttackLogs(_ input: DescribeAttackLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAttackLogsResponse {
        try await self.client.execute(action: "DescribeAttackLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
