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
    /// DescribeVulCountByDates请求参数结构体
    public struct DescribeVulCountByDatesRequest: TCRequestModel {
        /// 需要查询最近几天的数据，需要都 -1后传入
        public let lastDays: [UInt64]?
        
        /// 漏洞的分类: 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        public let vulCategory: UInt64?
        
        /// 是否为应急漏洞筛选  是: yes
        public let ifEmergency: String?
        
        public init (lastDays: [UInt64]? = nil, vulCategory: UInt64? = nil, ifEmergency: String? = nil) {
            self.lastDays = lastDays
            self.vulCategory = vulCategory
            self.ifEmergency = ifEmergency
        }
        
        enum CodingKeys: String, CodingKey {
            case lastDays = "LastDays"
            case vulCategory = "VulCategory"
            case ifEmergency = "IfEmergency"
        }
    }
    
    /// DescribeVulCountByDates返回参数结构体
    public struct DescribeVulCountByDatesResponse: TCResponseModel {
        /// 批量获得对应天数的漏洞数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulCount: [UInt64]?
        
        /// 批量获得对应天数的主机数量
        public let hostCount: [UInt64]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case vulCount = "VulCount"
            case hostCount = "HostCount"
            case requestId = "RequestId"
        }
    }
    
    /// 获取近日指定类型的漏洞数量和主机数量
    ///
    /// 漏洞管理模块，获取近日指定类型的漏洞数量和主机数量
    @inlinable
    public func describeVulCountByDates(_ input: DescribeVulCountByDatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVulCountByDatesResponse > {
        self.client.execute(action: "DescribeVulCountByDates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取近日指定类型的漏洞数量和主机数量
    ///
    /// 漏洞管理模块，获取近日指定类型的漏洞数量和主机数量
    @inlinable
    public func describeVulCountByDates(_ input: DescribeVulCountByDatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulCountByDatesResponse {
        try await self.client.execute(action: "DescribeVulCountByDates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
