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

extension Lighthouse {
    /// 查询可用区列表
    ///
    /// 查询地域下可用区
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeZonesResponse > {
        self.client.execute(action: "DescribeZones", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询可用区列表
    ///
    /// 查询地域下可用区
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.client.execute(action: "DescribeZones", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeZones请求参数结构体
    public struct DescribeZonesRequest: TCRequestModel {
        /// 可用区列表排序的依据字段。取值范围：
        /// <li>ZONE：依据可用区排序。
        /// <li>INSTANCE_DISPLAY_LABEL：依据可用区展示标签排序，可用区展示标签包括：HIDDEN（隐藏）、NORMAL（普通）、SELECTED（默认选中），默认采用的升序排列为：['HIDDEN', 'NORMAL', 'SELECTED']。
        /// 默认按可用区排序。
        public let orderField: String?
        
        /// 输出可用区列表的排列顺序。取值范围：
        /// <li>ASC：升序排列。 
        /// <li>DESC：降序排列。
        /// 默认按升序排列。
        public let order: String?
        
        public init (orderField: String?, order: String?) {
            self.orderField = orderField
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case orderField = "OrderField"
            case order = "Order"
        }
    }
    
    /// DescribeZones返回参数结构体
    public struct DescribeZonesResponse: TCResponseModel {
        /// 可用区数量
        public let totalCount: Int64
        
        /// 可用区详细信息列表
        public let zoneInfoSet: [ZoneInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case zoneInfoSet = "ZoneInfoSet"
            case requestId = "RequestId"
        }
    }
}