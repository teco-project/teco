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

extension Cfw {
    /// DescribeSwitchLists请求参数结构体
    public struct DescribeSwitchListsRequest: TCRequestModel {
        /// 防火墙状态  0: 关闭，1：开启
        public let status: Int64?
        
        /// 资产类型 CVM/NAT/VPN/CLB/其它
        public let type: String?
        
        /// 地域 上海/重庆/广州，等等
        public let area: String?
        
        /// 搜索值  例子："{"common":"106.54.189.45"}"
        public let searchValue: String?
        
        /// 条数  默认值:10
        public let limit: UInt64?
        
        /// 偏移值 默认值: 0
        public let offset: UInt64?
        
        /// 排序，desc：降序，asc：升序
        public let order: String?
        
        /// 排序字段 PortTimes(风险端口数)
        public let by: String?
        
        public init (status: Int64? = nil, type: String? = nil, area: String? = nil, searchValue: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.status = status
            self.type = type
            self.area = area
            self.searchValue = searchValue
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case type = "Type"
            case area = "Area"
            case searchValue = "SearchValue"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeSwitchLists返回参数结构体
    public struct DescribeSwitchListsResponse: TCResponseModel {
        /// 总条数
        public let total: UInt64
        
        /// 列表数据
        public let data: [SwitchListsData]
        
        /// 区域列表
        public let areaLists: [String]
        
        /// 打开个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let onNum: UInt64?
        
        /// 关闭个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offNum: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case areaLists = "AreaLists"
            case onNum = "OnNum"
            case offNum = "OffNum"
            case requestId = "RequestId"
        }
    }
    
    /// 防火墙开关列表
    @inlinable
    public func describeSwitchLists(_ input: DescribeSwitchListsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSwitchListsResponse > {
        self.client.execute(action: "DescribeSwitchLists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 防火墙开关列表
    @inlinable
    public func describeSwitchLists(_ input: DescribeSwitchListsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSwitchListsResponse {
        try await self.client.execute(action: "DescribeSwitchLists", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
