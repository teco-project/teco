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

@_exported import struct Foundation.Date

extension Youmall {
    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describePersonVisitInfo(_ input: DescribePersonVisitInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePersonVisitInfoResponse > {
        self.client.execute(action: "DescribePersonVisitInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取顾客到访信息列表
    ///
    /// 获取门店指定时间范围内的所有用户到访信息记录，支持的时间范围：过去365天，含当天。
    @inlinable
    public func describePersonVisitInfo(_ input: DescribePersonVisitInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonVisitInfoResponse {
        try await self.client.execute(action: "DescribePersonVisitInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePersonVisitInfo请求参数结构体
    public struct DescribePersonVisitInfoRequest: TCRequestModel {
        /// 公司ID
        public let companyId: String
        
        /// 门店ID
        public let shopId: UInt64
        
        /// 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        public let offset: UInt64
        
        /// Limit:每页的数据项，最大100，超过100会被强制指定为100
        public let limit: UInt64
        
        /// 开始日期，格式yyyy-MM-dd，已废弃，请使用StartDateTime
        public let startDate: Date?
        
        /// 结束日期，格式yyyy-MM-dd，已废弃，请使用EndDateTime
        public let endDate: Date?
        
        /// 图片url过期时间：在当前时间+PictureExpires秒后，图片url无法继续正常访问；单位s；默认值1*24*60*60（1天）
        public let pictureExpires: UInt64?
        
        /// 开始时间，格式yyyy-MM-dd HH:mm:ss
        public let startDateTime: Date?
        
        /// 结束时间，格式yyyy-MM-dd HH:mm:ss
        public let endDateTime: Date?
        
        public init (companyId: String, shopId: UInt64, offset: UInt64, limit: UInt64, startDate: Date?, endDate: Date?, pictureExpires: UInt64?, startDateTime: Date?, endDateTime: Date?) {
            self.companyId = companyId
            self.shopId = shopId
            self.offset = offset
            self.limit = limit
            self.startDate = startDate
            self.endDate = endDate
            self.pictureExpires = pictureExpires
            self.startDateTime = startDateTime
            self.endDateTime = endDateTime
        }
        
        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case offset = "Offset"
            case limit = "Limit"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case pictureExpires = "PictureExpires"
            case startDateTime = "StartDateTime"
            case endDateTime = "EndDateTime"
        }
    }
    
    /// DescribePersonVisitInfo返回参数结构体
    public struct DescribePersonVisitInfoResponse: TCResponseModel {
        /// 公司ID
        public let companyId: String
        
        /// 门店ID
        public let shopId: UInt64
        
        /// 总数
        public let totalCount: UInt64
        
        /// 用户到访明细
        public let personVisitInfoSet: [PersonVisitInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case totalCount = "TotalCount"
            case personVisitInfoSet = "PersonVisitInfoSet"
            case requestId = "RequestId"
        }
    }
}
