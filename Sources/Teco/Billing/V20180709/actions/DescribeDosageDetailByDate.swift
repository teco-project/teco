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

extension Billing {
    /// 按日期获取产品用量明细
    @inlinable
    public func describeDosageDetailByDate(_ input: DescribeDosageDetailByDateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDosageDetailByDateResponse > {
        self.client.execute(action: "DescribeDosageDetailByDate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 按日期获取产品用量明细
    @inlinable
    public func describeDosageDetailByDate(_ input: DescribeDosageDetailByDateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDosageDetailByDateResponse {
        try await self.client.execute(action: "DescribeDosageDetailByDate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDosageDetailByDate请求参数结构体
    public struct DescribeDosageDetailByDateRequest: TCRequestModel {
        /// 查询账单开始日期，如 2019-01-01
        public let startDate: String
        
        /// 查询账单结束日期，如 2019-01-01， 时间跨度不超过7天
        public let endDate: String
        
        /// 互动直播：
        /// 10194   互动直播-核心机房           :
        /// 10195   互动直播-边缘机房
        /// cdn业务：
        /// 10180：CDN静态加速流量(国内)
        /// 10181：CDN静态加速带宽(国内)
        /// 10182：CDN静态加速普通流量
        /// 10183：CDN静态加速普通带宽
        /// 10231：CDN静态加速流量(海外)
        /// 10232：CDN静态加速带宽(海外)
        /// 100967：弹性公网IP-按流量计费
        /// 101065：公网负载均衡-按流量计费
        /// 视频直播
        /// 10226 视频直播流量(国内)
        /// 10227 视频直播带宽(国内)
        /// 100763 视频直播流量(海外)
        /// 100762 视频直播宽带(海外)
        public let productCode: String
        
        /// 查询域名 例如 www.qq.com
        /// 非CDN业务查询时传入空字符串，返回的值为空
        public let domain: String
        
        /// 1、如果为空，则返回EIP或CLB所有实例的明细；
        /// 2、如果传入实例名，则返回该实例明细
        public let instanceID: String?
        
        public init (startDate: String, endDate: String, productCode: String, domain: String, instanceID: String?) {
            self.startDate = startDate
            self.endDate = endDate
            self.productCode = productCode
            self.domain = domain
            self.instanceID = instanceID
        }
        
        enum CodingKeys: String, CodingKey {
            case startDate = "StartDate"
            case endDate = "EndDate"
            case productCode = "ProductCode"
            case domain = "Domain"
            case instanceID = "InstanceID"
        }
    }
    
    /// DescribeDosageDetailByDate返回参数结构体
    public struct DescribeDosageDetailByDateResponse: TCResponseModel {
        /// 计量单位
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unit: String?
        
        /// 用量数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detailSets: [DetailSet]?
        
        /// 错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let retCode: Int64?
        
        /// 错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let retMsg: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case unit = "Unit"
            case detailSets = "DetailSets"
            case retCode = "RetCode"
            case retMsg = "RetMsg"
            case requestId = "RequestId"
        }
    }
}
